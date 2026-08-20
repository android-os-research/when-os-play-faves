.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;,
        Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field public static final SWT_INIT_STATE_FAIL:I = 0x3

.field public static final SWT_INIT_STATE_NO_RUN:I = 0x0

.field public static final SWT_INIT_STATE_RUNNING:I = 0x1

.field public static final SWT_INIT_STATE_SUCCESS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "OverlayManager"

.field public static final TAG_SWT:Ljava/lang/String; = "SWT_OverlayManager"

.field public static sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

.field public static sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static sGlobalColorThemeSeq:I


# instance fields
.field public final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field public mIsSuccessLoadMetadata:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public mResetSettings:Z

.field public mResultInitColorTheme:Ljava/lang/String;

.field public final mService:Landroid/os/IBinder;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public mStateInitColorTheme:I

.field public final mThemingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public static synthetic $r8$lambda$JCo3rZCvXXDWojp1aEp8JiODyhk(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->lambda$new$0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xv1bUWs7FHmMOTneiKFSCkY5YGo(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZLandroid/util/ArraySet;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/om/OverlayManagerService;->lambda$updateTargetPackagesLocked$1(Ljava/util/List;IZZLandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQ7xPbOUTutlZA6vZ6xsdP0QbsE(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->lambda$broadcastActionOverlayChanged$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qGxn3uC1_yMrvdSVWuL7X_V_Sqs(Landroid/util/SparseArray;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->lambda$groupTargetsByUserId$2(Landroid/util/SparseArray;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutorService(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSuccessLoadMetadata(Lcom/android/server/om/OverlayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerService;->mIsSuccessLoadMetadata:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/om/OverlayManagerService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetColorThemeState(Lcom/android/server/om/OverlayManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getColorThemeState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mincreaseColorThemeSeq(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->increaseColorThemeSeq()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistSettingsLocked(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadResetSettingsValue(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreSettings(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateActivityManagerforSamsungOverlay(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/om/OverlayManagerService;->updateActivityManagerforSamsungOverlay(Ljava/util/List;IZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageManagerLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 326
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/om/OverlayManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 327
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    const-string v1, "android"

    const-string v2, "SemWT_android"

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/om/OverlayManagerService;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    const/4 v0, 0x0

    .line 328
    sput v0, Lcom/android/server/om/OverlayManagerService;->sGlobalColorThemeSeq:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ", "

    const-string v4, "OverlayManager"

    const-string v5, "SWT_OverlayManager"

    .line 332
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 296
    iput-boolean v6, v1, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    const-string v7, "com.android.theme.color.cinnamon"

    const-string v8, "com.android.theme.color.black"

    const-string v9, "com.android.theme.color.green"

    const-string v10, "com.android.theme.color.ocean"

    const-string v11, "com.android.theme.color.space"

    const-string v12, "com.android.theme.color.orchid"

    const-string v13, "com.android.theme.color.purple"

    const-string v14, "com.android.theme.font.notoserifsource"

    const-string v15, "com.android.theme.icon.square"

    const-string v16, "com.android.theme.icon.teardrop"

    const-string v17, "com.android.theme.icon.squircle"

    const-string v18, "com.android.theme.icon.roundedrect"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mThemingList:Ljava/util/ArrayList;

    .line 319
    iput-boolean v6, v1, Lcom/android/server/om/OverlayManagerService;->mIsSuccessLoadMetadata:Z

    .line 324
    iput v6, v1, Lcom/android/server/om/OverlayManagerService;->mStateInitColorTheme:I

    const-string v0, ""

    .line 325
    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mResultInitColorTheme:Ljava/lang/String;

    .line 779
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    const-wide/32 v7, 0x4000000

    :try_start_50
    const-string v0, "OMS#OverlayManagerService"

    .line 334
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    .line 336
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "overlays.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v10, "overlays"

    invoke-direct {v0, v9, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 337
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v0, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 338
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 339
    new-instance v13, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v9

    invoke-direct {v13, v9, v0}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V

    .line 340
    new-instance v9, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v9}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 343
    new-instance v10, Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 344
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v15

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v16

    new-instance v14, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;

    const/4 v12, 0x0

    invoke-direct {v14, v1, v12}, Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$SamsungOverlayChangeListener-IA;)V
    :try_end_98
    .catchall {:try_start_50 .. :try_end_98} :catchall_347

    move-object v11, v10

    move-object v7, v12

    move-object v12, v0

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v17, v8

    :try_start_9f
    invoke-direct/range {v11 .. v17}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayChangeListener;)V

    iput-object v10, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 351
    new-instance v8, Lcom/android/server/om/OverlayActorEnforcer;

    invoke-direct {v8, v0}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/PackageManagerHelper;)V

    iput-object v8, v1, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 353
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 356
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    .line 357
    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    .line 358
    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    .line 359
    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "package"

    .line 360
    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v11, v1, v7}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver-IA;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    .line 362
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v15

    .line 361
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.USER_ADDED"

    .line 365
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_REMOVED"

    .line 366
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v8, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v8, v1, v7}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver-IA;)V

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v8

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 373
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 374
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;

    invoke-direct {v11, v1, v7}, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver-IA;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 378
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string/jumbo v7, "samsung-overlay-update"

    .line 377
    invoke-static {v0, v7, v6}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x104002a

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 394
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
    :try_end_150
    .catchall {:try_start_9f .. :try_end_150} :catchall_342

    const/4 v7, 0x1

    .line 396
    :try_start_151
    invoke-virtual {v0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->initTemplateAndMetadata(Landroid/content/Context;)V

    .line 397
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->initInstalledPackageMetadata(Landroid/content/Context;)V

    .line 398
    iput-boolean v7, v1, Lcom/android/server/om/OverlayManagerService;->mIsSuccessLoadMetadata:Z
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_15b} :catch_15c
    .catchall {:try_start_151 .. :try_end_15b} :catchall_342

    goto :goto_173

    :catch_15c
    move-exception v0

    .line 400
    :try_start_15d
    iput-boolean v6, v1, Lcom/android/server/om/OverlayManagerService;->mIsSuccessLoadMetadata:Z

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed loading template and metadata, wallpaper theming will not working, ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 406
    invoke-virtual {v1, v6, v7}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(IZ)V

    const-string/jumbo v0, "overlay"

    .line 408
    iget-object v8, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v0, v8}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 409
    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v0
    :try_end_18e
    .catchall {:try_start_15d .. :try_end_18e} :catchall_342

    if-eqz v0, :cond_1c3

    .line 414
    :try_start_190
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 415
    array-length v8, v0

    move v9, v6

    :goto_198
    if-ge v9, v8, :cond_1c3

    aget v10, v0, v9

    .line 416
    iget-object v11, v1, Lcom/android/server/om/OverlayManagerService;->mThemingList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1a2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 417
    new-instance v13, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v13, v12}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v12, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v12, v13, v6, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;
    :try_end_1b8
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_190 .. :try_end_1b8} :catch_1bc
    .catchall {:try_start_190 .. :try_end_1b8} :catchall_342

    goto :goto_1a2

    :cond_1b9
    add-int/lit8 v9, v9, 0x1

    goto :goto_198

    :catch_1bc
    move-exception v0

    :try_start_1bd
    const-string/jumbo v8, "setEnabled internal error"

    .line 422
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    :cond_1c3
    iget-boolean v0, v1, Lcom/android/server/om/OverlayManagerService;->mIsSuccessLoadMetadata:Z
    :try_end_1c5
    .catchall {:try_start_1bd .. :try_end_1c5} :catchall_342

    if-eqz v0, :cond_33b

    const/4 v4, 0x3

    .line 429
    :try_start_1c8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getColorThemeState()I

    move-result v0

    const/4 v10, -0x1

    if-le v0, v10, :cond_33b

    .line 433
    iput v7, v1, Lcom/android/server/om/OverlayManagerService;->mStateInitColorTheme:I

    .line 434
    new-instance v10, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v10}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    const-string/jumbo v11, "regenerate color theme overlays"

    .line 435
    invoke-static {v5, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v11, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v11, v10}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    if-ne v0, v7, :cond_227

    .line 438
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v0, v10}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 439
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_227

    const-string/jumbo v7, "restore palette overlays"

    .line 441
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 443
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v12, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v12, v0, v7, v11}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 445
    iget-object v12, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v12, v7, v11, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 446
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v11, Landroid/content/om/OverlayIdentifier;

    const-string v12, "android"

    const-string v13, "MonetPalette"

    invoke-direct {v11, v12, v13}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11, v6}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->restoreMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayInfo;)V

    .line 450
    :cond_227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 451
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_240
    :goto_240
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 454
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v7}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_240

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v7}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "SemWT_"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_240

    .line 455
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_240

    .line 458
    :cond_26e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27f

    const-string/jumbo v0, "unregister unnecessary color theme overlays for fota upgrade"

    .line 459
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v0, v10, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->unregisterNotExistedOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/util/ArrayList;)V

    .line 462
    :cond_27f
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setPermissionsDirIfExisted()V

    .line 464
    :cond_284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 465
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    .line 466
    invoke-virtual {v10}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoring color theme has finished, ready:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v6, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms, commit:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 468
    iput v0, v1, Lcom/android/server/om/OverlayManagerService;->mStateInitColorTheme:I

    .line 469
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Lcom/android/server/om/OverlayManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mResultInitColorTheme:Ljava/lang/String;
    :try_end_2cf
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_2cf} :catch_306
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_2cf} :catch_2d0
    .catchall {:try_start_1c8 .. :try_end_2cf} :catchall_342

    goto :goto_33b

    :catch_2d0
    move-exception v0

    .line 476
    :try_start_2d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed loading template and metadata, wallpaper theming will not working, ex = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput v4, v1, Lcom/android/server/om/OverlayManagerService;->mStateInitColorTheme:I

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v3, Lcom/android/server/om/OverlayManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mResultInitColorTheme:Ljava/lang/String;

    goto :goto_33b

    :catch_306
    move-exception v0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed re-register color theme overlay, e = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput v4, v1, Lcom/android/server/om/OverlayManagerService;->mStateInitColorTheme:I

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v3, Lcom/android/server/om/OverlayManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mResultInitColorTheme:Ljava/lang/String;
    :try_end_33b
    .catchall {:try_start_2d1 .. :try_end_33b} :catchall_342

    :cond_33b
    :goto_33b
    const-wide/32 v1, 0x4000000

    .line 482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_342
    move-exception v0

    const-wide/32 v1, 0x4000000

    goto :goto_349

    :catchall_347
    move-exception v0

    move-wide v1, v7

    :goto_349
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 483
    throw v0
.end method

.method public static broadcastActionOverlayChanged(Ljava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[broadcastActionOverlayChanged] targetPackages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMS_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    new-instance v0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    .line 548
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 550
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 553
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ";"

    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    .line 555
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 556
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 559
    :cond_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1951
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1952
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-object v0
.end method

.method public static synthetic lambda$broadcastActionOverlayChanged$3(ILjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1970
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    .line 1971
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x4000000

    .line 1972
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1974
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, p0

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const-string p1, "OverlayManager"

    const-string v0, "broadcastActionOverlayChanged remote exception"

    .line 1977
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public static synthetic lambda$groupTargetsByUserId$2(Landroid/util/SparseArray;Lcom/android/server/om/PackageAndUser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1953
    iget v0, p1, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 1955
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1956
    iget v1, p1, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1958
    :cond_14
    iget-object p0, p1, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 3

    .line 390
    iget-boolean v0, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$updateTargetPackagesLocked$1(Ljava/util/List;IZZLandroid/util/ArraySet;)V
    .registers 6

    .line 1923
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateActivityManager(Ljava/util/List;I)V

    if-eqz p3, :cond_20

    const-string p0, "SWT_OverlayManager"

    const-string/jumbo p1, "overlay changed broadcast to system for color theme"

    .line 1927
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    new-instance p0, Landroid/util/ArraySet;

    const-string p1, "android"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    goto :goto_62

    :cond_20
    if-eqz p4, :cond_5f

    .line 1931
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p0, p3, :cond_5b

    .line 1932
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "broadcast to affected packages on switching user, size = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " -> "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "OverlayManager"

    invoke-static {p3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    goto :goto_62

    .line 1935
    :cond_5b
    invoke-static {p5, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    goto :goto_62

    .line 1941
    :cond_5f
    invoke-static {p5, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    :goto_62
    return-void
.end method


# virtual methods
.method public final getColorThemeState()I
    .registers 4

    .line 2364
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    sget-object v0, Lcom/android/server/om/OverlayManagerService;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    if-eqz v2, :cond_14

    .line 2366
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    :cond_14
    if-nez p0, :cond_18

    const/4 p0, -0x1

    return p0

    .line 2369
    :cond_18
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1f

    return v0

    :cond_1f
    return v1
.end method

.method public final increaseColorThemeSeq()V
    .registers 2

    .line 2377
    sget p0, Lcom/android/server/om/OverlayManagerService;->sGlobalColorThemeSeq:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sput p0, Lcom/android/server/om/OverlayManagerService;->sGlobalColorThemeSeq:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/android/server/om/OverlayManagerService;->sGlobalColorThemeSeq:I

    .line 2378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/om/OverlayManagerService;->sGlobalColorThemeSeq:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug.wallpaper.theme.seq"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final initIfNeeded()V
    .registers 10

    .line 492
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 493
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_56

    .line 497
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 498
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_35

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 499
    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_35

    :cond_33
    move v6, v3

    goto :goto_36

    :cond_35
    :goto_35
    move v6, v7

    .line 500
    :goto_36
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v8

    if-nez v8, :cond_40

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v5, :cond_42

    :cond_40
    if-eqz v6, :cond_53

    .line 505
    :cond_42
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(IZ)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 508
    :cond_56
    monitor-exit v1

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_13 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 3

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(IZ)V

    return-void
.end method

.method public final onSwitchUser(IZ)V
    .registers 9

    const-wide/32 v0, 0x4000000

    .line 524
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 529
    const-class v2, Lcom/android/server/UiModeManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UiModeManagerInternal;

    if-eqz v2, :cond_24

    .line 531
    invoke-virtual {v2, p1}, Lcom/android/server/UiModeManagerInternal;->onEarlySwitchUser(I)V

    .line 535
    :cond_24
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_50

    :try_start_27
    const-string v3, "OMS_DEBUG"

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onSwitchUser] newUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(IZ)Landroid/util/ArraySet;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;ZZ)V

    .line 541
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_4d

    .line 543
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_4d
    move-exception p0

    .line 541
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    .line 543
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 544
    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 513
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    return-void
.end method

.method public final persistSettingsLocked()V
    .registers 4

    const-string v0, "OverlayManager"

    const-string v1, "Writing overlay settings"

    .line 2143
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2147
    :try_start_8
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2148
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 2149
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v2

    .line 2151
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p0, "failed to persist overlay state"

    .line 2152
    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public final readResetSettingsValue()V
    .registers 5

    .line 2258
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2261
    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_41

    .line 2262
    :try_start_c
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_37

    .line 2263
    :try_start_13
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "reset_setting"

    .line 2265
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2d

    .line 2266
    :try_start_26
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_37

    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_41

    goto :goto_45

    :catchall_2d
    move-exception p0

    .line 2261
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    .line 2267
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public final restoreSettings()V
    .registers 11

    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#restoreSettings"

    .line 2158
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2159
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8d

    .line 2160
    :try_start_b
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2161
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8a

    .line 2187
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2163
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_22} :catch_7d
    .catchall {:try_start_1c .. :try_end_22} :catchall_8a

    .line 2164
    :try_start_22
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 2170
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2171
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    move v7, v6

    .line 2172
    :goto_36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4f

    .line 2173
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 2175
    :cond_4f
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 2177
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v4

    array-length v7, v4

    :goto_59
    if-ge v6, v7, :cond_6b

    aget v8, v4, v6

    .line 2178
    invoke-static {v5, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_68

    .line 2179
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_71

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_6b
    if-eqz v3, :cond_85

    .line 2182
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_7d
    .catchall {:try_start_6d .. :try_end_70} :catchall_8a

    goto :goto_85

    :catchall_71
    move-exception p0

    if-eqz v3, :cond_7c

    .line 2163
    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v3

    :try_start_79
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_8a

    :catch_7d
    move-exception p0

    :try_start_7e
    const-string v3, "OverlayManager"

    const-string v4, "failed to restore overlay state"

    .line 2183
    invoke-static {v3, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    :cond_85
    :goto_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_8a

    .line 2187
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8a
    move-exception p0

    .line 2185
    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p0

    .line 2187
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2188
    throw p0
.end method

.method public final updateActivityManager(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1987
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    .line 1989
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception p0

    const-string p1, "OverlayManager"

    const-string/jumbo p2, "updateActivityManager remote exception"

    .line 1991
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public final updateActivityManagerforSamsungOverlay(Ljava/util/List;IZZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZZ)V"
        }
    .end annotation

    const-string v0, "OverlayManager"

    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActivityManagerforSamsungOverlay() called with: targetPackageNames = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], isSamungThemeFwOverlay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], isLocaleOverlay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], scheduleForImmortals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    if-eqz v0, :cond_3c

    return-void

    .line 2287
    :cond_3c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 2292
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_4d

    const/4 p3, 0x1

    .line 2294
    :try_start_48
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;IZ)Ljava/util/List;

    move-result-object p1

    goto :goto_51

    .line 2295
    :cond_4d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p1

    .line 2296
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_11d

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v1, "textservices"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/textservice/TextServicesManager;

    .line 2302
    invoke-virtual {p3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_72

    .line 2306
    invoke-virtual {p3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 2307
    invoke-virtual {p3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    move-object v8, v1

    move-object v1, p3

    move-object p3, v8

    goto :goto_73

    :cond_72
    move-object p3, v1

    .line 2311
    :goto_73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_77
    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p4, :cond_ce

    .line 2315
    :try_start_86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    if-eqz p3, :cond_bc

    .line 2316
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_bc

    .line 2318
    iget-object v5, p3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2319
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    const-string v5, "OverlayManager"

    .line 2320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated overlayPaths of spellCheckerServiceInfo. OverlayPaths= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_bc
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_c3} :catch_c4

    goto :goto_77

    :catch_c4
    move-exception v2

    const-string v3, "OverlayManager"

    const-string/jumbo v4, "updateActivityManagerforSamsungOverlay scheduleApplicationInfoChanged"

    .line 2329
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 2332
    :cond_ce
    sget-object v3, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "com.samsung.android.themecenter"

    .line 2333
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 2335
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2336
    :try_start_e1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_103

    .line 2337
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_eb
    .catchall {:try_start_e1 .. :try_end_eb} :catchall_106

    if-eqz v4, :cond_103

    .line 2339
    :try_start_ed
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2340
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const-string/jumbo v5, "update-overlay"

    .line 2339
    invoke-interface {v0, v2, v4, p2, v5}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_f9} :catch_fa
    .catchall {:try_start_ed .. :try_end_f9} :catchall_106

    goto :goto_103

    :catch_fa
    move-exception v2

    :try_start_fb
    const-string v4, "OverlayManager"

    const-string/jumbo v5, "updateActivityManagerforSamsungOverlay killApplication"

    .line 2343
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2346
    :cond_103
    :goto_103
    monitor-exit v3

    goto/16 :goto_77

    :catchall_106
    move-exception p0

    monitor-exit v3
    :try_end_108
    .catchall {:try_start_fb .. :try_end_108} :catchall_106

    throw p0

    :cond_109
    if-nez p4, :cond_120

    if-eqz p5, :cond_120

    .line 2352
    :try_start_10d
    sget-object p0, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    invoke-interface {v0, p0, v3}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_112} :catch_113

    goto :goto_120

    :catch_113
    move-exception p0

    const-string p1, "OverlayManager"

    const-string/jumbo p2, "updateActivityManagerforSamsungOverlay scheduleApplicationInfoChanged"

    .line 2355
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_120

    :catchall_11d
    move-exception p0

    .line 2296
    :try_start_11e
    monitor-exit v1
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw p0

    :cond_120
    :goto_120
    return-void
.end method

.method public final updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1998
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1999
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 2001
    :cond_c
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2002
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 2003
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1a
    if-ge v1, v2, :cond_30

    .line 2004
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2005
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_30
    return-object v0
.end method

.method public final updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2019
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final updatePackageManagerLocked(Ljava/util/Collection;IZ)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-wide/32 v4, 0x4000000

    .line 2026
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMS#updatePackageManagerLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2027
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 2028
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    const-string v7, "android"

    .line 2029
    invoke-interface {v1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 2031
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v1

    :cond_33
    if-eqz v7, :cond_4d

    if-eqz v3, :cond_4d

    .line 2037
    new-instance v1, Ljava/util/ArrayList;

    .line 2038
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getSamsungThemeTargetPackageNames(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "android"

    .line 2039
    invoke-interface {v1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "android"

    .line 2040
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4d
    const-string v8, "OverlayManager"

    .line 2046
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update package manager about changed overlays, packageSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", updateFrameworkRes : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", pruneTargets : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", userId : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v3, Landroid/util/ArrayMap;

    .line 2051
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v3, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2052
    iget-object v7, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_8b
    .catchall {:try_start_b .. :try_end_8b} :catchall_211

    .line 2053
    :try_start_8b
    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v9, "android"

    const/4 v10, 0x1

    .line 2054
    invoke-virtual {v8, v9, v2, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    .line 2062
    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v8}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2063
    iget-object v9, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v11, "android"

    const/4 v12, 0x5

    invoke-virtual {v9, v11, v2, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    .line 2064
    iget-object v11, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v12, "android"

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v2, v13}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v11

    .line 2066
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_af
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_169

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2067
    new-instance v14, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v14}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    const-string v15, "android"

    .line 2068
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ec

    .line 2070
    sget-object v15, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_dd

    .line 2071
    iget-object v15, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v4, "android"

    const/4 v5, 0x7

    invoke-virtual {v15, v4, v2, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_ec

    :cond_dd
    if-eqz v8, :cond_ec

    .line 2074
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 2075
    invoke-virtual {v14, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_ec

    .line 2077
    :cond_e9
    invoke-virtual {v14, v11}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 2085
    :cond_ec
    :goto_ec
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v5, "android"

    const/4 v15, 0x3

    invoke-virtual {v4, v5, v2, v15}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    const-string v5, "android"

    .line 2087
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_132

    if-eqz v4, :cond_132

    .line 2089
    invoke-virtual {v4}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_132

    .line 2090
    invoke-virtual {v4}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_132

    .line 2091
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v5, v13, v2, v15}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v5

    .line 2094
    sget-object v15, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-virtual {v15, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12f

    if-eqz v5, :cond_132

    .line 2095
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_132

    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_132

    .line 2096
    :cond_12f
    invoke-virtual {v14, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 2102
    :cond_132
    sget-object v5, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 2103
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v5, 0x4

    invoke-virtual {v4, v13, v2, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;II)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_15d

    :cond_145
    const-string v5, "android"

    .line 2105
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 2106
    invoke-virtual {v14, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 2107
    invoke-virtual {v14, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_15d

    .line 2109
    :cond_154
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v4, v13, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 2114
    :goto_15d
    invoke-virtual {v14}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0x4000000

    goto/16 :goto_af

    .line 2116
    :cond_169
    monitor-exit v7
    :try_end_16a
    .catchall {:try_start_8b .. :try_end_16a} :catchall_209

    .line 2118
    :try_start_16a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2119
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_173
    :goto_173
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "OverlayManager"

    .line 2121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Updating overlay: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " overlays=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2121
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/overlay/OverlayPaths;

    .line 2126
    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_173

    const-string v5, "OverlayManager"

    const-string v7, "Failed to change enabled overlays for %s user %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 2130
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v10

    .line 2129
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    :cond_1cd
    const-string v1, "OMS_DEBUG"

    .line 2133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePackageManagerLocked] updatedPackages : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OMS_DEBUG"

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePackageManagerLocked] updatedPackages.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_202
    .catchall {:try_start_16a .. :try_end_202} :catchall_20c

    const-wide/32 v2, 0x4000000

    .line 2137
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_209
    move-exception v0

    .line 2116
    :try_start_20a
    monitor-exit v7
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_209

    :try_start_20b
    throw v0
    :try_end_20c
    .catchall {:try_start_20b .. :try_end_20c} :catchall_20c

    :catchall_20c
    move-exception v0

    const-wide/32 v1, 0x4000000

    goto :goto_213

    :catchall_211
    move-exception v0

    move-wide v1, v4

    .line 2137
    :goto_213
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2138
    throw v0
.end method

.method public final updateTargetPackagesLocked(Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1889
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    :cond_9
    return-void
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1895
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;ZZ)V

    return-void
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1901
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;ZZ)V

    return-void
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;ZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1906
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1909
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 1910
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 1911
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_3e

    .line 1912
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/util/ArraySet;

    .line 1913
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1914
    invoke-virtual {p0, v9, v6}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v5

    .line 1915
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_3b

    .line 1920
    :cond_2b
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v10, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    move-object v3, v10

    move-object v4, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZZLandroid/util/ArraySet;)V

    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3e
    return-void
.end method
