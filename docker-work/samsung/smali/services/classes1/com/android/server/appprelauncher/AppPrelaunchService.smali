.class public Lcom/android/server/appprelauncher/AppPrelaunchService;
.super Landroid/os/IAppPrelaunchService$Stub;
.source "AppPrelaunchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;,
        Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    }
.end annotation


# static fields
.field public static final ACTIVE_APPS_LIMIT:I

.field public static final APP_MAX_IDLE_TIME_MIN:J

.field public static final FORCE_PREL:Z

.field public static final GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

.field public static final PRELAUNCH_ATTEMPTS_LIMIT:I

.field public static final PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

.field public static final PREL_BLOCK_LIST_PATH:Ljava/lang/String; = "/system/etc/prelauncher-package-blocklist.conf"

.field public static final PREL_DISABLED_ATTR:Ljava/lang/String; = "com.samsung.android.speg.prelauncher.disabled"

.field public static final PREL_PROC_KILL_TIMEOUT_MS:I = 0x1f4

.field public static final PREL_VERSION:Ljava/lang/String; = "1.0"

.field public static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field public static final TAG:Ljava/lang/String; = "PRELService"


# instance fields
.field public final HISTORY_TIME_MIN:J

.field public blockedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDmg:Landroid/hardware/display/DisplayManagerGlobal;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public mNms:Landroid/os/INetworkManagementService;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPrelaunchedAppHistory:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;",
            ">;"
        }
    .end annotation
.end field

.field public mPrelaunchedAppIds:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPrelaunchedApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoveTaskByIdCallback:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mSetupWizardFinished:Z

.field public mSmartSwitchState:Z

.field public final mSpeg:Lcom/android/server/SpegService;

.field public final mTaskTracker:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

.field public nativeLibBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$i13QfaX3Bo80KQqRt4HgoG07Cxs(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$performInstallActionBroadcast$0(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y_on_xsY88SyuG9jt05D_gjsbQE(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$restrictNetworkConnection$1(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetHISTORY_TIME_MIN(Lcom/android/server/appprelauncher/AppPrelaunchService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->HISTORY_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExecutorService(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrelaunchedApps(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoveTaskByIdCallback(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/function/Function;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mRemoveTaskByIdCallback:Ljava/util/function/Function;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindAppByHiddenDisplayId(Lcom/android/server/appprelauncher/AppPrelaunchService;I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->findAppByHiddenDisplayId(I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mkillAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperformInstallActionBroadcast(Lcom/android/server/appprelauncher/AppPrelaunchService;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->performInstallActionBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestrictNetworkConnection(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->restrictNetworkConnection(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAPP_MAX_IDLE_TIME_MIN()J
    .registers 2

    sget-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->APP_MAX_IDLE_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetGLOBAL_WATCHDOG_SLEEP_TIME_MIN()J
    .registers 2

    sget-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPREL_APP_START_WATCHDOG_TIMEOUT_MS()I
    .registers 1

    sget v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "com.samsung.speg.prelauncher.appstartwatchdog_ms"

    const/16 v1, 0x5dc

    .line 119
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

    const-string v0, "com.samsung.speg.prelauncher.appidletime_min"

    const/16 v1, 0xa

    .line 150
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->APP_MAX_IDLE_TIME_MIN:J

    const-string v0, "com.samsung.speg.prelauncher.globalwatchdog_min"

    .line 152
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    .line 154
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_33

    const-string v0, "com.samsung.speg.prelauncher.force"

    .line 155
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    sput-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    const/4 v0, 0x3

    const-string v1, "com.samsung.speg.prelauncher.active_apps_limit"

    .line 157
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->ACTIVE_APPS_LIMIT:I

    const/4 v0, 0x5

    const-string v1, "com.samsung.speg.prelauncher.prelaunch_attempts_limit"

    .line 159
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PRELAUNCH_ATTEMPTS_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 8

    .line 207
    invoke-direct {p0}, Landroid/os/IAppPrelaunchService$Stub;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "librealm-jni.so"

    const-string/jumbo v2, "liblove.so"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "*cocos2d*"

    const-string v2, "*xqsoft*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->blockedActivities:Ljava/util/Set;

    .line 162
    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mTaskTracker:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mRemoveTaskByIdCallback:Ljava/util/function/Function;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    .line 204
    sget-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->HISTORY_TIME_MIN:J

    .line 208
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    .line 210
    iput-object p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string p1, "/system/etc/prelauncher-package-blocklist.conf"

    .line 211
    invoke-virtual {p2, p1}, Lcom/android/server/SpegService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->packageBlockList:Ljava/util/Set;

    return-void
.end method

.method public static getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 816
    :try_start_6
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_c} :catch_50
    .catchall {:try_start_6 .. :try_end_c} :catchall_4e

    .line 818
    :try_start_c
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 819
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 820
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 821
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_10

    .line 824
    :cond_2a
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 826
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3d

    add-int/lit8 v5, v5, 0x1

    .line 828
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 832
    :cond_3d
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_10

    .line 835
    :cond_44
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_47} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_47} :catch_4c
    .catchall {:try_start_c .. :try_end_47} :catchall_76

    goto :goto_10

    .line 842
    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_75

    goto :goto_75

    :catch_4c
    move-exception v1

    goto :goto_54

    :catchall_4e
    move-exception p0

    goto :goto_78

    :catch_50
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_54
    :try_start_54
    const-string v3, "PRELService"

    .line 838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_76

    if-eqz v2, :cond_75

    goto :goto_48

    :catch_75
    :cond_75
    :goto_75
    return-object v0

    :catchall_76
    move-exception p0

    move-object v1, v2

    :goto_78
    if-eqz v1, :cond_7d

    .line 842
    :try_start_7a
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 845
    :catch_7d
    :cond_7d
    throw p0
.end method

.method private synthetic lambda$performInstallActionBroadcast$0(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->prelaunchApp(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$restrictNetworkConnection$1(IZ)V
    .registers 7

    .line 1424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1426
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mNms:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1430
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_d
    move-exception p0

    goto :goto_28

    :catch_f
    move-exception p0

    :try_start_10
    const-string p2, "PRELService"

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set network connection rules for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    goto :goto_9

    :goto_27
    return-void

    .line 1430
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    throw p0
.end method


# virtual methods
.method public final clearPackage(Ljava/lang/String;I)V
    .registers 8

    const-string v0, ", error: "

    const-string v1, "PRELService"

    .line 1444
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1445
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1444
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_31

    :catch_16
    move-exception p0

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t remove recent task for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_31
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    const/16 v2, 0xe

    const/16 v3, 0x8

    :try_start_3d
    const-string v4, "clear data"

    .line 1452
    invoke-interface {p0, p2, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForUid(IIILjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_5e

    :catch_43
    move-exception p0

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t clear scheduled jobs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :goto_5e
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 1460
    :try_start_66
    invoke-interface {p0, p2}, Lcom/android/server/AlarmManagerInternal;->removeAlarmsForUid(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_85

    :catch_6a
    move-exception p0

    .line 1462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t clear pending alarms for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 720
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "PRELService"

    .line 721
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dump service requested for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 723
    :try_start_22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "History: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_42
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 725
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v1

    if-nez v1, :cond_57

    .line 727
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setKilled()V

    .line 728
    :cond_57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", process is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "still alive"

    goto :goto_6d

    :cond_6a
    const-string/jumbo v1, "killed"

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    :cond_78
    const-string p3, ""

    .line 731
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Active prelaunched apps: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 734
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", process is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p3

    if-eqz p3, :cond_c4

    const-string/jumbo p3, "still alive"

    goto :goto_c7

    :cond_c4
    const-string/jumbo p3, "killed"

    :goto_c7
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a1

    .line 737
    :cond_d2
    monitor-exit p1

    return-void

    :catchall_d4
    move-exception p0

    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_22 .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public final findAppByHiddenDisplayId(I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    .registers 5

    .line 1467
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1468
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 1469
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_d

    monitor-exit v0

    return-object v1

    .line 1471
    :cond_21
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 358
    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_37

    .line 363
    :cond_22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 367
    invoke-virtual {p1, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    :cond_37
    const/4 p1, 0x0

    if-eqz v2, :cond_98

    .line 369
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_41

    goto :goto_98

    .line 372
    :cond_41
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 374
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 376
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000

    .line 378
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 380
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->blockedActivities:Ljava/util/Set;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_97

    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PRELService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-boolean p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    if-eqz p0, :cond_96

    move-object p1, p2

    :cond_96
    return-object p1

    :cond_97
    return-object p2

    :cond_98
    :goto_98
    return-object p1
.end method

.method public final getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1001
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1002
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .registers 4

    .line 1301
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 1303
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    if-nez p0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 1307
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p2, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :catchall_19
    move-exception p0

    .line 1303
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public handleActivityExecution(I)Z
    .registers 8

    .line 1323
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 1325
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_f3

    const/4 v0, 0x1

    if-eqz v1, :cond_dc

    .line 1326
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_dc

    .line 1330
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p1

    if-nez p1, :cond_4d

    const-string p1, "PRELService"

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process did not survive for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p1

    monitor-enter p1

    :try_start_3c
    const-string v2, "App process did not survive"

    .line 1333
    invoke-virtual {v1, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 1334
    invoke-virtual {v1, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 1335
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_4a

    .line 1336
    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return v0

    :catchall_4a
    move-exception p0

    .line 1335
    :try_start_4b
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0

    .line 1339
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1342
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, p1, :cond_a0

    const-string p0, "PRELService"

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App tries to start itself "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", callingUid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p0

    if-ge p0, v3, :cond_81

    .line 1345
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->incSelfStartCount()V

    return v0

    :cond_81
    const-string p0, "PRELService"

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App tries to start after prelaunch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1355
    :cond_a0
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    const-string p0, "PRELService"

    const-string p1, "GlobalLock has already been acquired"

    .line 1356
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p0

    if-ge p0, v3, :cond_bc

    goto :goto_bd

    :cond_bc
    move v0, v4

    :goto_bd
    return v0

    :cond_be
    const/4 p1, 0x4

    .line 1361
    invoke-virtual {p0, v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z

    move-result p1

    if-nez p1, :cond_c6

    return v4

    .line 1365
    :cond_c6
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v2

    monitor-enter v2

    const/4 p1, 0x5

    .line 1366
    :try_start_cc
    invoke-virtual {v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    const-string p1, "Untracked because user started"

    .line 1367
    invoke-virtual {v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    .line 1368
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d9

    .line 1370
    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return v0

    :catchall_d9
    move-exception p0

    .line 1368
    :try_start_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p0

    :cond_dc
    :goto_dc
    const-string p0, "PRELService"

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to wait for non prelaunched app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_f3
    move-exception p0

    .line 1325
    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p0
.end method

.method public handleActivityExecution(Ljava/lang/String;I)Z
    .registers 3

    .line 1285
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c

    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->handleActivityExecution(I)Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public handlePrelaunchedAppDied(ILjava/lang/String;)V
    .registers 5

    .line 1483
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 1485
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    if-eqz p1, :cond_2d

    .line 1487
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2d

    .line 1490
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    monitor-enter v0

    .line 1491
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    const/4 p2, 0x6

    .line 1492
    invoke-virtual {p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 1493
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2a

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 1493
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    return-void

    :catchall_2e
    move-exception p0

    .line 1485
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public initCoreServices()Z
    .registers 5

    .line 221
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    const-string v2, "PRELService"

    if-nez v0, :cond_15

    const-string p0, "Could not get package manager"

    .line 223
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 226
    :cond_15
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_29

    const-string p0, "Could not get display manager"

    .line 228
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 231
    :cond_29
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDmg:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v0, :cond_37

    const-string p0, "Could not get display manager global"

    .line 233
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_37
    const-string/jumbo v0, "network_management"

    .line 237
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mNms:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_4c

    const-string p0, "Cannot get NetworkManagementService"

    .line 239
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 245
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->startGlobalWatchDog()V

    .line 248
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mTaskTracker:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 250
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 p0, 0x1

    return p0
.end method

.method public isAppPrelaunched(I)Z
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    if-eqz p0, :cond_16

    .line 628
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 629
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public isAppPrelaunched(Ljava/lang/String;I)Z
    .registers 3

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(I)Z

    move-result p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isCallerUidAllowed()Z
    .registers 2

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

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

.method public final isDeviceInteractive()Z
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 801
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public final isDexoptLimited()Z
    .registers 2

    const-string/jumbo p0, "sys.dexopt.ctrl"

    const/4 v0, 0x0

    .line 793
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isKidsHome()Z
    .registers 2

    .line 990
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    .line 991
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sec.android.app.kidshome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPackageBlockListed(Ljava/lang/String;)Z
    .registers 3

    .line 1043
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->packageBlockList:Ljava/util/Set;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public killApp(I)Z
    .registers 6

    .line 654
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isCallerUidAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "PRELService"

    const-string p1, "Caller does not have permission to kill prelaunched app"

    .line 655
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 659
    :cond_f
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_12
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 661
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_5b

    if-eqz v2, :cond_3f

    .line 662
    invoke-virtual {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_3f

    :cond_28
    const-string p1, "Killed by user"

    .line 666
    invoke-virtual {p0, v2, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    monitor-enter v0

    const/4 p1, 0x6

    .line 668
    :try_start_33
    invoke-virtual {v2, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 669
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3c

    .line 671
    invoke-virtual {p0, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    const/4 p0, 0x1

    return p0

    :catchall_3c
    move-exception p0

    .line 669
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    const-string p0, "PRELService"

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing canceled. Application with uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not prelaunched"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_5b
    move-exception p0

    .line 661
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V
    .registers 9

    .line 676
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "PRELService"

    .line 677
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App is already killed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    :try_start_1d
    const-string v0, "PRELService"

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_43} :catch_ae

    .line 686
    :try_start_43
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 687
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUserId()I

    move-result v4

    const-string/jumbo v5, "prel"

    .line 686
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_a9

    .line 689
    :try_start_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 693
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result p0

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    :cond_6d
    const-string p0, "PRELService"

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prelaunched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been killed. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    monitor-enter p0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_94} :catch_ae

    .line 700
    :try_start_94
    invoke-virtual {p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setKilled()V

    .line 705
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_a4

    .line 706
    invoke-virtual {p1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 708
    :cond_a4
    monitor-exit p0

    goto :goto_d5

    :catchall_a6
    move-exception p2

    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_94 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw p2

    :catchall_a9
    move-exception p0

    .line 689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw p0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception p0

    const-string p2, "PRELService"

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d5
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16

    .line 745
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    .line 746
    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;

    invoke-direct {v1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 747
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto :goto_19

    :cond_14
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 751
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_19
    return-void
.end method

.method public final performInstallActionBroadcast(Landroid/content/Intent;)V
    .registers 6

    .line 775
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 776
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRELService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    .line 779
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_3c

    if-eq p1, v3, :cond_3c

    .line 781
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_58

    .line 783
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received incomplete intent. Package name: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method public prelaunchApp(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x4

    .line 398
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->prelaunchAppTillStage(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public prelaunchAppTillStage(Ljava/lang/String;II)Z
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v0, p3

    const-string v4, "PRELService"

    const-string v5, "Started, Samsung PreL v1.0"

    .line 414
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isCallerUidAllowed()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1e

    const-string v0, "PRELService"

    const-string v1, "Caller does not have permission to prelaunch app"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 419
    :cond_1e
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v0, "PRELService"

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unique Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not an app Id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 423
    :cond_40
    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 424
    invoke-virtual {v1, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->shouldSkipPrelForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 425
    sget-boolean v6, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    if-eqz v6, :cond_58

    const-string v6, "PRELService"

    const-string v7, "Forced prelaunch"

    .line 426
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_58
    return v5

    .line 431
    :cond_59
    :goto_59
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    const-string v0, "PRELService"

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match its uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 435
    :cond_82
    iget-object v6, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v6

    .line 436
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-eq v15, v6, :cond_ad

    const-string v0, "PRELService"

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not related to current userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 442
    :cond_ad
    invoke-virtual {v1, v2, v15}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_cf

    const-string v0, "PRELService"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have launchable intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 447
    :cond_cf
    iget-object v6, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f8

    const-string v0, "PRELService"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_f8
    const-string v6, "PRELService"

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start prelaunching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " until stage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v6, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-direct {v6, v1, v4, v0, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 454
    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_126
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    const/4 v14, 0x6

    const/4 v13, 0x4

    if-eqz v0, :cond_18b

    .line 458
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v8

    if-lt v8, v13, :cond_16e

    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v8

    if-eqz v8, :cond_143

    goto :goto_16e

    :cond_143
    const-string v8, "PRELService"

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Process did not survive for previous "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v8

    monitor-enter v8
    :try_end_15e
    .catchall {:try_start_126 .. :try_end_15e} :catchall_573

    :try_start_15e
    const-string v9, "App process did not survive"

    .line 464
    invoke-virtual {v0, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, v14}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 466
    monitor-exit v8
    :try_end_167
    .catchall {:try_start_15e .. :try_end_167} :catchall_16b

    .line 467
    :try_start_167
    invoke-virtual {v1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_573

    goto :goto_18b

    :catchall_16b
    move-exception v0

    .line 466
    :try_start_16c
    monitor-exit v8
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    :try_start_16d
    throw v0

    :cond_16e
    :goto_16e
    const-string v0, "PRELService"

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already being prelaunched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-exit v4

    return v5

    .line 470
    :cond_18b
    :goto_18b
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 473
    monitor-exit v4
    :try_end_1a7
    .catchall {:try_start_16d .. :try_end_1a7} :catchall_573

    .line 479
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDmg:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    const/4 v12, 0x3

    const/4 v10, 0x1

    .line 482
    :try_start_1af
    invoke-virtual {v1, v3, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService;->restrictNetworkConnection(IZ)V

    if-eqz v4, :cond_394

    .line 487
    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v9
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1bc} :catch_3a9
    .catchall {:try_start_1af .. :try_end_1bc} :catchall_3a3

    .line 490
    :try_start_1bc
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v9}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 496
    invoke-virtual {v6, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDisplayId(I)V

    .line 499
    invoke-virtual {v6, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->createOrDeleteMarkerFiles(Z)Z

    move-result v7

    if-eqz v7, :cond_371

    .line 504
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->runWatchDogForApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    .line 507
    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForDisplayStateOn(Landroid/view/Display;)V

    .line 508
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v7

    monitor-enter v7
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1db} :catch_38b
    .catchall {:try_start_1bc .. :try_end_1db} :catchall_383

    .line 509
    :try_start_1db
    invoke-virtual {v6, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 510
    monitor-exit v7
    :try_end_1df
    .catchall {:try_start_1db .. :try_end_1df} :catchall_366

    .line 513
    :try_start_1df
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V

    .line 514
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    const-string v7, "PRELService"

    const-string v8, "Start activity"

    .line 516
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x0

    const-string v16, "com.samsung.speg"

    const/16 v17, 0x0

    .line 520
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 522
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_20f} :catch_38b
    .catchall {:try_start_1df .. :try_end_20f} :catchall_383

    move v5, v9

    move-object/from16 v9, v16

    move/from16 v24, v10

    move-object/from16 v10, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move/from16 v19, v15

    move/from16 v15, v21

    move/from16 v16, v22

    move-object/from16 v17, v23

    move-object/from16 v18, v0

    .line 518
    :try_start_226
    invoke-virtual/range {v7 .. v19}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 523
    iget v7, v0, Landroid/app/WaitResult;->result:I

    invoke-static {v7}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v7

    if-eqz v7, :cond_338

    const-string v0, "PRELService"

    const-string v7, "Activity started"

    .line 527
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_23d} :catch_361
    .catchall {:try_start_226 .. :try_end_23d} :catchall_35c

    if-nez v0, :cond_273

    :try_start_23f
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getSelfStartCount()I

    move-result v0

    if-lez v0, :cond_273

    const-string v0, "PRELService"

    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Additional waiting for extra activities "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getSelfStartCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_25f} :catch_26c
    .catchall {:try_start_23f .. :try_end_25f} :catchall_265

    const-wide/16 v7, 0x32

    .line 533
    :try_start_261
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_264
    .catch Ljava/lang/InterruptedException; {:try_start_261 .. :try_end_264} :catch_273
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_264} :catch_26c
    .catchall {:try_start_261 .. :try_end_264} :catchall_265

    goto :goto_273

    :catchall_265
    move-exception v0

    move v7, v5

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    goto/16 :goto_4a8

    :catch_26c
    move-exception v0

    move v7, v5

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    goto/16 :goto_3af

    .line 537
    :catch_273
    :cond_273
    :goto_273
    :try_start_273
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->removeTasks()V
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_276} :catch_361
    .catchall {:try_start_273 .. :try_end_276} :catchall_35c

    .line 543
    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 544
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_297

    const-string v0, "PRELService"

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t release "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_297
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-nez v0, :cond_2c8

    const-string v0, "PRELService"

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_2d4

    const-string v0, "App process did not survive"

    .line 553
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    goto :goto_2d4

    :cond_2c8
    const/4 v8, 0x3

    .line 558
    invoke-virtual {v1, v6, v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z

    move-result v0

    if-nez v0, :cond_2d4

    const-string v0, "Stage 3 was not reached"

    .line 559
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    .line 564
    :cond_2d4
    :goto_2d4
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 565
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->clearPackage(Ljava/lang/String;I)V

    .line 567
    :cond_2dd
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 568
    :try_start_2e0
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v2

    monitor-enter v2
    :try_end_2e5
    .catchall {:try_start_2e0 .. :try_end_2e5} :catchall_335

    .line 569
    :try_start_2e5
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_2f3

    const/4 v9, 0x6

    .line 571
    invoke-virtual {v6, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 573
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_2f7

    :cond_2f3
    const/4 v10, 0x4

    .line 575
    invoke-virtual {v6, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 577
    :goto_2f7
    monitor-exit v2
    :try_end_2f8
    .catchall {:try_start_2e5 .. :try_end_2f8} :catchall_332

    .line 578
    :try_start_2f8
    monitor-exit v7
    :try_end_2f9
    .catchall {:try_start_2f8 .. :try_end_2f9} :catchall_335

    .line 579
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-eqz v0, :cond_328

    const-string v0, "PRELService"

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prelaunched, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v24

    goto :goto_329

    :cond_328
    const/4 v5, 0x0

    :goto_329
    const-string v0, "PRELService"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_491

    :catchall_332
    move-exception v0

    .line 577
    :try_start_333
    monitor-exit v2
    :try_end_334
    .catchall {:try_start_333 .. :try_end_334} :catchall_332

    :try_start_334
    throw v0

    :catchall_335
    move-exception v0

    .line 578
    monitor-exit v7
    :try_end_337
    .catchall {:try_start_334 .. :try_end_337} :catchall_335

    throw v0

    :cond_338
    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    .line 524
    :try_start_33b
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", res="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/WaitResult;->result:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_35c} :catch_381
    .catchall {:try_start_33b .. :try_end_35c} :catchall_37f

    :catchall_35c
    move-exception v0

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    goto :goto_388

    :catch_361
    move-exception v0

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x4

    goto :goto_392

    :catchall_366
    move-exception v0

    move v5, v9

    move/from16 v24, v10

    move v8, v12

    move v10, v13

    move v9, v14

    .line 510
    :goto_36d
    :try_start_36d
    monitor-exit v7
    :try_end_36e
    .catchall {:try_start_36d .. :try_end_36e} :catchall_36f

    :try_start_36e
    throw v0

    :catchall_36f
    move-exception v0

    goto :goto_36d

    :cond_371
    move v5, v9

    move/from16 v24, v10

    move v8, v12

    move v10, v13

    move v9, v14

    .line 501
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string v7, "createSpegMarkerFile failed"

    invoke-direct {v0, v7}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37f
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_37f} :catch_381
    .catchall {:try_start_36e .. :try_end_37f} :catchall_37f

    :catchall_37f
    move-exception v0

    goto :goto_388

    :catch_381
    move-exception v0

    goto :goto_392

    :catchall_383
    move-exception v0

    move v5, v9

    move v8, v12

    move v10, v13

    move v9, v14

    :goto_388
    move v7, v5

    goto/16 :goto_4a8

    :catch_38b
    move-exception v0

    move v5, v9

    move/from16 v24, v10

    move v8, v12

    move v10, v13

    move v9, v14

    :goto_392
    move v7, v5

    goto :goto_3af

    :cond_394
    move/from16 v24, v10

    move v8, v12

    move v10, v13

    move v9, v14

    .line 484
    :try_start_399
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string v5, "VirtualDisplay is not created"

    invoke-direct {v0, v5}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3a1} :catch_3a1
    .catchall {:try_start_399 .. :try_end_3a1} :catchall_4a7

    :catch_3a1
    move-exception v0

    goto :goto_3af

    :catchall_3a3
    move-exception v0

    move v8, v12

    move v10, v13

    move v9, v14

    goto/16 :goto_4a8

    :catch_3a9
    move-exception v0

    move/from16 v24, v10

    move v8, v12

    move v10, v13

    move v9, v14

    .line 539
    :goto_3af
    :try_start_3af
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    const-string v5, "PRELService"

    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cancel prelaunching of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d8
    .catchall {:try_start_3af .. :try_end_3d8} :catchall_4a7

    if-eqz v4, :cond_3fb

    .line 543
    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 544
    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3fb

    const-string v0, "PRELService"

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t release "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3fb
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-nez v0, :cond_42c

    const-string v0, "PRELService"

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_437

    const-string v0, "App process did not survive"

    .line 553
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    goto :goto_437

    .line 558
    :cond_42c
    invoke-virtual {v1, v6, v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z

    move-result v0

    if-nez v0, :cond_437

    const-string v0, "Stage 3 was not reached"

    .line 559
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    .line 564
    :cond_437
    :goto_437
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_440

    .line 565
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->clearPackage(Ljava/lang/String;I)V

    .line 567
    :cond_440
    iget-object v5, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 568
    :try_start_443
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v2

    monitor-enter v2
    :try_end_448
    .catchall {:try_start_443 .. :try_end_448} :catchall_4a4

    .line 569
    :try_start_448
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_455

    .line 571
    invoke-virtual {v6, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 573
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_458

    .line 575
    :cond_455
    invoke-virtual {v6, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 577
    :goto_458
    monitor-exit v2
    :try_end_459
    .catchall {:try_start_448 .. :try_end_459} :catchall_4a1

    .line 578
    :try_start_459
    monitor-exit v5
    :try_end_45a
    .catchall {:try_start_459 .. :try_end_45a} :catchall_4a4

    .line 579
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-eqz v0, :cond_489

    const-string v0, "PRELService"

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prelaunched, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v24

    goto :goto_48a

    :cond_489
    const/4 v5, 0x0

    :goto_48a
    const-string v0, "PRELService"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_491
    const-string v2, "Finish prelaunch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_4a1
    move-exception v0

    .line 577
    :try_start_4a2
    monitor-exit v2
    :try_end_4a3
    .catchall {:try_start_4a2 .. :try_end_4a3} :catchall_4a1

    :try_start_4a3
    throw v0

    :catchall_4a4
    move-exception v0

    .line 578
    monitor-exit v5
    :try_end_4a6
    .catchall {:try_start_4a3 .. :try_end_4a6} :catchall_4a4

    throw v0

    :catchall_4a7
    move-exception v0

    :goto_4a8
    if-eqz v4, :cond_4cb

    .line 543
    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 544
    iget-object v5, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_4cb

    const-string v5, "PRELService"

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t release "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_4cb
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v4

    if-nez v4, :cond_4fc

    const-string v4, "PRELService"

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App process "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not started"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v4

    if-nez v4, :cond_507

    const-string v4, "App process did not survive"

    .line 553
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    goto :goto_507

    .line 558
    :cond_4fc
    invoke-virtual {v1, v6, v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z

    move-result v4

    if-nez v4, :cond_507

    const-string v4, "Stage 3 was not reached"

    .line 559
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    .line 564
    :cond_507
    :goto_507
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v4

    if-eqz v4, :cond_510

    .line 565
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->clearPackage(Ljava/lang/String;I)V

    .line 567
    :cond_510
    iget-object v2, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 568
    :try_start_513
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v3

    monitor-enter v3
    :try_end_518
    .catchall {:try_start_513 .. :try_end_518} :catchall_570

    .line 569
    :try_start_518
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v4

    if-eqz v4, :cond_525

    .line 571
    invoke-virtual {v6, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 573
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_528

    .line 575
    :cond_525
    invoke-virtual {v6, v10}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 577
    :goto_528
    monitor-exit v3
    :try_end_529
    .catchall {:try_start_518 .. :try_end_529} :catchall_56d

    .line 578
    :try_start_529
    monitor-exit v2
    :try_end_52a
    .catchall {:try_start_529 .. :try_end_52a} :catchall_570

    .line 579
    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v1

    if-eqz v1, :cond_556

    const-string v1, "PRELService"

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prelaunched, pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_556
    const-string v1, "PRELService"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish prelaunch of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    throw v0

    :catchall_56d
    move-exception v0

    .line 577
    :try_start_56e
    monitor-exit v3
    :try_end_56f
    .catchall {:try_start_56e .. :try_end_56f} :catchall_56d

    :try_start_56f
    throw v0

    :catchall_570
    move-exception v0

    .line 578
    monitor-exit v2
    :try_end_572
    .catchall {:try_start_56f .. :try_end_572} :catchall_570

    throw v0

    :catchall_573
    move-exception v0

    .line 473
    :try_start_574
    monitor-exit v4
    :try_end_575
    .catchall {:try_start_574 .. :try_end_575} :catchall_573

    throw v0
.end method

.method public registerBroadcastReceiver()V
    .registers 4

    .line 760
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 762
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appprelauncher/AppPrelaunchService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$3;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 276
    invoke-virtual {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 277
    monitor-exit v0

    return-void

    .line 280
    :cond_36
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final restrictNetworkConnection(IZ)V
    .registers 5

    .line 1423
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final runWatchDogForApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .registers 4

    .line 595
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$2;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 613
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setRemoveTaskByIdCallback(Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mRemoveTaskByIdCallback:Ljava/util/function/Function;

    const-string v1, "PRELService"

    if-nez v0, :cond_e

    .line 263
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mRemoveTaskByIdCallback:Ljava/util/function/Function;

    const-string p0, "Callback configured"

    .line 264
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 266
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "Try to double set callback"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public setSetupWizardFinished(Z)V
    .registers 2

    .line 979
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSetupWizardFinished:Z

    return-void
.end method

.method public setSmartSwitchState(Z)V
    .registers 2

    .line 983
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSmartSwitchState:Z

    return-void
.end method

.method public final shouldSkipPrelForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 12

    .line 856
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isDexoptLimited()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled due to high temperature"

    .line 857
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 860
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSmartSwitchState:Z

    if-eqz v0, :cond_1b

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled until SmartSwitch is finished"

    .line 861
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 864
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSetupWizardFinished:Z

    if-nez v0, :cond_27

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled until setup wizard is finished"

    .line 865
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 868
    :cond_27
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string p0, "PRELService"

    .line 871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 874
    :cond_48
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/FeatureInfo;

    .line 877
    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_50

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled due to OpenGL ES usage"

    .line 878
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 882
    :cond_68
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8e

    const-string v4, "com.samsung.android.speg.prelauncher.disabled"

    .line 883
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string p0, "PRELService"

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled in app manifest "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 888
    :cond_8e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for incremental-fs"

    .line 890
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 893
    :cond_a0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ae

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for shared package"

    .line 894
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 898
    :cond_ae
    :try_start_ae
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    .line 899
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v2

    const-string v4, "com.sec.android.easyMover"

    .line 900
    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string v2, "PRELService"

    const-string v4, "Feature is disabled for smart switch installer"

    .line 903
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_cb} :catch_cc

    return v1

    :catch_cc
    const-string v2, "PRELService"

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find an installation info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_e2
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isKidsHome()Z

    move-result v2

    if-eqz v2, :cond_104

    const-string p0, "PRELService"

    .line 910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to KidsHome"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 913
    :cond_104
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_121

    const-string p0, "PRELService"

    .line 914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for debuggable "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 917
    :cond_121
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCantSaveState()Z

    move-result v2

    if-eqz v2, :cond_13e

    const-string p0, "PRELService"

    .line 919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for heavy-weight "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 922
    :cond_13e
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v2, p1}, Lcom/android/server/SpegService;->hasPrivilegedPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_14e

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for privileged apps"

    .line 924
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 928
    :cond_14e
    :try_start_14e
    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1a1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 931
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_169
    if-ge v5, v4, :cond_1a1

    aget-object v6, v2, v5

    .line 932
    iget-object v7, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_19e

    const-string p0, "PRELService"

    .line 933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to unsupported library "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 933
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_19d} :catch_23b

    return v1

    :cond_19e
    add-int/lit8 v5, v5, 0x1

    goto :goto_169

    .line 944
    :cond_1a1
    :try_start_1a1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 945
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    move v5, v3

    :goto_1af
    if-ge v5, v4, :cond_1bd

    aget-object v6, p1, v5

    .line 946
    invoke-static {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1af

    .line 948
    :cond_1bd
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 949
    iget-object v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iget-object v5, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    invoke-virtual {v4, v2, v5}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_1c1

    const-string p0, "PRELService"

    .line 950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feature is disabled for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to unsupported library "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1f5} :catch_232

    return v1

    .line 959
    :cond_1f6
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 960
    :try_start_1f9
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->ACTIVE_APPS_LIMIT:I

    if-lt v0, v2, :cond_20c

    const-string p0, "PRELService"

    const-string v0, "Feature is disabled due to limit on number of prelaunched apps"

    .line 961
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    monitor-exit p1

    return v1

    .line 964
    :cond_20c
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->PRELAUNCH_ATTEMPTS_LIMIT:I

    if-lt v0, v2, :cond_21f

    const-string p0, "PRELService"

    const-string v0, "Feature is disabled due to limit on number of prelaunch attempts"

    .line 965
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    monitor-exit p1

    return v1

    .line 968
    :cond_21f
    monitor-exit p1
    :try_end_220
    .catchall {:try_start_1f9 .. :try_end_220} :catchall_22f

    .line 969
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_22e

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled in non-interactive device state"

    .line 970
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_22e
    return v3

    :catchall_22f
    move-exception p0

    .line 968
    :try_start_230
    monitor-exit p1
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    throw p0

    :catch_232
    move-exception p0

    const-string p1, "PRELService"

    const-string v0, "Exception occurred while checking libraries"

    .line 956
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_23b
    move-exception p0

    const-string p1, "PRELService"

    const-string v0, "Unexpected failure in checking libraries"

    .line 940
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final startGlobalWatchDog()V
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchService$1;

    invoke-direct {v1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$1;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z
    .registers 10

    const-string p0, "PRELService"

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait for app finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " till stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :try_start_1e
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    monitor-enter p0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_ad

    .line 1389
    :try_start_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1390
    :catch_27
    :goto_27
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v2

    if-ge v2, p2, :cond_89

    .line 1391
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1392
    sget v4, Lcom/android/server/appprelauncher/AppPrelaunchService;->PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-ltz v5, :cond_83

    const-string v0, "PRELService"

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Possible endless waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " till stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1397
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_23 .. :try_end_64} :catchall_aa

    const-string p0, "PRELService"

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_83
    int-to-long v4, v4

    sub-long/2addr v4, v2

    .line 1401
    :try_start_85
    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_27
    .catchall {:try_start_85 .. :try_end_88} :catchall_aa

    goto :goto_27

    .line 1407
    :cond_89
    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_aa

    const-string p0, "PRELService"

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_aa
    move-exception v0

    .line 1407
    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception p0

    const-string v0, "PRELService"

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    throw p0
.end method

.method public final waitForDisplayStateOn(Landroid/view/Display;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 1013
    :goto_1
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/16 v0, 0x18

    if-gt p0, v0, :cond_13

    int-to-long v0, p0

    .line 1022
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1015
    :cond_13
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to wait state on for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1024
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state is on at iteration "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PRELService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
