.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$InstallerException;,
        Lcom/android/server/pm/Installer$AsyncDexopt;,
        Lcom/android/server/pm/Installer$Batch;
    }
.end annotation


# static fields
.field public static final CONNECT_RETRY_DELAY_MS:J = 0x3e8L

.field public static final CONNECT_WAIT_MS:J = 0x2710L

.field public static final DEXOPT_BOOTCOMPLETE:I = 0x8

.field public static final DEXOPT_DEBUGGABLE:I = 0x4

.field public static final DEXOPT_ENABLE_HIDDEN_API_CHECKS:I = 0x400

.field public static final DEXOPT_FORCE:I = 0x40

.field public static final DEXOPT_FOR_RESTORE:I = 0x2000

.field public static final DEXOPT_GENERATE_APP_IMAGE:I = 0x1000

.field public static final DEXOPT_GENERATE_COMPACT_DEX:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x10

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SECONDARY_DEX:I = 0x20

.field public static final DEXOPT_STORAGE_CE:I = 0x80

.field public static final DEXOPT_STORAGE_DE:I = 0x100

.field public static final FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES:I = 0x20000

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x10

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x20

.field public static final FLAG_FORCE:I = 0x2000

.field public static final FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES:I = 0x800

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x400

.field public static final FLAG_FREE_CACHE_V2:I = 0x100

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FLAG_STORAGE_SDK:I = 0x8

.field public static final FLAG_USE_QUOTA:I = 0x1000

.field public static final LOW_DEBUG:Z

.field public static final ODEX_IS_PRIVATE:I = 0x2

.field public static final ODEX_IS_PUBLIC:I = 0x1

.field public static final ODEX_NOT_FOUND:I = 0x0

.field public static final PROFILE_ANALYSIS_DONT_OPTIMIZE_EMPTY_PROFILES:I = 0x3

.field public static final PROFILE_ANALYSIS_DONT_OPTIMIZE_SMALL_DELTA:I = 0x2

.field public static final PROFILE_ANALYSIS_OPTIMIZE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field public final ASYNC_CMD_MAX:I

.field public mAsyncCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/Installer$AsyncDexopt;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDeferSetFirstBoot:Z

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mIsolated:Z

.field public volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$98qnie4iVIJW_SY0EKv0j7AdY2s(Lcom/android/server/pm/Installer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->lambda$connect$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iI13HogVwRqVFLxWvEbCJ942ZI8(Lcom/android/server/pm/Installer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/Installer;->LOW_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 135
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 659
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/Installer;->ASYNC_CMD_MAX:I

    .line 660
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mAsyncCmds:Ljava/util/HashMap;

    .line 149
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return-void
.end method

.method public static assertValidInstructionSet(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1233
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1234
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1238
    :cond_16
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;
    .registers 9

    .line 239
    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    .line 240
    iput-object p0, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    .line 241
    iput-object p1, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    .line 242
    iput p2, v0, Landroid/os/CreateAppDataArgs;->userId:I

    .line 243
    iput p3, v0, Landroid/os/CreateAppDataArgs;->flags:I

    if-eqz p7, :cond_13

    or-int/lit8 p0, p3, 0x8

    .line 245
    iput p0, v0, Landroid/os/CreateAppDataArgs;->flags:I

    .line 247
    :cond_13
    iput p4, v0, Landroid/os/CreateAppDataArgs;->appId:I

    .line 248
    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    .line 249
    iput p6, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    return-object v0
.end method

.method public static buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;
    .registers 3

    .line 254
    new-instance v0, Landroid/os/CreateAppDataResult;

    invoke-direct {v0}, Landroid/os/CreateAppDataResult;-><init>()V

    const-wide/16 v1, -0x1

    .line 255
    iput-wide v1, v0, Landroid/os/CreateAppDataResult;->ceDataInode:J

    const/4 v1, 0x0

    .line 256
    iput v1, v0, Landroid/os/CreateAppDataResult;->exceptionCode:I

    const/4 v1, 0x0

    .line 257
    iput-object v1, v0, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "I)",
            "Landroid/os/ReconcileSdkDataArgs;"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-direct {v0}, Landroid/os/ReconcileSdkDataArgs;-><init>()V

    .line 265
    iput-object p0, v0, Landroid/os/ReconcileSdkDataArgs;->uuid:Ljava/lang/String;

    .line 266
    iput-object p1, v0, Landroid/os/ReconcileSdkDataArgs;->packageName:Ljava/lang/String;

    .line 267
    iput-object p2, v0, Landroid/os/ReconcileSdkDataArgs;->subDirNames:Ljava/util/List;

    .line 268
    iput p3, v0, Landroid/os/ReconcileSdkDataArgs;->userId:I

    .line 269
    iput p4, v0, Landroid/os/ReconcileSdkDataArgs;->appId:I

    const/4 p0, 0x0

    .line 270
    iput p0, v0, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 271
    iput-object p5, v0, Landroid/os/ReconcileSdkDataArgs;->seInfo:Ljava/lang/String;

    .line 272
    iput p6, v0, Landroid/os/ReconcileSdkDataArgs;->flags:I

    return-object v0
.end method

.method private synthetic lambda$connect$0()V
    .registers 3

    const-string v0, "Installer"

    const-string/jumbo v1, "installd died; reconnecting"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 177
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method


# virtual methods
.method public final checkBeforeRemote()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 216
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 215
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_41
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_4c

    const-string p0, "Ignoring request because this installer is isolated"

    .line 219
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 224
    :cond_4c
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_59

    goto :goto_62

    .line 225
    :cond_59
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v0, "time out waiting for the installer to be ready"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_62} :catch_62

    :catch_62
    :goto_62
    const/4 p0, 0x1

    return p0
.end method

.method public cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 470
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 472
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 437
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 439
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 865
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 867
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 1243
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public final connect()V
    .registers 5

    const-string/jumbo v0, "installd"

    .line 171
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 174
    :try_start_9
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    if-eqz v0, :cond_28

    .line 185
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->executeDeferredActions()V
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_21 .. :try_end_27} :catch_3e

    goto :goto_3e

    :cond_28
    const-string v0, "Installer"

    const-string/jumbo v1, "installd not found; trying again"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_3e
    :goto_3e
    return-void
.end method

.method public controlDexOptBlocking(Z)V
    .registers 3

    .line 787
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "Installer"

    const-string v0, "blockDexOpt failed"

    .line 789
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1307
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 1310
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public copyKnoxCancel(Ljava/lang/String;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1329
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1331
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    move-object v0, p0

    .line 1319
    :try_start_9
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    return v0

    :catch_1d
    move-exception v0

    .line 1322
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 832
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 834
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_b

    .line 279
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    .line 282
    iput v0, p1, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 284
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 286
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_11

    .line 293
    array-length p0, p1

    new-array p0, p0, [Landroid/os/CreateAppDataResult;

    .line 294
    invoke-static {}, Lcom/android/server/pm/Installer;->buildPlaceholderCreateAppDataResult()Landroid/os/CreateAppDataResult;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 298
    :cond_11
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 299
    iput v1, v3, Landroid/os/CreateAppDataArgs;->previousAppId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 302
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 304
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createEncAppData(Ljava/lang/String;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1372
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createEncAppData(Ljava/lang/String;III)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1375
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 950
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 952
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1032
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1034
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 898
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 900
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public deleteDirectoryContents(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1463
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->deleteDirectoryContents(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1465
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public deleteKnoxFile(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1360
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1362
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 992
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 p0, -0x1

    return-wide p0

    .line 993
    :cond_9
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 996
    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1e

    return-wide p0

    :catch_1e
    move-exception p0

    .line 998
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 888
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 890
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 447
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 449
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;III)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1182
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception p0

    .line 1185
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 874
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 876
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1206
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    const/4 p0, 0x1

    return p0

    :catch_10
    move-exception p0

    .line 1209
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1042
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 1044
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 907
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 909
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 641
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-interface {v0, v7}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v15, p15

    invoke-interface {v0, v15}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    return v0

    :cond_26
    move-object/from16 v14, p0

    .line 647
    :try_start_28
    iget-object v1, v14, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4e} :catch_4f

    return v0

    :catch_4f
    move-exception v0

    .line 651
    sget-boolean v1, Lcom/android/server/pm/Installer;->LOW_DEBUG:Z

    if-nez v1, :cond_57

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Installer;->saveDexOptLog()V

    .line 654
    :cond_57
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 687
    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/Installer;->mAsyncCmds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v2, v1, Lcom/android/server/pm/Installer;->ASYNC_CMD_MAX:I

    if-lt v0, v2, :cond_23

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Installer;->waitDexoptAsyncDone()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_23

    :cond_13
    const-wide/16 v2, 0x64

    .line 694
    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_2

    :catch_19
    move-exception v0

    move-object v2, v0

    const-string v0, "Installer"

    const-string v3, "InterruptedException"

    .line 696
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 700
    :cond_23
    :goto_23
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-interface {v0, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v8, p6

    invoke-interface {v0, v8}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 703
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v15, p15

    invoke-interface {v0, v15}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x0

    return v0

    .line 706
    :cond_49
    :try_start_49
    new-instance v0, Lcom/android/server/pm/Installer$AsyncDexopt;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$AsyncDexopt;-><init>()V

    .line 707
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v20

    .line 708
    iget-object v2, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, v20

    invoke-interface/range {v2 .. v19}, Landroid/os/IInstalld;->dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 711
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mAsyncCmds:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_83} :catch_84

    return v2

    :catch_84
    move-exception v0

    .line 714
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 819
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 821
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    .line 824
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final executeDeferredActions()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 203
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    :cond_7
    return-void
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 456
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 458
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public freeCache(Ljava/lang/String;JI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 919
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 921
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 923
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 550
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 552
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v9, p8

    .line 491
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    const/4 v10, 0x0

    if-eqz v0, :cond_1e

    .line 493
    array-length v1, v0

    move v2, v10

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 494
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    move-object v1, p0

    .line 498
    :try_start_1f
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 500
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v3, v0, v10

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    .line 501
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 502
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 503
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 504
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 505
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception v0

    .line 507
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public final getAsyncResult()[I
    .registers 4

    const-string v0, "Installer"

    const/4 v1, 0x0

    .line 749
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->getAsyncResult()[I

    move-result-object v1

    if-eqz v1, :cond_42

    .line 750
    array-length p0, v1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_42

    .line 751
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexoptAsync result, h: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", r: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", s: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    const-string p0, "RemoteException occurred in getAsyncResult"

    .line 756
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-object v1
.end method

.method public getDualDARLockstate()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1452
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->getDualDARLockstate()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1454
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x6

    new-array p0, p0, [J

    return-object p0

    .line 531
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 533
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getKnoxFileInfo(Ljava/lang/String;)[J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 p1, 0x0

    const-wide/16 v0, -0x1

    aput-wide v0, p0, p1

    return-object p0

    .line 1342
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1344
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1349
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1351
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1353
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 1267
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1270
    :try_start_16
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 1272
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 568
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 570
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 515
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    .line 516
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 p3, 0x0

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 517
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 518
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 519
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 520
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 521
    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 523
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public hasDualDARPolicy(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1436
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1438
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1444
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1446
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 1020
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1022
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 1024
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public invalidateMounts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1051
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 1053
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public isInstalldConnected()Z
    .registers 1

    .line 1288
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1060
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1062
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 962
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 965
    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 967
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 935
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 937
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 939
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 806
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 808
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 427
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 429
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateLegacyObbData()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1224
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 1227
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public migrateSdpDb(Ljava/lang/String;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1400
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->migrateSdpDb(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1402
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 977
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 978
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 980
    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 982
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 481
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 484
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1084
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 1086
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public onStart()V
    .registers 2

    .line 162
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 164
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_10

    .line 166
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    :goto_10
    return-void
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1102
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p5}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p6}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1105
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return p0

    :catch_23
    move-exception p0

    .line 1108
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final processAsyncResult([I)V
    .registers 4

    const/4 v0, 0x0

    .line 762
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 763
    aget p1, p1, v1

    if-ltz p1, :cond_30

    .line 766
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mAsyncCmds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Installer$AsyncDexopt;

    if-eqz p0, :cond_1a

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Installer$AsyncDexopt;->logResult(II)V

    goto :goto_30

    .line 770
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find any asyncCmd Object !! : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Installer"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-void
.end method

.method public reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 314
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 316
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1004
    :goto_2
    array-length v2, p4

    if-ge v1, v2, :cond_d

    .line 1005
    aget-object v2, p4, v1

    invoke-static {v2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1007
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_14

    return v0

    .line 1008
    :cond_14
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1010
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_28

    return p0

    :catch_28
    move-exception p0

    .line 1013
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1382
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1384
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public removeEncUserDir(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1391
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->removeEncUserDir(I)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 1393
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public removeNotTargetedPreloadApksIfNeeded()Z
    .registers 1

    .line 1295
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1156
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    return p0

    :catch_16
    move-exception p0

    .line 1160
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 417
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 419
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 853
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 854
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 856
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 858
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 839
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 841
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 843
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 845
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public final saveDexOptLog()V
    .registers 3

    const-string p0, "Installer"

    :try_start_2
    const-string v0, "Call saveDexOptLog"

    .line 586
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "rm /data/log/dexoptfail_log"

    .line 588
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const-string/jumbo v0, "logcat -v raw -b main,system -t 3000 -f /data/log/dexoptfail_log"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_29

    .line 592
    :try_start_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_29

    goto :goto_24

    :catch_20
    move-exception v0

    .line 595
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_24
    const-string v0, "End saveDexOptLog"

    .line 597
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 578
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 580
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setDualDARPolicyDir(IILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1420
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1422
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1428
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IInstalld;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1430
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setEviction(IZ)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1410
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->setEviction(IZ)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1412
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setFirstBoot()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 329
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz v0, :cond_11

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->setFirstBoot()V

    goto :goto_14

    :cond_11
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception p0

    .line 337
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1130
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    .line 1133
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1072
    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 1074
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p0

    throw p0
.end method

.method public waitDexoptAsyncDone()Z
    .registers 4

    .line 722
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->getAsyncResult()[I

    move-result-object v0

    if-eqz v0, :cond_49

    .line 723
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Installer;->processAsyncResult([I)V

    const/4 v1, 0x2

    .line 726
    aget v0, v0, v1

    if-nez v0, :cond_49

    .line 728
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mAsyncCmds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 729
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer$AsyncDexopt;

    if-eqz v1, :cond_1c

    .line 731
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/Installer$AsyncDexopt;->logResult(II)V

    goto :goto_1c

    :cond_3f
    const-string p0, "Installer"

    const-string/jumbo v0, "no tasks in installd"

    .line 734
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_49
    const/4 p0, 0x1

    return p0
.end method
