.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$Lifecycle;,
        Lcom/android/server/pm/StagingManager$StagedSession;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mBootCompleted:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mFailedPackageNames:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFailedPackageNames"
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

.field public mFailureReason:Ljava/lang/String;

.field public final mFailureReasonFile:Ljava/io/File;

.field public mNativeFailureReason:Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mStagedApexObservers:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedApexObservers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/IStagedApexObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mStagedSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuccessfulStagedSessionIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSuccessfulStagedSessionIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IR-Oi9-i5DObtjRVY7hL9YJ7Bc8(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/StagingManager;->lambda$onBootCompletedBroadcastReceived$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ0eMzdcMwBH2LONVoGS-jFvQqU(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->lambda$handleNonReadyAndDestroyedSessions$0(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmarkBootCompleted(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->markBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmarkStagedSessionsAsSuccessful(Lcom/android/server/pm/StagingManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->markStagedSessionsAsSuccessful()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 135
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/staged-install/failure_reason.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 92
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    const-string/jumbo p2, "power"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 146
    :try_start_44
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_62

    .line 147
    :try_start_4e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_58

    .line 148
    :try_start_54
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_62

    goto :goto_62

    :catchall_58
    move-exception p0

    .line 146
    :try_start_59
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p1

    :try_start_5e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_61
    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    :goto_62
    return-void
.end method

.method public static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 589
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static synthetic lambda$handleNonReadyAndDestroyedSessions$0(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 1

    .line 612
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->verifySession()V

    return-void
.end method

.method private synthetic lambda$onBootCompletedBroadcastReceived$1()V
    .registers 1

    .line 807
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V

    return-void
.end method


# virtual methods
.method public final abortCheckpoint(Ljava/lang/String;ZZ)V
    .registers 6

    const-string v0, "StagingManager"

    .line 217
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5d

    if-eqz p3, :cond_5d

    .line 221
    :try_start_9
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-direct {p3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_26

    .line 223
    :try_start_15
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    .line 224
    :try_start_18
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_26

    goto :goto_2c

    :catchall_1c
    move-exception p1

    .line 221
    :try_start_1d
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p2

    :try_start_22
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_26

    :catch_26
    move-exception p1

    :try_start_27
    const-string p2, "Failed to save failure reason: "

    .line 225
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_2c
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 230
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 233
    :cond_39
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p1

    const-string p2, "abort-staged-install"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    move-exception p1

    const-string p2, "Failed to abort checkpoint"

    .line 237
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 240
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 242
    :cond_57
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 5

    .line 532
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    .line 533
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    const-string v2, "StagingManager"

    if-eqz v1, :cond_21

    .line 534
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot abort session in final state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_21
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;

    move-result-object v1

    if-nez v1, :cond_47

    .line 542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Session "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been abandoned already"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_47
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to abort apex session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_6b
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 555
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 561
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void

    .line 538
    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Committed session must be destroyed before aborting it from StagingManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 525
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 466
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 469
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 470
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 471
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_14

    .line 472
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 475
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 477
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 478
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 479
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_50

    .line 480
    :cond_63
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has duplicate apk-in-apex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_91
    return-void
.end method

.method public final checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 276
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 277
    invoke-interface {v0}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_f

    .line 280
    :cond_28
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install apk-in-apex of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_49
    return-void
.end method

.method public commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void
.end method

.method public createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 519
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 5

    .line 570
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 573
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_26

    .line 577
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public final extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 252
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 253
    invoke-interface {v0}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 254
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 258
    :cond_29
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object p0
.end method

.method public final getReasonForRevert()Ljava/lang/String;
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 453
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    return-object p0

    .line 455
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session reverted due to crashing native process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string p0, ""

    return-object p0
.end method

.method public getStagedApexInfo(Ljava/lang/String;)Landroid/content/pm/StagedApexInfo;
    .registers 7

    .line 882
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 883
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 884
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 885
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_54

    .line 886
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v3

    if-nez v3, :cond_54

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_54

    .line 889
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexInfo;

    if-eqz v2, :cond_54

    .line 891
    new-instance p0, Landroid/content/pm/StagedApexInfo;

    invoke-direct {p0}, Landroid/content/pm/StagedApexInfo;-><init>()V

    .line 892
    iget-object p1, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    .line 893
    iget-object p1, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->diskImagePath:Ljava/lang/String;

    .line 894
    iget-wide v3, v2, Landroid/apex/ApexInfo;->versionCode:J

    iput-wide v3, p0, Landroid/content/pm/StagedApexInfo;->versionCode:J

    .line 895
    iget-object p1, v2, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/StagedApexInfo;->versionName:Ljava/lang/String;

    .line 896
    iget-boolean p1, v2, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    iput-boolean p1, p0, Landroid/content/pm/StagedApexInfo;->hasClassPathJars:Z

    .line 897
    monitor-exit v0

    return-object p0

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 900
    :cond_57
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const-string v3, "Session is null"

    .line 827
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 828
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v2

    xor-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session has parent session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 830
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session does not contain apex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 835
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_a9

    .line 839
    :cond_52
    new-instance v1, Landroid/apex/ApexSessionParams;

    invoke-direct {v1}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 840
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    iput v2, v1, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 841
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 842
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 843
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_70
    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 844
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 845
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_70

    .line 849
    :cond_8a
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, v1, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 851
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ApexManager;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object p0

    .line 852
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 853
    array-length v1, p0

    :goto_9c
    if-ge v0, v1, :cond_a8

    aget-object v2, p0, v0

    .line 854
    iget-object v3, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_a8
    return-object p1

    .line 836
    :cond_a9
    :goto_a9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getStagedApexModuleNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 865
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 866
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 867
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 868
    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-interface {v3}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_3d

    .line 871
    :cond_32
    invoke-virtual {p0, v3}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 873
    :cond_40
    monitor-exit v1

    return-object v0

    :catchall_42
    move-exception p0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final getStagedSession(I)Lcom/android/server/pm/StagingManager$StagedSession;
    .registers 3

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 814
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final handleCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 3

    .line 510
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 511
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    :cond_f
    return-void
.end method

.method public final handleNonReadyAndDestroyedSessions(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;)V"
        }
    .end annotation

    .line 595
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5d

    .line 601
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 602
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 604
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->abandon()V

    add-int/lit8 v3, v0, -0x1

    .line 605
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 606
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 608
    :cond_24
    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restart verification for session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StagingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    new-instance v4, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/StagingManager$StagedSession;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    add-int/lit8 v3, v0, -0x1

    .line 613
    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 614
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 621
    :cond_5d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 494
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->installSession()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 499
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerException;

    throw p0

    :catch_10
    move-exception p0

    .line 497
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 582
    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez p0, :cond_13

    iget-boolean p0, p1, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final logFailedApexSessionsIfNecessary()V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 771
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 774
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final markBootCompleted()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->markBootCompleted()V

    return-void
.end method

.method public final markStagedSessionsAsSuccessful()V
    .registers 5

    .line 778
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 779
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 780
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 783
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_31

    const-string/jumbo p0, "sys.staged_apex.state"

    const-string/jumbo v1, "success"

    .line 785
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final notifyStagedApexObservers()V
    .registers 7

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 906
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IStagedApexObserver;

    .line 907
    new-instance v3, Landroid/content/pm/ApexStagedEvent;

    invoke-direct {v3}, Landroid/content/pm/ApexStagedEvent;-><init>()V

    .line 908
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexModuleNames()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApexStagedEvent;->stagedApexModuleNames:[Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_4b

    .line 910
    :try_start_29
    invoke-interface {v2, v3}, Landroid/content/pm/IStagedApexObserver;->onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4b

    goto :goto_9

    :catch_2d
    move-exception v2

    :try_start_2e
    const-string v3, "StagingManager"

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to contact the observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 915
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public onBootCompletedBroadcastReceived()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 807
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StagingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V
    .registers 7

    .line 432
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 433
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 437
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result p1

    if-nez p1, :cond_34

    return-void

    .line 441
    :cond_34
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    move-result p1

    const-string p2, "StagingManager"

    if-nez p1, :cond_44

    const-string p0, "Failed to abort APEXd session"

    .line 442
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_44
    const-string p1, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    .line 444
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public final prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    .line 365
    :try_start_3
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 366
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 367
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 189
    :cond_3
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 191
    :try_start_9
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v0

    const-string v1, "StagingManager"

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 204
    :try_start_24
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public restoreSessions(Ljava/util/List;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 625
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-string v0, "StagingManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v3, v0, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v0, "restoreSessions"

    .line 627
    invoke-virtual {v3, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "sys.boot_completed"

    const/4 v4, 0x0

    .line 630
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    move v0, v4

    .line 634
    :goto_20
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_89

    .line 635
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 637
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v7

    xor-int/2addr v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is a child session"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 637
    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 639
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is not committed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 639
    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 641
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v7

    xor-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is in terminal state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 644
    invoke-virtual {v1, v5}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_89
    const/16 v0, -0x80

    if-eqz p2, :cond_a2

    .line 651
    :goto_8d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a1

    .line 652
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    const-string v3, "Build fingerprint has changed"

    .line 653
    invoke-interface {v1, v0, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :cond_a1
    return-void

    .line 662
    :cond_a2
    :try_start_a2
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v5

    .line 663
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v7
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b2} :catch_212

    .line 669
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_c3

    if-eqz v5, :cond_bb

    goto :goto_c3

    .line 670
    :cond_bb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detected multiple staged sessions on a device without fs-checkpoint support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_c3
    :goto_c3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/StagingManager;->handleNonReadyAndDestroyedSessions(Ljava/util/List;)V

    .line 681
    iget-object v8, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8}, Lcom/android/server/pm/ApexManager;->getSessions()Landroid/util/SparseArray;

    move-result-object v8

    move v9, v4

    move v10, v9

    move v11, v10

    .line 684
    :goto_cf
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, "StagingManager"

    if-ge v9, v12, :cond_1aa

    .line 685
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 686
    invoke-interface {v12}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v14

    if-nez v14, :cond_e5

    goto/16 :goto_1a6

    .line 690
    :cond_e5
    invoke-interface {v12}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/apex/ApexSessionInfo;

    if-eqz v14, :cond_1a0

    .line 691
    iget-boolean v15, v14, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v15, :cond_f7

    goto/16 :goto_1a0

    .line 696
    :cond_f7
    invoke-static {v14}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v15

    if-eqz v15, :cond_150

    .line 698
    iget-object v11, v14, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10a

    .line 699
    iget-object v11, v14, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Lcom/android/server/pm/StagingManager;->prepareForLoggingApexdRevert(Lcom/android/server/pm/StagingManager$StagedSession;Ljava/lang/String;)V

    :cond_10a
    const-string v11, "APEX activation failed."

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v15

    .line 703
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12b

    .line 704
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Reason: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_149

    .line 705
    :cond_12b
    iget-object v15, v14, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_149

    .line 706
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Error: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 708
    :cond_149
    :goto_149
    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-interface {v12, v0, v11}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1a5

    .line 711
    :cond_150
    iget-boolean v15, v14, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v15, :cond_19e

    iget-boolean v15, v14, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v15, :cond_159

    goto :goto_19e

    .line 714
    :cond_159
    iget-boolean v11, v14, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v11, :cond_17b

    .line 718
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Staged session "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-interface {v12}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 718
    invoke-interface {v12, v0, v11}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1a5

    .line 722
    :cond_17b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Apex session "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is in impossible state"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "Impossible state"

    .line 724
    invoke-interface {v12, v0, v11}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1a5

    :cond_19e
    :goto_19e
    move v10, v6

    goto :goto_1a6

    :cond_1a0
    :goto_1a0
    const-string v11, "apexd did not know anything about a staged session supposed to be activated"

    .line 693
    invoke-interface {v12, v0, v11}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_1a5
    move v11, v6

    :goto_1a6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_cf

    :cond_1aa
    if-eqz v10, :cond_1b4

    if-eqz v11, :cond_1b4

    const-string v0, "Found both applied and failed apex sessions"

    .line 730
    invoke-virtual {v1, v0, v5, v7}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    return-void

    :cond_1b4
    if-eqz v11, :cond_1d2

    .line 738
    :goto_1b6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1d1

    .line 739
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 740
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionFailed()Z

    move-result v3

    if-eqz v3, :cond_1c9

    goto :goto_1ce

    :cond_1c9
    const-string v3, "Another apex session failed"

    .line 744
    invoke-interface {v1, v0, v3}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_1ce
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b6

    :cond_1d1
    return-void

    .line 751
    :cond_1d2
    :goto_1d2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_20e

    .line 752
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 754
    :try_start_1df
    invoke-virtual {v1, v6, v5, v7}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_1e2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1df .. :try_end_1e2} :catch_206
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e2} :catch_1e3

    goto :goto_20b

    :catch_1e3
    move-exception v0

    move-object v8, v0

    const-string v0, "Staged install failed due to unhandled exception"

    .line 758
    invoke-static {v13, v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0x6e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Staged install failed due to unhandled exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v9, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v0, v5, v7}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    goto :goto_20b

    :catch_206
    move-exception v0

    move-object v8, v0

    .line 756
    invoke-virtual {v1, v6, v8, v5, v7}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    :goto_20b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d2

    .line 765
    :cond_20e
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catch_212
    move-exception v0

    .line 666
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get checkpoint status"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-string v0, "StagingManager"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz p2, :cond_65

    if-nez p3, :cond_65

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reverting back to safe state. Marking "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " as failed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 388
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5a

    .line 390
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Reason for revert: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5a
    const-string p0, "StagingManager"

    .line 392
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x6e

    .line 393
    invoke-interface {p1, p0, p2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    return-void

    :cond_65
    if-eqz v0, :cond_8f

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->checkInstallationOfApkInApexSuccessful(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->checkDuplicateApkInApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const-string p3, "StagingManager"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APEX packages in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " were successfully activated. Proceeding with APK packages, if any"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    const-string p3, "StagingManager"

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing APK packages in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance p3, Landroid/util/TimingsTraceLog;

    const-string v1, "StagingManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {p3, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "installApksInSession"

    .line 409
    invoke-virtual {p3, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 411
    invoke-virtual {p3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v0, :cond_ea

    if-eqz p2, :cond_d8

    .line 417
    iget-object p2, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    monitor-enter p2

    .line 418
    :try_start_c6
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    monitor-exit p2

    goto :goto_ea

    :catchall_d5
    move-exception p0

    monitor-exit p2
    :try_end_d7
    .catchall {:try_start_c6 .. :try_end_d7} :catchall_d5

    throw p0

    .line 422
    :cond_d8
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    const-string/jumbo p0, "sys.staged_apex.state"

    const-string/jumbo p1, "success"

    .line 425
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method public final snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 12

    .line 326
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    return-void
.end method

.method public final snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V
    .registers 13

    .line 332
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 333
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for snapshotting/restoring user data."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StagingManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 344
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/4 v1, 0x0

    .line 345
    invoke-interface {p0, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v5

    const/4 v1, 0x1

    .line 348
    invoke-static {p0, p2, v1}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object p2

    .line 350
    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-static {p2}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    :cond_50
    return-void
.end method

.method public final snapshotAndRestoreForApexSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 11

    .line 294
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 295
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-nez v0, :cond_1c

    return-void

    .line 301
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 306
    :cond_27
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 307
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 308
    const-class v2, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_40
    if-ge v4, v3, :cond_6b

    .line 311
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-interface {v5}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    .line 316
    iget-object v6, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 317
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_5a
    if-ge v7, v6, :cond_68

    .line 318
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v0, v2}, Lcom/android/server/pm/StagingManager;->snapshotAndRestoreApkInApexUserData(Ljava/lang/String;[ILcom/android/server/rollback/RollbackManagerInternal;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_6b
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 791
    new-instance v0, Lcom/android/server/pm/StagingManager$Lifecycle;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/StagingManager$Lifecycle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager$Lifecycle;->startService(Lcom/android/server/pm/StagingManager;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/StagingManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/StagingManager$2;-><init>(Lcom/android/server/pm/StagingManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 801
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
