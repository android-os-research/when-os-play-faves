.class public final Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_MAX_USER_POOL_THREADS:I = 0x3

.field public static final LEVEL_ISRB_BOOT:I = 0x7

.field public static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field public static final TAG:Ljava/lang/String;

.field public static final USER_COMPLETED_EVENT:Ljava/lang/String; = "CompletedEvent"

.field public static final USER_POOL_SHUTDOWN_TIMEOUT_SECONDS:J = 0x1eL

.field public static final USER_STARTING:Ljava/lang/String; = "Start"

.field public static final USER_STOPPED:Ljava/lang/String; = "Cleanup"

.field public static final USER_STOPPING:Ljava/lang/String; = "Stop"

.field public static final USER_SWITCHING:Ljava/lang/String; = "Switch"

.field public static final USER_UNLOCKED:Ljava/lang/String; = "Unlocked"

.field public static final USER_UNLOCKING:Ljava/lang/String; = "Unlocking"

.field public static volatile sOtherServicesStartIndex:I

.field public static sSystemDir:Ljava/io/File;

.field public static sUseLifecycleThreadPool:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentPhase:I

.field public mCurrentUser:Lcom/android/server/SystemService$TargetUser;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTargetUsers"
        }
    .end annotation
.end field

.field public final mNumUserPoolThreads:I

.field public mRuntimeRestarted:Z

.field public mRuntimeStartElapsedTime:J

.field public mRuntimeStartUptime:J

.field public mSafeMode:Z

.field public mServiceClassnames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTargetUsers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/SystemService$TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$7GU3dxP0kSD4l_HH2wE6TTvYqNw(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/SystemServiceManager;->lambda$getOnUserCompletedEventRunnable$1(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-by13SwzsRU41sZjeb-2nE9GJ4(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SystemServiceManager;->lambda$getOnUserStartingRunnable$0(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 90
    sput-boolean v0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 135
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 137
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 139
    sget-boolean p1, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    if-eqz p1, :cond_29

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    sput-boolean p1, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    .line 141
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    return-void
.end method

.method public static ensureSystemDir()Ljava/io/File;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    if-nez v0, :cond_15

    .line 764
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 765
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 766
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 768
    :cond_15
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    return-object v0
.end method

.method public static isJarInTestApex(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 173
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3e

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    .line 175
    invoke-interface {p0, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p0}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-virtual {v2, p0, v1}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 181
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_3e

    move v0, v1

    :cond_3e
    return v0
.end method

.method private synthetic lambda$getOnUserCompletedEventRunnable$1(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V
    .registers 11

    .line 672
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 673
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssm.onCompletedEventUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 677
    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 678
    invoke-virtual {p5, p2, p3}, Lcom/android/server/SystemService;->onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCompletedEventUser-"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v4, p5, p1}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4d} :catch_53
    .catchall {:try_start_2c .. :try_end_4d} :catchall_51

    .line 685
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_51
    move-exception p0

    goto :goto_5a

    :catch_53
    move-exception p1

    :try_start_54
    const-string p3, "CompletedEvent"

    .line 682
    invoke-virtual {p0, p3, p2, p4, p1}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 683
    throw p1
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_51

    .line 685
    :goto_5a
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 686
    throw p0
.end method

.method private synthetic lambda$getOnUserStartingRunnable$0(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 10

    .line 649
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 650
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 651
    invoke-virtual {p3}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ssm.onStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 654
    :try_start_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 655
    invoke-virtual {p2, p3}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, p2, v1}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4f} :catch_52
    .catchall {:try_start_2e .. :try_end_4f} :catchall_50

    goto :goto_62

    :catchall_50
    move-exception p0

    goto :goto_66

    :catch_52
    move-exception p2

    :try_start_53
    const-string v1, "Start"

    .line 659
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 660
    sget-object p0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "Disabling thread pool - please capture a bug report."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 661
    sput-boolean p0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_50

    .line 663
    :goto_62
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_66
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 664
    throw p0
.end method

.method public static loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from class loader "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string p2, "Current phase: %d\n"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 778
    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 779
    iget-object p2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter p2

    .line 780
    :try_start_14
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v1, :cond_26

    const-string v1, "Current user: "

    .line 781
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v1, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    .line 783
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b

    :cond_26
    const-string v1, "Current user not set!"

    .line 785
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    :goto_2b
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_5e

    const-string v2, "%d target users: "

    new-array v4, v0, [Ljava/lang/Object;

    .line 790
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v2, v3

    :goto_41
    if-ge v2, v1, :cond_5a

    .line 792
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v4, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_57

    const-string v4, ", "

    .line 793
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 795
    :cond_5a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_63

    :cond_5e
    const-string v1, "No target users"

    .line 797
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    :goto_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_9c

    .line 800
    iget-object p2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const-string v1, "  "

    if-lez p2, :cond_96

    const-string v2, "%d started services:\n"

    new-array v0, v0, [Ljava/lang/Object;

    .line 803
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_7b
    if-ge v3, p2, :cond_9b

    .line 805
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 806
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_96
    const-string p0, "No started services"

    .line 809
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9b
    return-void

    :catchall_9c
    move-exception p0

    .line 799
    :try_start_9d
    monitor-exit p2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 1

    .line 773
    const-class p0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOnUserCompletedEventRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)Ljava/lang/Runnable;
    .registers 14

    .line 671
    new-instance v7, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V

    return-object v7
.end method

.method public final getOnUserStartingRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)Ljava/lang/Runnable;
    .registers 5

    .line 648
    new-instance v0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V

    return-object v0
.end method

.method public getRuntimeStartElapsedTime()J
    .registers 3

    .line 721
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    return-wide v0
.end method

.method public getRuntimeStartUptime()J
    .registers 3

    .line 728
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-wide v0
.end method

.method public final getTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemService$TargetUser;

    .line 393
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_26

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 394
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TargetUser for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-object p0

    :catchall_26
    move-exception p0

    .line 393
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public isBootCompleted()Z
    .registers 2

    .line 367
    iget p0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isRuntimeRestarted()Z
    .registers 1

    .line 714
    iget-boolean p0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return p0
.end method

.method public isSafeMode()Z
    .registers 1

    .line 707
    iget-boolean p0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return p0
.end method

.method public final logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    .line 692
    sget-object p0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemService failure: Failure reporting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to service "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final newTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .registers 5

    .line 399
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 400
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UserInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 401
    new-instance p1, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {p1, p0}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    return-object p1
.end method

.method public final onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 509
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    return-void
.end method

.method public final onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .registers 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 515
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v12

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ssm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "User-"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 518
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_5b

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :cond_5b
    const-string v2, ""

    :goto_5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v7, v12, v9}, Lcom/android/server/SystemServiceManager;->useThreadPool(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_74

    .line 523
    iget v0, v7, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    move-object v15, v0

    .line 525
    iget-object v0, v7, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_80
    const-string v1, "CompletedEvent"

    if-ge v5, v6, :cond_238

    .line 527
    iget-object v0, v7, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/SystemService;

    .line 528
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {v4, v11}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    if-nez v0, :cond_a1

    if-eqz v10, :cond_a1

    .line 534
    invoke-virtual {v4, v10}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    :cond_a1
    if-nez v0, :cond_cf

    .line 543
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    goto/16 :goto_230

    :cond_cf
    if-eqz v14, :cond_da

    .line 548
    invoke-virtual {v7, v9, v5}, Lcom/android/server/SystemServiceManager;->useThreadPoolForService(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_da

    const/16 v17, 0x1

    goto :goto_dc

    :cond_da
    move/from16 v17, v16

    :goto_dc
    if-nez v17, :cond_101

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ssm.on"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 552
    :cond_101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const/4 v0, -0x1

    .line 554
    :try_start_106
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10a} :catch_1fe

    sparse-switch v2, :sswitch_data_282

    goto :goto_15e

    :sswitch_10e
    :try_start_10e
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x6

    goto :goto_15e

    :sswitch_116
    const-string v1, "Start"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x1

    goto :goto_15e

    :sswitch_120
    const-string v1, "Stop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x4

    goto :goto_15e

    :sswitch_12a
    const-string v1, "Unlocked"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x3

    goto :goto_15e

    :sswitch_134
    const-string v1, "Unlocking"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x2

    goto :goto_15e

    :sswitch_13e
    const-string v1, "Cleanup"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v0, 0x5

    goto :goto_15e

    :sswitch_148
    const-string v1, "Switch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_14e} :catch_153

    if-eqz v1, :cond_15e

    move/from16 v0, v16

    goto :goto_15e

    :catch_153
    move-exception v0

    move-object v1, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    goto/16 :goto_207

    :cond_15e
    :goto_15e
    packed-switch v0, :pswitch_data_2a0

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 582
    :try_start_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1e9

    :pswitch_16e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object v3, v4

    move/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v18

    move/from16 v22, v5

    move-object/from16 v5, p4

    move/from16 v23, v6

    move-object/from16 v6, p5

    .line 578
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SystemServiceManager;->getOnUserCompletedEventRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_20a

    :pswitch_18b
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 575
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    goto/16 :goto_20a

    :pswitch_199
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 572
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    goto/16 :goto_20a

    :pswitch_1a7
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 569
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_20a

    :pswitch_1b4
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 566
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_20a

    :pswitch_1c1
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    if-eqz v17, :cond_1d4

    .line 560
    invoke-virtual {v7, v8, v14, v11}, Lcom/android/server/SystemServiceManager;->getOnUserStartingRunnable(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_20a

    .line 562
    :cond_1d4
    invoke-virtual {v14, v11}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_20a

    :pswitch_1d8
    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    .line 556
    invoke-virtual {v14, v10, v11}, Lcom/android/server/SystemService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_20a

    :catch_1e5
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_207

    .line 582
    :goto_1e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " what?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1fe} :catch_1e5

    :catch_1fe
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v21, v14

    move-object v14, v4

    move-object v1, v3

    .line 585
    :goto_207
    invoke-virtual {v7, v9, v11, v1, v0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_20a
    if-nez v17, :cond_230

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v14, v2}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_230
    :goto_230
    add-int/lit8 v5, v22, 0x1

    move/from16 v14, v21

    move/from16 v6, v23

    goto/16 :goto_80

    :cond_238
    move/from16 v21, v14

    if-eqz v21, :cond_27d

    .line 595
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v2, 0x1e

    .line 597
    :try_start_241
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v16
    :try_end_247
    .catch Ljava/lang/InterruptedException; {:try_start_241 .. :try_end_247} :catch_248

    goto :goto_274

    :catch_248
    move-exception v0

    .line 600
    sget-object v2, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User lifecycle thread pool was interrupted while awaiting completion of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_274

    const-string v0, "Couldn\'t terminate, disabling thread pool. Please capture a bug report."

    .line 603
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sput-boolean v16, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    :cond_274
    :goto_274
    if-nez v16, :cond_27d

    .line 609
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "User lifecycle thread pool was not terminated."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_27d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    nop

    :sswitch_data_282
    .sparse-switch
        -0x6b9f5cac -> :sswitch_148
        -0x69b6117c -> :sswitch_13e
        -0xe559e02 -> :sswitch_134
        -0x8b870fd -> :sswitch_12a
        0x277c22 -> :sswitch_120
        0x4c7d442 -> :sswitch_116
        0x200e8f2f -> :sswitch_10e
    .end sparse-switch

    :pswitch_data_2a0
    .packed-switch 0x0
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_1a7
        :pswitch_199
        :pswitch_18b
        :pswitch_16e
    .end packed-switch
.end method

.method public final onUser(Ljava/lang/String;I)V
    .registers 5

    .line 503
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object p2

    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserCompletedEvent(II)V
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 491
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7588

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez p2, :cond_19

    return-void

    .line 495
    :cond_19
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v3

    const/4 v5, 0x0

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v6

    new-instance v7, Lcom/android/server/SystemService$UserCompletedEventType;

    invoke-direct {v7, p2}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    const-string v4, "CompletedEvent"

    move-object v2, p0

    .line 495
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .registers 6

    const/16 v0, 0x7582

    .line 408
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 410
    invoke-virtual {p0, p2}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 412
    :try_start_c
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    const-string p2, "Start"

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void

    :catchall_19
    move-exception p0

    .line 413
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onUserStopped(I)V
    .registers 3

    const/16 v0, 0x7587

    .line 473
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Cleanup"

    .line 474
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 477
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 478
    :try_start_d
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 479
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onUserStopping(I)V
    .registers 3

    const/16 v0, 0x7586

    .line 465
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Stop"

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserSwitching(II)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7583

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 441
    :try_start_19
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-nez v1, :cond_22

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object p1

    goto :goto_5b

    .line 447
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    if-eq p1, v1, :cond_59

    .line 448
    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mCurrentUser is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", it should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_59
    iget-object p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 453
    :goto_5b
    invoke-virtual {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 457
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_19 .. :try_end_62} :catchall_6c

    .line 458
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "Switch"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void

    :catchall_6c
    move-exception p0

    .line 457
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public onUserUnlocked(I)V
    .registers 3

    const/16 v0, 0x7585

    .line 430
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Unlocked"

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserUnlocking(I)V
    .registers 3

    const/16 v0, 0x7584

    .line 422
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Unlocking"

    .line 423
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public preSystemReady()V
    .registers 2

    .line 386
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public sealStartedServices()V
    .registers 2

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 306
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 2

    .line 698
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return-void
.end method

.method public setStartInfo(ZJJ)V
    .registers 6

    .line 733
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 734
    iput-wide p2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 735
    iput-wide p4, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-void
.end method

.method public startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .registers 14

    const-string v0, "OnBootPhase_"

    .line 317
    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-le p2, v1, :cond_110

    .line 320
    iput p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 322
    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting phase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_3a
    if-ge v3, v1, :cond_f4

    .line 327
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/server/SystemService;

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v6, "sys.isrb.wificrash"

    .line 331
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Wifi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_95

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string/jumbo v9, "onBootPhase"

    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    .line 333
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_94
    .catchall {:try_start_20 .. :try_end_94} :catchall_10b

    goto :goto_aa

    .line 338
    :cond_95
    :try_start_95
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v8, v6}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_ad
    .catchall {:try_start_95 .. :try_end_9a} :catchall_10b

    .line 349
    :try_start_9a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string/jumbo v9, "onBootPhase"

    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    .line 350
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :catch_ad
    move-exception p2

    const-string/jumbo v0, "persist.sys.rescue_level"

    .line 340
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_cb

    .line 341
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBootPhase isrb setname "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 344
    :cond_cb
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to boot service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": onBootPhase threw an exception during phase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f4
    .catchall {:try_start_9a .. :try_end_f4} :catchall_10b

    .line 353
    :cond_f4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_10a

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    sub-long/2addr v0, v2

    const-string p0, "TotalBootTime"

    .line 358
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    .line 359
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V

    :cond_10a
    return-void

    :catchall_10b
    move-exception p0

    .line 353
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 354
    throw p0

    .line 318
    :cond_110
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Next phase must be larger than previous"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, ": service must have a public constructor with a Context argument"

    .line 216
    const-class v1, Lcom/android/server/SystemService;

    const-string v2, "Failed to create service "

    const-string/jumbo v3, "startService isrb setname"

    const-string/jumbo v4, "persist.sys.rescue_level"

    const-wide/32 v5, 0x80000

    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 217
    sget-object v8, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StartService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13b

    const/4 v1, 0x0

    .line 226
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_7d

    const-string/jumbo v9, "sys.isrb.crashservice"

    const-string v11, "ISRB"

    .line 227
    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-static {v7}, Lcom/samsung/isrb/IsrbHooks;->canSkip(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startService isrb return :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_78
    .catchall {:try_start_f .. :try_end_78} :catchall_15e

    const/4 p0, 0x0

    .line 272
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_7d
    const/4 v8, 0x1

    :try_start_7e
    new-array v9, v8, [Ljava/lang/Class;

    .line 237
    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v1

    invoke-virtual {p1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v8, v8, [Ljava/lang/Object;

    .line 238
    iget-object v9, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    aput-object v9, v8, v1

    invoke-virtual {p1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SystemService;
    :try_end_94
    .catch Ljava/lang/InstantiationException; {:try_start_7e .. :try_end_94} :catch_112
    .catch Ljava/lang/IllegalAccessException; {:try_start_7e .. :try_end_94} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7e .. :try_end_94} :catch_c4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7e .. :try_end_94} :catch_9b
    .catchall {:try_start_7e .. :try_end_94} :catchall_15e

    .line 269
    :try_start_94
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_15e

    .line 272
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    :catch_9b
    move-exception p0

    .line 261
    :try_start_9c
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v10, :cond_aa

    .line 262
    sget-object p1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v7}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 265
    :cond_aa
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service constructor threw an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_c4
    move-exception p0

    .line 254
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v10, :cond_d3

    .line 255
    sget-object p1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v7}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 258
    :cond_d3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_eb
    move-exception p0

    .line 247
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v10, :cond_fa

    .line 248
    sget-object p1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {v7}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 251
    :cond_fa
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_112
    move-exception p0

    .line 240
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v10, :cond_121

    .line 241
    sget-object p1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {v7}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 244
    :cond_121
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service could not be instantiated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 222
    :cond_13b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": service must extend "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_15e
    .catchall {:try_start_9c .. :try_end_15e} :catchall_15e

    :catchall_15e
    move-exception p0

    .line 272
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 273
    throw p0
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 3

    .line 152
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 151
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object p0

    return-object p0
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .registers 6

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 280
    sget-object p0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting an already started service "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 283
    :cond_27
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 291
    :try_start_35
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_38} :catch_44

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string/jumbo v0, "onStart"

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    return-void

    :catch_44
    move-exception p0

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.rescue_level"

    .line 293
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_63

    .line 294
    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService isrb setname"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 297
    :cond_63
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": onStart threw an exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 5

    .line 164
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/SystemServiceManager;->isJarInTestApex(Ljava/lang/String;)Z

    move-result v1

    .line 163
    invoke-static {p2, v0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object p2

    .line 165
    invoke-static {p1, p2}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object p0

    return-object p0
.end method

.method public updateOtherServicesStartIndex()V
    .registers 2

    .line 377
    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 378
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    :cond_e
    return-void
.end method

.method public final useThreadPool(ILjava/lang/String;)Z
    .registers 5

    .line 622
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p0, "Start"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_17

    const-string p0, "CompletedEvent"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    return v0

    :cond_16
    return v1

    .line 626
    :cond_17
    sget-boolean p0, Lcom/android/server/SystemServiceManager;->sUseLifecycleThreadPool:Z

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    move v0, v1

    :cond_1e
    return v0
.end method

.method public final useThreadPoolForService(Ljava/lang/String;I)Z
    .registers 5

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "Start"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_17

    const-string p0, "CompletedEvent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    return v0

    :cond_16
    return v1

    .line 638
    :cond_17
    sget p0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    if-lt p2, p0, :cond_1c

    move v0, v1

    :cond_1c
    return v0
.end method

.method public final warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 751
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    return-void
.end method

.method public final warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V
    .registers 8

    const-wide/16 v0, 0x32

    cmp-long p0, p1, v0

    if-lez p0, :cond_8b

    .line 740
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 741
    sget-object p3, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_8b

    const-wide/16 v0, 0xc8

    cmp-long p4, v0, p1

    if-gez p4, :cond_8b

    .line 744
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@Boot_SystemServer: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms : ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@Boot_EBS:   Took "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms by \'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' ("

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return-void
.end method
