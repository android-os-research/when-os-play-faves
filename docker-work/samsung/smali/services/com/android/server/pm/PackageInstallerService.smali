.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ADB_DEV_MODE:I = 0x24

.field public static final DEBUG:Z

.field public static final LOGD:Z

.field public static final MAX_ACTIVE_SESSIONS_NO_PERMISSION:J = 0x32L

.field public static final MAX_ACTIVE_SESSIONS_WITH_PERMISSION:J = 0x400L

.field public static final MAX_AGE_MILLIS:J = 0xf731400L

.field public static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field public static final MAX_SESSION_AGE_ON_LOW_STORAGE_MILLIS:J = 0x1b77400L

.field public static final MAX_TIME_SINCE_UPDATE_MILLIS:J = 0x6c258c00L

.field public static final SMARTSWITCH_MAX_AGE_MILLIS:J = 0x1499700L

.field public static final SMARTSWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final SMARTSWITCH_UID_INIT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PackageInstaller"

.field public static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field public static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field public final mAllocatedSessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public volatile mBypassNextAllowedApexUpdateCheck:Z

.field public volatile mBypassNextStagedInstallerCheck:Z

.field public final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public final mHistoricalSessions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field public final mInstallHandler:Landroid/os/Handler;

.field public mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

.field public final mInstallThread:Landroid/os/HandlerThread;

.field public final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mLegacySessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field public volatile mOkToSendBroadcasts:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRandom:Ljava/util/Random;

.field public final mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

.field public final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionsDir:Ljava/io/File;

.field public final mSessionsFile:Landroid/util/AtomicFile;

.field public final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mSmartSwitchUid:I

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public static synthetic $r8$lambda$7c11yrLBNrkeJ47YkKtx6tYA2M0(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->lambda$getAllSessions$2(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XrDxuesO-5wc0UNnxMkMSLdbRCA(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->lambda$registerCallback$3(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e3GBWfp6y17JDWiQ8vFHE0WVXg0(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->lambda$getStagedSessions$1(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qXMUzWy7DWy_D_Ta3LwqPstEoss(Lcom/android/server/pm/PackageInstallerService;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallHandler(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOkToSendBroadcasts(Lcom/android/server/pm/PackageInstallerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsWriteRequest(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/utils/RequestThrottle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStagingManager(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuildAppIconFile(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monBroadcastReady(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->onBroadcastReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActiveSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSessionUpdatedBroadcast(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldFilterSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "PackageInstaller"

    const/4 v1, 0x3

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 160
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    .line 259
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 216
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 223
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 226
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 236
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 240
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 244
    new-instance v0, Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-direct {v0}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    const/4 v0, -0x1

    .line 254
    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 287
    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    .line 288
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 297
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 298
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 300
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 301
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 303
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 305
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 307
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 308
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "install_sessions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-session"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 310
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "install_sessions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 313
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 314
    new-instance v1, Lcom/android/server/pm/StagingManager;

    invoke-direct {v1, p1}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 316
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 318
    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier;

    .line 319
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageSessionVerifier;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    .line 322
    new-instance p2, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    .line 325
    const-class p2, Lcom/android/server/SystemServiceManager;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/SystemServiceManager;

    new-instance p3, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    invoke-direct {p3, p1, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {p2, p3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method

.method public static buildNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .registers 5

    .line 1677
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10406eb

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1679
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080a78

    .line 1680
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1681
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x106001c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1683
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1684
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1685
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1686
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 8

    const/4 v0, 0x0

    .line 1646
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0x4000000

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object p3, v0

    :goto_e
    if-eqz p3, :cond_7a

    .line 1650
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_15

    goto :goto_7a

    .line 1654
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1655
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1656
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1657
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1659
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1655
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1661
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1662
    new-instance p3, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {p3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080387

    .line 1663
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 1664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x106001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1666
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1667
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1668
    invoke-virtual {p2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1669
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1670
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    .line 1651
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification not built for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstaller"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSessionCount(Landroid/util/SparseArray;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 1535
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_19

    .line 1537
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 1538
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v3

    if-ne v3, p1, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    return v2
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "vmdl"

    .line 1214
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    const-string/jumbo v4, "smdl"

    .line 1215
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    .line 1216
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :cond_37
    :goto_37
    return v2
.end method

.method private synthetic lambda$getAllSessions$2(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 1346
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getStagedSessions$1(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    .line 1326
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 291
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 292
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static synthetic lambda$registerCallback$3(II)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 1691
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_e

    .line 1693
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1694
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_e
    return-object v0
.end method

.method public static prepareExternalStageCid(Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    move-wide v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    return-void

    .line 1287
    :cond_10
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create session cid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static prepareStageDir(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1253
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1258
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1259
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_70

    .line 1265
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1266
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1267
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-static {v0, v1}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to SELinux.restorecon session dir, path: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], ctx: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_47

    const-string v0, "SUCCESS"

    goto :goto_49

    :cond_47
    const-string v0, "FAILURE"

    .line 1272
    :goto_49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstaller"

    .line 1269
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_58

    goto :goto_6f

    .line 1274
    :cond_58
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    :goto_6f
    return-void

    :catch_70
    move-exception v0

    .line 1262
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1254
    :cond_88
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tryParseSessionId(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "vmdl"

    .line 1222
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, ".tmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    .line 1225
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1227
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1223
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a temporary session directory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abandonSession(I)V
    .registers 5

    .line 1125
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_18

    .line 1127
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1130
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 1131
    monitor-exit v0

    return-void

    .line 1128
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2f
    move-exception p0

    .line 1131
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 638
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 640
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    .line 644
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 645
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 644
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 527
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 528
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smdl"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    .line 530
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final allocateSessionIdLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1175
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1176
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1177
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v2

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_23

    move v1, v2

    goto :goto_2

    .line 1182
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate session ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter p2

    .line 513
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v0

    .line 514
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 515
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 516
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 517
    :try_start_14
    monitor-exit p2

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_1f

    :catch_18
    move-exception p0

    .line 519
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 521
    :goto_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw p0
.end method

.method public final buildAppIconFile(I)Ljava/io/File;
    .registers 5

    .line 679
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildExternalStageCid(I)Ljava/lang/String;
    .registers 3

    .line 1280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "smdl"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .registers 5

    .line 1240
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_57

    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_57

    .line 1244
    :cond_c
    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1245
    sget-boolean p2, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    if-eqz p2, :cond_56

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerService;->tryParseSessionId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_56

    .line 1246
    :cond_2d
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session folder format is off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_56
    :goto_56
    return-object p0

    .line 1241
    :cond_57
    :goto_57
    iget-object p0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1242
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public final buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .registers 5

    .line 1235
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1236
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vmdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public bypassNextAllowedApexUpdateCheck(Z)V
    .registers 3

    .line 1504
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1507
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    return-void

    .line 1505
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass allowed apex update check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bypassNextStagedInstallerCheck(Z)V
    .registers 3

    .line 1496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1499
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    return-void

    .line 1497
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass staged installer check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1147
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 1151
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final checkSettingsForDirectSdInstall()Z
    .registers 3

    .line 1187
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "installToSdCardState"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSettingsForDirectSdInstall value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstaller"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 686
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 689
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p2

    move/from16 v10, p4

    .line 696
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 697
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    const-string v7, "createSession"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v11

    move/from16 v4, p4

    .line 699
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 701
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "no_install_apps"

    invoke-virtual {v2, v10, v3}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_560

    .line 705
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    .line 706
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_37

    goto :goto_3f

    .line 708
    :cond_37
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_3f
    :goto_3f
    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_61

    .line 727
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 729
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_59

    goto :goto_61

    .line 731
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_61
    :goto_61
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eqz v2, :cond_70

    .line 740
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_70

    .line 741
    iput-object v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 744
    :cond_70
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-static {v2, v5}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 747
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_89

    .line 748
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_89

    .line 749
    iget-object v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    goto :goto_8a

    :cond_89
    move-object v2, v1

    :goto_8a
    const/16 v3, 0x7d0

    const/4 v6, 0x2

    if-eq v11, v3, :cond_e3

    if-eqz v11, :cond_e3

    .line 752
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    if-eqz v7, :cond_98

    goto :goto_e3

    :cond_98
    if-eq v11, v5, :cond_9f

    .line 760
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v11, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 764
    :cond_9f
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 765
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v7, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_b4

    .line 767
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v11, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 771
    :cond_b4
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v7, v7, -0x21

    and-int/lit8 v7, v7, -0x41

    or-int/2addr v7, v6

    .line 773
    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x10000

    and-int/2addr v7, v9

    if-eqz v7, :cond_d2

    .line 774
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 775
    invoke-virtual {v7, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(Lcom/android/server/pm/Computer;I)Z

    move-result v7

    if-nez v7, :cond_d2

    .line 776
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x10001

    and-int/2addr v7, v9

    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 778
    :cond_d2
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    invoke-virtual {v7, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_ea

    .line 780
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_ea

    .line 753
    :cond_e3
    :goto_e3
    iget v1, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    move-object v1, v4

    .line 785
    :cond_ea
    :goto_ea
    sget-boolean v7, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_1b1

    if-nez v10, :cond_1b1

    const-string v7, "com.android.vending"

    .line 786
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->isSdCardAvailableAndMounted()Z

    move-result v7

    if-eqz v7, :cond_1b1

    .line 788
    iget-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v7, :cond_113

    .line 789
    invoke-interface {v8, v7, v4, v5, v12}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_113

    .line 790
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_113

    move v7, v9

    goto :goto_114

    :cond_113
    move v7, v12

    .line 794
    :goto_114
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->checkSettingsForDirectSdInstall()Z

    move-result v16

    if-eqz v16, :cond_1b1

    if-nez v7, :cond_1b1

    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-eqz v7, :cond_122

    if-ne v7, v6, :cond_1b1

    :cond_122
    const-string v7, "PackageInstaller"

    .line 795
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "App size: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-wide v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v17, 0x2

    mul-long v9, v9, v17

    invoke-virtual {v14, v9, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 799
    :try_start_147
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_1ac

    .line 801
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_178

    .line 804
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 805
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const-string v4, "PackageInstaller"

    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "modification done for package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 807
    :cond_178
    iget-wide v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v4, v9, v4

    if-lez v4, :cond_1a4

    .line 808
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    if-eqz v5, :cond_185

    goto :goto_187

    :cond_185
    const-string v5, "Application"

    :goto_187
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageInstallerService;->buildNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_1a4

    .line 810
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    .line 811
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/16 v7, 0x17

    .line 813
    invoke-virtual {v5, v1, v7, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 816
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    :cond_1a4
    :goto_1a4
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    div-long v4, v4, v17

    invoke-virtual {v14, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_1b1

    :catchall_1ac
    move-exception v0

    .line 801
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    throw v0

    .line 825
    :cond_1b1
    :goto_1b1
    iget v4, v14, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1c4

    if-eq v4, v11, :cond_1c4

    .line 827
    invoke-interface {v8, v4}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c4

    .line 828
    array-length v7, v4

    if-lez v7, :cond_1c4

    .line 830
    aget-object v4, v4, v12

    goto :goto_1c5

    :cond_1c4
    const/4 v4, 0x0

    .line 834
    :goto_1c5
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v7, :cond_1db

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v7

    if-eqz v7, :cond_1d0

    goto :goto_1db

    .line 837
    :cond_1d0
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v9, -0x100001

    and-int/2addr v7, v9

    and-int/lit16 v7, v7, -0x81

    .line 838
    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1e2

    .line 835
    :cond_1db
    :goto_1db
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x100000

    or-int/2addr v7, v9

    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 841
    :goto_1e2
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v9, v7, 0x24

    const/16 v10, 0x24

    if-eq v9, v10, :cond_1f0

    const v9, -0x80001

    and-int/2addr v7, v9

    .line 844
    iput v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 847
    :cond_1f0
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x20000

    and-int/2addr v7, v9

    if-eqz v7, :cond_1f9

    const/4 v7, 0x1

    goto :goto_1fa

    :cond_1f9
    move v7, v12

    :goto_1fa
    if-eqz v7, :cond_219

    .line 849
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v5, :cond_226

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.INSTALL_PACKAGES"

    .line 851
    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v5, :cond_211

    goto :goto_226

    .line 853
    :cond_211
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to perform APEX updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_219
    iget-boolean v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v9, :cond_226

    .line 856
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.INSTALL_PACKAGES"

    const-string v13, "PackageInstaller"

    invoke-virtual {v9, v10, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_226
    :goto_226
    if-eqz v7, :cond_260

    .line 860
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v9}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v9

    if-eqz v9, :cond_258

    .line 864
    iget-boolean v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v9, :cond_250

    .line 867
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v9

    if-nez v9, :cond_248

    iget-boolean v9, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    if-eqz v9, :cond_23f

    goto :goto_248

    .line 872
    :cond_23f
    iget v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v10, -0x400001

    and-int/2addr v9, v10

    iput v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_260

    .line 868
    :cond_248
    :goto_248
    iget v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v10, 0x400000

    or-int/2addr v9, v10

    iput v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_260

    .line 865
    :cond_250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A multi-session can\'t be set as APEX."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_260
    :goto_260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    if-eq v9, v10, :cond_2e7

    .line 879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 881
    :try_start_26e
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v15, "no_non_market_app_by_knox"

    invoke-virtual {v13, v12, v15}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2d7

    const-string v13, "PackageInstaller"

    const-string v15, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : true"

    .line 882
    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2b3

    const-string v13, "com.google.android.packageinstaller"

    .line 883
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_292

    const-string v13, "com.samsung.android.packageinstaller"

    .line 884
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b3

    :cond_292
    const-string/jumbo v1, "restriction_policy"

    .line 887
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1
    :try_end_29d
    .catchall {:try_start_26e .. :try_end_29d} :catchall_2e2

    if-eqz v1, :cond_2ab

    .line 890
    :try_start_29f
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const v2, 0x10401c9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V
    :try_end_2ab
    .catch Landroid/os/RemoteException; {:try_start_29f .. :try_end_2ab} :catch_2ab
    .catchall {:try_start_29f .. :try_end_2ab} :catchall_2e2

    .line 894
    :catch_2ab
    :cond_2ab
    :try_start_2ab
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b3
    const-string v13, "android.permission.INSTALL_PACKAGES"

    .line 895
    invoke-interface {v8, v13, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_2cc

    const-string v13, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 896
    invoke-interface {v8, v13, v11}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_2c4

    goto :goto_2cc

    .line 899
    :cond_2c4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2cc
    :goto_2cc
    if-eq v11, v3, :cond_2cf

    goto :goto_2de

    .line 903
    :cond_2cf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d7
    const-string v13, "PackageInstaller"

    const-string v15, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : false"

    .line 906
    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2de
    .catchall {:try_start_2ab .. :try_end_2de} :catchall_2e2

    .line 909
    :goto_2de
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e7

    :catchall_2e2
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    throw v0

    .line 914
    :cond_2e7
    :goto_2e7
    iget v9, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_304

    .line 915
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v9

    if-nez v9, :cond_304

    .line 916
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_2fc

    goto :goto_304

    .line 918
    :cond_2fc
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_304
    :goto_304
    iget-boolean v8, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v8, :cond_321

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v8

    if-nez v8, :cond_321

    .line 923
    iget-boolean v8, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v8, :cond_321

    .line 924
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_319

    goto :goto_321

    .line 925
    :cond_319
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_321
    :goto_321
    if-eqz v7, :cond_33c

    .line 928
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v7

    if-nez v7, :cond_33c

    .line 929
    iget-boolean v7, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v7, :cond_33c

    .line 930
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_334

    goto :goto_33c

    .line 931
    :cond_334
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit non-staged APEX install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_33c
    :goto_33c
    iput-boolean v12, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 937
    iput-boolean v12, v0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 939
    iget-boolean v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v7, :cond_406

    .line 941
    iget v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_35d

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    .line 942
    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_355

    goto :goto_35d

    .line 944
    :cond_355
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_35d
    :goto_35d
    iget-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_38b

    .line 951
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 953
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v5

    .line 954
    iget-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v8, v5, 0x2

    if-gt v7, v8, :cond_381

    iget-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 955
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v8, :cond_38b

    .line 956
    :cond_381
    iget-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    invoke-static {v7, v5, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    goto :goto_38c

    :cond_38b
    const/4 v8, 0x1

    .line 961
    :goto_38c
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v5, v8, :cond_3ac

    if-ne v5, v6, :cond_393

    goto :goto_3ac

    .line 966
    :cond_393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_3ac
    :goto_3ac
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_3c3

    .line 972
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    goto :goto_406

    .line 973
    :cond_3bb
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c3
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_3e4

    .line 977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 979
    :try_start_3cb
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v14}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7
    :try_end_3d1
    .catchall {:try_start_3cb .. :try_end_3d1} :catchall_3df

    .line 981
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_3d7

    goto :goto_406

    .line 984
    :cond_3d7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable external storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3df
    move-exception v0

    .line 981
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 982
    throw v0

    :cond_3e4
    and-int/lit16 v6, v5, 0x200

    if-eqz v6, :cond_3ed

    or-int/lit8 v5, v5, 0x10

    .line 990
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_406

    :cond_3ed
    or-int/lit8 v5, v5, 0x10

    .line 992
    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 998
    :try_start_3f5
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v14}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_3fd
    .catchall {:try_start_3f5 .. :try_end_3fd} :catchall_401

    .line 1000
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_406

    :catchall_401
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    throw v0

    .line 1007
    :cond_406
    :goto_406
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1009
    :try_start_409
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v6, v11}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v6

    .line 1010
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_438

    int-to-long v6, v6

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_421

    goto :goto_43f

    .line 1013
    :cond_421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many active sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_438
    int-to-long v6, v6

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_546

    .line 1020
    :goto_43f
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-gez v6, :cond_52f

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v15

    .line 1027
    monitor-exit v5
    :try_end_452
    .catchall {:try_start_409 .. :try_end_452} :catchall_55d

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1033
    iget-boolean v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v5, :cond_474

    .line 1034
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_469

    .line 1035
    invoke-virtual {v0, v15, v14}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v5

    move-object/from16 v33, v5

    const/16 v5, 0x3e8

    goto :goto_478

    .line 1037
    :cond_469
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v5

    const/16 v5, 0x3e8

    const/16 v33, 0x0

    goto :goto_47a

    :cond_474
    const/16 v5, 0x3e8

    const/16 v33, 0x0

    :goto_478
    const/16 v34, 0x0

    :goto_47a
    if-eq v11, v5, :cond_48c

    .line 1041
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1043
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_48c

    .line 1044
    iget v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    const v6, -0x2000001

    and-int/2addr v5, v6

    iput v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 1048
    :cond_48c
    iget-boolean v5, v14, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v5, :cond_496

    if-eq v11, v3, :cond_496

    if-eqz v11, :cond_496

    .line 1050
    iput-boolean v12, v14, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 1053
    :cond_496
    iget v3, v14, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v5, p3

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v12

    .line 1056
    new-instance v13, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v13

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 1057
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, ""

    move-object/from16 v5, p0

    move v9, v15

    move/from16 v10, p4

    move-object/from16 v35, v13

    move-object/from16 v13, p1

    move/from16 v36, v15

    move-wide/from16 v14, v18

    move-object/from16 v18, v33

    move-object/from16 v19, v34

    invoke-direct/range {v1 .. v32}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    .line 1062
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1063
    :try_start_4e4
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1064
    monitor-exit v1
    :try_end_4ee
    .catchall {:try_start_4e4 .. :try_end_4ee} :catchall_52c

    .line 1065
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V

    .line 1067
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-$$Nest$mnotifySessionCreated(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 1069
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 1070
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_52b

    const-string v0, "PackageInstaller"

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " staged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52b
    return v4

    :catchall_52c
    move-exception v0

    .line 1064
    :try_start_52d
    monitor-exit v1
    :try_end_52e
    .catchall {:try_start_52d .. :try_end_52e} :catchall_52c

    throw v0

    .line 1022
    :cond_52f
    :try_start_52f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many historical sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_546
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many active sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_55d
    move-exception v0

    .line 1027
    monitor-exit v5
    :try_end_55f
    .catchall {:try_start_52f .. :try_end_55f} :catchall_55d

    throw v0

    .line 702
    :cond_560
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12

    .line 1860
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1861
    :try_start_3
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1862
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1863
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1865
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_4a

    .line 1867
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 1869
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1870
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    goto :goto_34

    :cond_33
    move-object v8, v7

    :goto_34
    if-nez v8, :cond_3a

    .line 1874
    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_47

    .line 1879
    :cond_3a
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 1880
    invoke-virtual {v3, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_47

    .line 1884
    :cond_44
    invoke-virtual {v1, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_4a
    const-string v4, "Active"

    .line 1887
    invoke-virtual {v1, v4, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1889
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->containsSession()Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "Orphaned"

    .line 1892
    invoke-virtual {v2, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_5a
    const-string v1, "Finalized"

    .line 1895
    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v1, "Historical install sessions:"

    .line 1897
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1899
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_6d
    if-ge v5, v1, :cond_80

    .line 1901
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 1904
    :cond_80
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1905
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Legacy install sessions:"

    .line 1907
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1909
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1911
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1912
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_a4

    .line 1913
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :catchall_a4
    move-exception p0

    .line 1912
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public final expireSessionsLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 582
    iput v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 585
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_bb

    .line 587
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 588
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto/16 :goto_b7

    .line 592
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v5, v7

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 595
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v9

    const-string v10, "PackageInstaller"

    const/4 v11, 0x1

    if-eqz v9, :cond_46

    .line 596
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v5

    if-eqz v5, :cond_9c

    const-wide/32 v5, 0x6c258c00

    cmp-long v5, v7, v5

    if-gez v5, :cond_63

    goto :goto_9c

    :cond_46
    const-wide/32 v7, 0xf731400

    cmp-long v7, v5, v7

    if-ltz v7, :cond_65

    .line 599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abandoning old session created at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    move v11, v2

    goto :goto_9c

    .line 603
    :cond_65
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    if-eqz v7, :cond_9c

    .line 604
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v8, "com.sec.android.easyMover"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 605
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v7

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/pm/PackageInstallerService;->isValidSmartSwitchSession(IJ)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abandoning smartswitch session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_9c
    :goto_9c
    if-nez v11, :cond_b7

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove old session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_b7
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :cond_bb
    return-void
.end method

.method public freeStageDirs(Ljava/lang/String;)V
    .registers 11

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 481
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    .line 482
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7d

    .line 483
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 484
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_7a

    .line 488
    :cond_25
    iget-wide v5, v4, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x1b77400

    cmp-long v5, v5, v7

    if-ltz v5, :cond_75

    .line 492
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_38

    move-object v5, v4

    goto :goto_44

    .line 493
    :cond_38
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    :goto_44
    if-nez v5, :cond_6b

    const-string v5, "PackageInstaller"

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freeStageDirs: found an orphaned session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " parent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 497
    :cond_6b
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 498
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    goto :goto_7a

    .line 502
    :cond_75
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 505
    :cond_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_c .. :try_end_7e} :catchall_82

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void

    :catchall_82
    move-exception p0

    .line 505
    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    const-string v5, "getAllSessions"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move v1, v6

    move v2, p1

    .line 1334
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1338
    :goto_1e
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 1339
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1340
    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v5, p1, :cond_4b

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1341
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1342
    :cond_44
    invoke-virtual {v4, v2, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1345
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_5d

    .line 1346
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v7, v6}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1347
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_5d
    move-exception p0

    .line 1345
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v6, "getMySessions"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, v0

    move v3, p2

    .line 1354
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1359
    :goto_22
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 1360
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    const/16 v5, 0x3e8

    .line 1363
    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 1364
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, p2, :cond_55

    .line 1365
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-nez v6, :cond_55

    .line 1366
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1367
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1370
    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_22 .. :try_end_59} :catchall_5f

    .line 1371
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_5f
    move-exception p0

    .line 1370
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    .line 1484
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1485
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1486
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6

    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1304
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1305
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x0

    if-eqz p1, :cond_24

    .line 1306
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_24

    :cond_1e
    const/4 v3, 0x1

    .line 1307
    invoke-virtual {p1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    goto :goto_25

    :cond_24
    move-object p1, v2

    .line 1309
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_35

    .line 1310
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    move-object v2, p1

    :goto_34
    return-object v2

    :catchall_35
    move-exception p0

    .line 1309
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;
    .registers 1

    .line 1491
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    return-object p0
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 1318
    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 1319
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1320
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_31

    .line 1321
    invoke-virtual {v5, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1324
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_49

    .line 1325
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1326
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1327
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_49
    move-exception p0

    .line 1324
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 419
    sget-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p0

    .line 422
    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-object p0
.end method

.method public getStagingManager()Lcom/android/server/pm/StagingManager;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method public final getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1231
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1445
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    .line 1446
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    return-void
.end method

.method public final isCalledBySystemOrShell(I)Z
    .registers 2

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_d

    if-eqz p1, :cond_d

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_b

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

.method public final isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3

    .line 1546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_11

    .line 1550
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    if-ne p0, p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isFromApprovedInstaller(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 2053
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(IIZ)Z

    move-result p0

    return p0
.end method

.method public isFromApprovedInstaller(IIZ)Z
    .registers 4

    .line 2057
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z

    move-result p0

    return p0
.end method

.method public isFromApprovedUnInstaller(II)Z
    .registers 3

    .line 2061
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToUninstall(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public final isSdCardAvailableAndMounted()Z
    .registers 6

    .line 1193
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 1195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1197
    :try_start_e
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_40

    .line 1199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    move v1, v0

    .line 1202
    :goto_19
    array-length v2, p0

    if-ge v1, v2, :cond_3f

    .line 1203
    aget-object v2, p0, v1

    .line 1204
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    if-ne v2, v3, :cond_3c

    const/4 p0, 0x1

    return p0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3f
    return v0

    :catchall_40
    move-exception p0

    .line 1199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    throw p0
.end method

.method public final isStagedInstallerAllowed(Ljava/lang/String;)Z
    .registers 2

    .line 1082
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getWhitelistedStagedInstallers()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isValidSmartSwitchSession(IJ)Z
    .registers 8

    .line 2068
    iget v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gt v0, v2, :cond_3f

    .line 2069
    iput v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    .line 2071
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_1a

    :cond_12
    const-string v2, "com.sec.android.easyMover"

    const/16 v3, 0x80

    .line 2072
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_20

    .line 2073
    :cond_1e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_20
    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_3f

    :catch_23
    move-exception v0

    .line 2075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidSmartSwitchSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageInstaller"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_3f
    :goto_3f
    iget p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    if-lez p0, :cond_4d

    if-ne p0, p1, :cond_4d

    const-wide/32 p0, 0x1499700

    cmp-long p0, p2, p0

    if-gez p0, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public final matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z
    .registers 6

    .line 2043
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    .line 2045
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ne p0, p2, :cond_10

    goto :goto_11

    :cond_10
    move p1, v0

    :goto_11
    return p1

    .line 2047
    :cond_12
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    if-ne p2, p0, :cond_19

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    return p1
.end method

.method public okToSendBroadcasts()Z
    .registers 1

    .line 334
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method public final onBroadcastReady()V
    .registers 2

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return-void
.end method

.method public onInstallerPackageDeleted(II)V
    .registers 7

    .line 2024
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2025
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 2026
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 2027
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_3f

    .line 2031
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_2e

    .line 2032
    :cond_22
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    :goto_2e
    if-eqz v2, :cond_3f

    .line 2033
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2034
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 2035
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2038
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 440
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 441
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onSecureContainersAvailable()V
    .registers 9

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 447
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 448
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_1f

    aget-object v6, v2, v5

    .line 449
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 450
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 455
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_43

    .line 456
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 457
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 459
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 461
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v5}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 467
    :cond_43
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "PackageInstaller"

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting orphan container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_47

    .line 471
    :cond_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 2

    .line 1137
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 1139
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1161
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1162
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1165
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 1166
    monitor-exit v0

    return-object v1

    .line 1163
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2d
    move-exception p0

    .line 1167
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final readSessionsLocked()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 535
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    const-string v1, "PackageInstaller"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "readSessionsLocked()"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 541
    :try_start_12
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 542
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v11

    .line 545
    :cond_1c
    :goto_1c
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_6e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 547
    invoke-interface {v11}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "session"

    .line 548
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_31} :catch_6e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_31} :catch_63
    .catchall {:try_start_12 .. :try_end_31} :catchall_61

    if-eqz v2, :cond_1c

    .line 551
    :try_start_33
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 552
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    move-object v2, v11

    move-object v9, p0

    .line 551
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_5a
    .catchall {:try_start_33 .. :try_end_4b} :catchall_61

    .line 558
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v2, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1c

    :catch_5a
    move-exception v2

    const-string v3, "Could not read session"

    .line 555
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_60} :catch_6e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_60} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_60} :catch_63
    .catchall {:try_start_4b .. :try_end_60} :catchall_61

    goto :goto_1c

    :catchall_61
    move-exception p0

    goto :goto_6a

    :catch_63
    move-exception v2

    :try_start_64
    const-string v3, "Failed reading install sessions"

    .line 566
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_61

    goto :goto_6e

    .line 568
    :goto_6a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 569
    throw p0

    .line 568
    :catch_6e
    :cond_6e
    :goto_6e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    .line 571
    :goto_72
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 572
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 573
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->onAfterSessionRead(Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_8a
    return-void
.end method

.method public final reconcileStagesLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const/4 v0, 0x0

    .line 410
    :goto_5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 411
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 412
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 414
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 10

    .line 1464
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "registerCallback"

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1467
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 5

    .line 1474
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;)V

    return-void
.end method

.method public final removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 628
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 629
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 630
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_12

    :cond_29
    return-void
.end method

.method public final removeStagingDirs(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 428
    new-instance v0, Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 430
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "PackageInstaller"

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting orphan stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_32
    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 434
    monitor-exit v2

    goto :goto_b

    :catchall_37
    move-exception p0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    return-void
.end method

.method public restoreAndApplyStagedSessionIfNeeded()V
    .registers 8

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 379
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 380
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 381
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_79

    .line 384
    :cond_20
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 385
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v4

    if-nez v4, :cond_64

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 386
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    if-nez v4, :cond_64

    const/16 v4, -0x80

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An orphan staged session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is found, parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_79

    .line 392
    :cond_64
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 393
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v4

    if-nez v4, :cond_79

    .line 396
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 399
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_9 .. :try_end_7d} :catchall_89

    .line 403
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/StagingManager;->restoreSessions(Ljava/util/List;Z)V

    return-void

    :catchall_89
    move-exception p0

    .line 399
    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public final sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 8

    .line 2001
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2004
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.pm.extra.SESSION"

    .line 2005
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 2006
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2007
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2009
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.samsungapps"

    .line 2010
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2011
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android"

    .line 2013
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2014
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_47
    return-void
.end method

.method public setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 3

    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1518
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    return-void

    .line 1516
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to unlimite silent updates"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPermissionsResult(IZ)V
    .registers 6

    .line 1452
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1455
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_19

    .line 1457
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 1459
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setSilentUpdatesThrottleTime(J)V
    .registers 4

    .line 1526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1529
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SilentUpdatePolicy;->setSilentUpdatesThrottleTime(J)V

    return-void

    .line 1527
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to set silent updates throttle time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUnknownSourceConfirmResult(IZ)V
    .registers 6

    .line 2085
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2088
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_19

    .line 2090
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setUnknownSourceConfirmResult(Z)V

    .line 2092
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final shouldFilterSession(Lcom/android/server/pm/Computer;II)Z
    .registers 5

    .line 1555
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_8

    return p3

    .line 1559
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq p2, v0, :cond_19

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p3, 0x1

    :cond_19
    return p3
.end method

.method public final shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p3, :cond_4

    return p0

    .line 1296
    :cond_4
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    move-result v0

    if-eq p2, v0, :cond_15

    .line 1297
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p0, 0x1

    :cond_15
    return p0
.end method

.method public systemReady()V
    .registers 7

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->systemReady()V

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 342
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->expireSessionsLocked()V

    .line 345
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 347
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    .line 351
    :goto_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 352
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 353
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 357
    :cond_46
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const-string v3, "PackageInstaller"

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting orphan icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4a

    .line 364
    :cond_70
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->runNow()Z

    .line 366
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_14 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 15

    .line 1377
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "uninstall"

    move-object v1, v0

    move v2, v7

    move v3, p5

    .line 1379
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v1, 0x7d0

    if-eq v7, v1, :cond_20

    if-eqz v7, :cond_20

    .line 1381
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v7, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1386
    :cond_20
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1387
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v1, :cond_32

    .line 1389
    invoke-virtual {v1, p2, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 1391
    :goto_33
    new-instance v8, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1392
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v8

    move-object v4, p4

    move v6, v1

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 1394
    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {p4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_56

    .line 1397
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_b4

    :cond_56
    if-eqz v1, :cond_7b

    .line 1401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1403
    :try_start_5c
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p4

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_76

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0x71

    .line 1408
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 1409
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 1410
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    goto :goto_b4

    :catchall_76
    move-exception p0

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1406
    throw p0

    :cond_7b
    const-wide/16 p3, 0x0

    .line 1412
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 1413
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1c

    const/4 p4, 0x0

    if-lt p2, p3, :cond_8f

    .line 1414
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_8f
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "package"

    invoke-static {p2, p1, p4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1421
    invoke-virtual {v8}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 1422
    invoke-virtual {v8, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    :goto_b4
    return-void
.end method

.method public uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 19

    move-object v0, p0

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1430
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "uninstall"

    move v2, v7

    move/from16 v3, p4

    .line 1432
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/16 v1, 0x7d0

    if-eq v7, v1, :cond_2b

    if-eqz v7, :cond_2b

    .line 1434
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v7, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1437
    :cond_2b
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1438
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, v1

    move-object/from16 v10, p3

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 1439
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    move-object v2, p1

    move/from16 v3, p4

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 2

    .line 1479
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 7

    .line 1087
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_45

    .line 1089
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_45

    if-eqz p2, :cond_36

    .line 1095
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 1097
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    .line 1098
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_31

    .line 1099
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v3, :cond_36

    :cond_31
    const/4 v2, 0x1

    .line 1100
    invoke-static {p2, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1104
    :cond_36
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const-wide/16 v2, -0x1

    .line 1105
    iput-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 1107
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1108
    monitor-exit v0

    return-void

    .line 1090
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller has no access to session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5c
    move-exception p0

    .line 1108
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .registers 6

    .line 1113
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_1e

    .line 1115
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1118
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 1119
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1120
    monitor-exit v0

    return-void

    .line 1116
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller has no access to session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_35
    move-exception p0

    .line 1120
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final writeSessionsLocked()Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    const-string/jumbo v0, "sessions"

    .line 650
    sget-boolean v1, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v1, :cond_f

    const-string v1, "PackageInstaller"

    const-string/jumbo v2, "writeSessionsLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 654
    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_4a

    .line 656
    :try_start_17
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 657
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 658
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_2a
    if-ge v6, v5, :cond_3c

    .line 661
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 662
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7, v4, v8}, Lcom/android/server/pm/PackageInstallerSession;->write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 664
    :cond_3c
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 667
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_47} :catch_49

    const/4 p0, 0x1

    return p0

    :catch_49
    move-object v2, v3

    :catch_4a
    if-eqz v2, :cond_51

    .line 671
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_51
    return v1
.end method
