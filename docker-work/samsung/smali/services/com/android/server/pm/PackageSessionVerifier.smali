.class public final Lcom/android/server/pm/PackageSessionVerifier;
.super Ljava/lang/Object;
.source "PackageSessionVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageSessionVerifier$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageSessionVerifier"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mStagedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DAhQXohhWXVBcVx8nrmskAI3NmU(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$dispatchEndVerification$3(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHD04n4fz3H9DmbpqcLXsCW9SQA(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$verify$0(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSgfytvOOmWPzQhKp7GtQtFUQsA(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$checkOverlaps$5(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eRvZOguasaSB4Qh3f-lTgd3WieY(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$verifyStaged$1(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wIxtdqTVPZrE1QO5DVx9uktnNQs(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$dispatchVerifyApex$2(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wUGMbieDFOv-psuHqKWe8rFanmQ(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->lambda$checkRebootlessApex$4(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mverifyStaged(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 93
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 94
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 95
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 96
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/ApexManager;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 85
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 86
    iput-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 509
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean p0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

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

.method public static isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 504
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static synthetic lambda$checkOverlaps$5(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 698
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$checkRebootlessApex$4(Ljava/lang/String;Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    .line 596
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dispatchEndVerification$3(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    .line 255
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$dispatchVerifyApex$2(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 241
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    .line 244
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$verify$0(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 105
    :try_start_0
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 107
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_13

    .line 112
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 115
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_2f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_49

    :catch_30
    move-exception p0

    .line 117
    iget v0, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 119
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    :goto_49
    return-void
.end method

.method private synthetic lambda$verifyStaged$1(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 199
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 200
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 201
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    goto :goto_14

    .line 204
    :cond_24
    invoke-virtual {p0, p1, p1}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 206
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier;->dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    :try_end_2a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_35

    :catch_2b
    move-exception v0

    .line 208
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public final checkActiveSessions()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 612
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 614
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t query fs-checkpoint status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public checkActiveSessions(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 622
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 623
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_7

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    if-nez p1, :cond_33

    const/4 p0, 0x1

    if-gt v0, p0, :cond_29

    goto :goto_33

    .line 629
    :cond_29
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x77

    const-string v0, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 563
    :cond_7
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    return-void

    .line 567
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 569
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    return-void

    .line 570
    :cond_22
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update of APEX package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 684
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_cf

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_cf

    .line 687
    :cond_e
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 693
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 694
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 695
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    if-ne v2, v3, :cond_3d

    goto :goto_1a

    .line 698
    :cond_3d
    new-instance v2, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 699
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getCommittedMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-string v3, " has been staged already by session: "

    const-string v4, " in session: "

    const-string v5, "Package: "

    const/16 v6, -0x77

    if-ltz v2, :cond_83

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-interface {v1, v6, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_1a

    .line 701
    :cond_83
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_ac
    return-void

    .line 689
    :cond_ad
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot stage session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-interface {p2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with package name null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_cf
    :goto_cf
    return-void
.end method

.method public checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 583
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_83

    .line 586
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x16

    if-eqz v0, :cond_65

    .line 592
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 593
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_1c

    .line 596
    :cond_35
    new-instance v2, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_1c

    .line 598
    :cond_41
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already contains "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_64
    return-void

    .line 588
    :cond_65
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with package name null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_83
    :goto_83
    return-void
.end method

.method public checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 643
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c0

    .line 646
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 647
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_14

    .line 650
    :cond_2d
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v3, "Session was failed by rollback session: "

    const/16 v4, -0x77

    if-eqz v2, :cond_99

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    const-string v5, "PackageSessionVerifier"

    if-nez v2, :cond_5d

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to abort apex session "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-interface {v1, v4, v2}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is marked failed due to rollback session: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 665
    :cond_99
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v2

    if-nez v2, :cond_a7

    goto/16 :goto_14

    .line 666
    :cond_a7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-interface {v1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_c0
    :goto_c0
    return-void
.end method

.method public final dispatchEndVerification(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchVerifyApex(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-string v0, "PackageSessionVerifier"

    .line 313
    :try_start_2
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 314
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_53

    .line 332
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionReady()V

    .line 334
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 335
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 337
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)V

    const-string/jumbo p0, "sys.staged_apex.state"

    const-string/jumbo p1, "staged"

    .line 339
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return-void

    :catch_53
    move-exception p0

    const-string p1, "Failed to get hold of StorageManager"

    .line 318
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x6e

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 4

    .line 514
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 517
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result p1

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 519
    invoke-static {v0}, Lcom/android/server/pm/PackageSessionVerifier;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_22

    .line 522
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->abortStagedSession(I)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v1
.end method

.method public final isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 526
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    const-string v1, "PackageSessionVerifier"

    if-eqz p0, :cond_20

    .line 528
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getModulesInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, "No modules installer defined"

    .line 530
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 533
    :cond_1b
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 536
    :cond_20
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getAllowedVendorApexes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4f

    const-string p0, "com.sec.android.app.samsungapps"

    .line 540
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    .line 545
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed to be updated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 548
    :cond_4f
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;
    .registers 18

    move-object/from16 v0, p1

    .line 169
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_d

    .line 170
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_14

    .line 172
    :cond_d
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    :goto_14
    move-object v4, v1

    .line 174
    new-instance v1, Lcom/android/server/pm/VerificationParams;

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    iget v12, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v13

    move-object v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v3, v1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/server/pm/VerificationParams;-><init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    return-object v1
.end method

.method public final onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;ILjava/lang/String;)V
    .registers 6

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to abort apex session "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageSessionVerifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_20
    invoke-interface {p1, p3, p4}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    const/16 p0, -0x16

    .line 235
    invoke-interface {p2, p0, p4}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final onVerificationSuccess(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 3

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 224
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final retrieveRollbackIdForCommitSession(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 489
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/rollback/RollbackManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/rollback/RollbackManager;

    .line 491
    invoke-virtual {p0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object p0

    .line 492
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_29

    .line 493
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 494
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 495
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 498
    :cond_29
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find rollback id for commit session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_7

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 401
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 402
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 403
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 404
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 405
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_17

    .line 409
    :cond_31
    new-instance v3, Landroid/apex/ApexSessionParams;

    invoke-direct {v3}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 410
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v4

    iput v4, v3, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 411
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iput-object v2, v3, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 412
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v2, v4, :cond_51

    .line 413
    iput-boolean v5, v3, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 414
    iput v1, v3, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_58

    :cond_51
    const/4 v2, -0x1

    if-eq v1, v2, :cond_58

    .line 417
    iput-boolean v5, v3, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 418
    iput v1, v3, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 424
    :cond_58
    :goto_58
    iget-object v1, v0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "PackageSessionVerifier"

    .line 425
    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 431
    :try_start_69
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 432
    iget-object v4, v0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_171

    .line 434
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v3, v3, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_84
    if-ge v8, v6, :cond_150

    aget-object v9, v3, v8

    const/16 v10, -0x16

    .line 441
    :try_start_8a
    iget-object v11, v0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_92
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8a .. :try_end_92} :catch_12e

    .line 442
    :try_start_92
    new-instance v12, Ljava/io/File;

    iget-object v13, v9, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x80

    .line 443
    invoke-virtual {v11, v12, v13, v7}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v12

    .line 445
    invoke-static {v12, v9, v13}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v12
    :try_end_a3
    .catchall {:try_start_92 .. :try_end_a3} :catchall_120

    if-eqz v12, :cond_107

    .line 451
    :try_start_a5
    invoke-virtual {v11}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_a8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a5 .. :try_end_a8} :catch_12e

    .line 458
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_fa

    const-string v11, "com.samsung.android.support.targets"

    .line 460
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fa

    const-string/jumbo v11, "ro.product.name"

    const-string v13, ""

    .line 462
    invoke-static {v11, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, ","

    .line 463
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 465
    array-length v14, v13

    move v15, v7

    :goto_c7
    if-ge v15, v14, :cond_d7

    aget-object v5, v13, v15

    .line 466
    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    const/4 v5, 0x1

    goto :goto_d8

    :cond_d3
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_c7

    :cond_d7
    move v5, v7

    :goto_d8
    if-eqz v5, :cond_db

    goto :goto_fa

    .line 472
    :cond_db
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported targets("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") are specified but no matched one with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 480
    :cond_fa
    :goto_fa
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_84

    .line 447
    :cond_107
    :try_start_107
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate package info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_120
    .catchall {:try_start_107 .. :try_end_120} :catchall_120

    :catchall_120
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_12d

    .line 441
    :try_start_124
    invoke-virtual {v11}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_128

    goto :goto_12d

    :catchall_128
    move-exception v0

    move-object v2, v0

    :try_start_12a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12d
    :goto_12d
    throw v1
    :try_end_12e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12a .. :try_end_12e} :catch_12e

    :catch_12e
    move-exception v0

    .line 452
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse APEX package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 483
    :cond_150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has following APEX packages: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_171
    move-exception v0

    .line 434
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 435
    throw v0
.end method

.method public final validateApexSignature(Landroid/content/pm/PackageInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 351
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 352
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 353
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 356
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v4

    .line 357
    invoke-static {v4, v1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    const-string v5, " : "

    const-string v6, "Failed to parse APEX package "

    const/16 v7, -0x16

    if-nez v4, :cond_c7

    .line 364
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    .line 367
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_b0

    .line 376
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    iget-object v8, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 375
    invoke-static {v3, v8, v4}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 378
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-nez v8, :cond_89

    .line 383
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    .line 386
    invoke-virtual {v0, p0, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v3

    if-nez v3, :cond_88

    const/16 v3, 0x8

    .line 388
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_88

    .line 393
    :cond_5a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK-container signature of APEX package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and path "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not compatible with the one currently installed on device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    return-void

    .line 379
    :cond_89
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p1, v7, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 372
    :cond_b0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown apex package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_c7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v7, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/server/pm/PackageSessionVerifier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;

    move-result-object p2

    .line 154
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 155
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageSessionVerifier;->makeVerificationParams(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/VerificationParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 160
    :cond_35
    invoke-virtual {p2, v0}, Lcom/android/server/pm/VerificationParams;->verifyStage(Ljava/util/List;)V

    goto :goto_3c

    .line 162
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/pm/VerificationParams;->verifyStage()V

    :goto_3c
    return-void
.end method

.method public final verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_39

    .line 274
    const-class v0, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 275
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 279
    :try_start_14
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/rollback/RollbackManagerInternal;->notifyStagedSession(I)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_47

    :catch_1d
    move-exception v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notifyStagedSession for session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageSessionVerifier"

    .line 281
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 284
    :cond_39
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 285
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSessionVerifier;->retrieveRollbackIdForCommitSession(I)I

    move-result v1

    .line 288
    :cond_47
    :goto_47
    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->containsApexSession()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageSessionVerifier;->submitSessionToApexService(Lcom/android/server/pm/StagingManager$StagedSession;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_56
    if-ge v0, v1, :cond_64

    .line 294
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->validateApexSignature(Landroid/content/pm/PackageInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 296
    :cond_64
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 297
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 298
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->pruneCachedApksInApex(Ljava/util/List;)V

    :cond_6f
    return-void
.end method

.method public final verifyStaged(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .registers 5

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting preRebootVerification for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSessionVerifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
