.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field public static final NAME:Ljava/lang/String; = "rollback-observer"

.field public static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastStagedRollbackIdsFile:Ljava/io/File;

.field public final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTwoPhaseRollbackEnabled:Z

.field public final mTwoPhaseRollbackEnabledFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$GYEEwqgCkHBN372M-pUMUTsNb8M(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$rollbackPackage$5(Ljava/util/function/Consumer;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J7bNVSwS1yfuFLggc-5aOr3S6Ko(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$execute$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gxUJsixtVwfiVzdpT7ddT3_PUM8(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$onBootCompletedAsync$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$kStGuZ40fNjAhoNA1qyHamSTmIQ(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$rollbackPackage$6(Ljava/util/function/Consumer;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGX-K_40DTN7kW4NXIhw7Z1XBNk(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$rollbackPackage$4(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mG9Ex1MR2I2vEsLTgH1ly5DHHZA(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$execute$1(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcxwAVhuQgpcj2xfj_aprzlUjyw(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$notifyRollbackAvailable$2(Landroid/content/rollback/RollbackInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 81
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackPackageHealthObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "rollback-observer"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "last-staged-rollback-ids"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 88
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "two-phase-rollback-enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabledFile:Ljava/io/File;

    .line 89
    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 90
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    const-string/jumbo p1, "sys.boot_completed"

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 94
    invoke-static {v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readBoolean(Ljava/io/File;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    goto :goto_67

    .line 98
    :cond_62
    iput-boolean v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 99
    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeBoolean(Ljava/io/File;Z)V

    :goto_67
    return-void
.end method

.method public static isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z
    .registers 2

    .line 172
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    if-nez v0, :cond_22

    .line 173
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 174
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$execute$0()V
    .registers 1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackAll()V

    return-void
.end method

.method private synthetic lambda$execute$1(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .registers 4

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    return-void
.end method

.method private synthetic lambda$notifyRollbackAvailable$2(Landroid/content/rollback/RollbackInfo;)V
    .registers 2

    .line 164
    invoke-static {p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 166
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabledFile:Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeBoolean(Ljava/io/File;Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$onBootCompletedAsync$3()V
    .registers 1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method private synthetic lambda$rollbackPackage$4(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V
    .registers 8

    .line 381
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    .line 382
    invoke-virtual {p5, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p5

    if-nez p5, :cond_23

    .line 385
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p5

    if-eqz p5, :cond_1e

    .line 386
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p5

    .line 387
    invoke-virtual {p0, p5, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V

    const/4 p5, 0x4

    .line 388
    invoke-static {p2, p5, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_27

    :cond_1e
    const/4 p5, 0x2

    .line 394
    invoke-static {p2, p5, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_27

    :cond_23
    const/4 p5, 0x3

    .line 400
    invoke-static {p2, p5, p3, p4}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 405
    :goto_27
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 406
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isPendingStagedSessionsEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 409
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "Rollback staged install"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public static synthetic lambda$rollbackPackage$5(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 2

    .line 415
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$rollbackPackage$6(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 4

    .line 415
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static readBoolean(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 259
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1d

    .line 260
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_13

    const/4 v2, 0x1

    if-ne p0, v2, :cond_e

    goto :goto_f

    :cond_e
    move v2, v0

    .line 261
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1d

    return v2

    :catchall_13
    move-exception p0

    .line 259
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    return v0
.end method

.method public static readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 312
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 316
    aget-object v2, p0, v2

    const-string v3, ""

    .line 318
    array-length v4, p0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2a

    .line 319
    aget-object v3, p0, v5

    .line 321
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_33

    goto :goto_f

    :cond_32
    return-object v0

    .line 324
    :catch_33
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public static writeBoolean(Ljava/io/File;Z)V
    .registers 3

    .line 267
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_21

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 268
    :goto_a
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write(I)V

    .line 269
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 270
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 271
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    goto :goto_21

    :catchall_17
    move-exception p0

    .line 267
    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    :goto_21
    return-void
.end method

.method public static writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V
    .registers 6

    .line 284
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 285
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_12

    .line 286
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_14

    :cond_12
    const-string p2, ""

    .line 287
    :goto_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 288
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 289
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 290
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 291
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_3d

    :catch_32
    move-exception p1

    const-string p2, "RollbackPackageHealthObserver"

    const-string v0, "Failed to save last staged rollback id"

    .line 293
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_3d
    return-void
.end method


# virtual methods
.method public final assertInWorkerThread()V
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public execute(Landroid/content/pm/VersionedPackage;II)Z
    .registers 7

    const/4 p3, 0x1

    if-ne p2, p3, :cond_e

    .line 125
    iget-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p3

    .line 129
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected rollback but no valid rollback found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RollbackPackageHealthObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_2c
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p3
.end method

.method public final getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .registers 6

    .line 210
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/rollback/RollbackManager;

    .line 211
    invoke-virtual {p0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackInfo;

    .line 212
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 213
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/VersionedPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return-object v0

    .line 228
    :cond_3d
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 229
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    return-object v0

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "rollback-observer"

    return-object p0
.end method

.method public final isModule(Ljava/lang/String;)Z
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p1, v0

    .line 343
    :cond_9
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 345
    :try_start_10
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_14} :catch_17

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :catch_17
    :cond_17
    return v0
.end method

.method public final isPendingStagedSessionsEmpty()Z
    .registers 1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 255
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final markStagedSessionHandled(I)Z
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 245
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyRollbackAvailable(Landroid/content/rollback/RollbackInfo;)V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBootCompleted()V
    .registers 8

    .line 192
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 194
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 195
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 197
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog;->scheduleCheckAndMitigateNativeCrashes()V

    .line 200
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackIds()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 201
    :goto_25
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 202
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v6

    .line 202
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_41
    return-void
.end method

.method public onBootCompletedAsync()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .registers 5

    const/4 p3, 0x3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    .line 107
    iget-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/rollback/RollbackManager;

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/rollback/RollbackManager;

    .line 109
    invoke-virtual {p2}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_19

    return p3

    .line 112
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object p0

    if-nez p0, :cond_21

    const/4 p0, 0x0

    return p0

    :cond_21
    return p3
.end method

.method public final popLastStagedRollbackIds()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 302
    :try_start_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 304
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_f
    move-exception v0

    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 305
    throw v0
.end method

.method public final rollbackAll()V
    .registers 5

    .line 452
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 453
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 454
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->useTwoPhaseRollback(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    const-string v1, "RollbackPackageHealthObserver"

    const-string v2, "Rolling back all available rollbacks"

    .line 459
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 463
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 464
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 468
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 469
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    const/4 v3, 0x1

    .line 470
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    goto :goto_47

    :cond_67
    return-void
.end method

.method public final rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .registers 11

    .line 360
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 361
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 362
    invoke-static {p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->mapFailureReasonToMetric(I)I

    move-result v5

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1e

    const-string/jumbo p3, "sys.init.updatable_crashing_process_name"

    const-string v2, ""

    .line 365
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_22

    .line 368
    :cond_1e
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :goto_22
    move-object v6, p3

    const/4 p3, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isModule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 372
    iget-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object p3

    :cond_34
    move-object v4, p3

    .line 376
    invoke-static {v4, v1, v5, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 380
    new-instance p3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V

    .line 414
    new-instance v1, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/function/Consumer;)V

    invoke-direct {v1, v2}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 418
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    .line 419
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    .line 418
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    return-void
.end method

.method public final saveStagedRollbackId(ILandroid/content/pm/VersionedPackage;)V
    .registers 3

    .line 277
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 278
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeStagedRollbackId(Ljava/io/File;ILandroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method public startObservingHealth(Ljava/util/List;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    return-void
.end method

.method public final useTwoPhaseRollback(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 434
    iget-boolean v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const-string v0, "RollbackPackageHealthObserver"

    const-string v2, "Rolling back all rebootless APEX rollbacks"

    .line 438
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 441
    invoke-static {v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    .line 442
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 443
    invoke-virtual {p0, v2, v0, v4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    move v0, v4

    goto :goto_15

    :cond_3b
    return v0
.end method
