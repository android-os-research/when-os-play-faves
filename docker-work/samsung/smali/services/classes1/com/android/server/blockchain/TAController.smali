.class public Lcom/android/server/blockchain/TAController;
.super Landroid/blockchain/ITAController$Stub;
.source "TAController.java"


# static fields
.field public static final DEBUG:Z

.field public static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field public static final TAG:Ljava/lang/String; = "BlockchainTZService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field public mContext:Landroid/content/Context;

.field public mNative:Lcom/android/server/blockchain/BlockchainTZNative;

.field public mTAId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/blockchain/BlockchainTZServiceConfig$TAConfig;)V
    .registers 13

    .line 38
    invoke-direct {p0}, Landroid/blockchain/ITAController$Stub;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 39
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; maxSendCmdSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; maxRecvRespSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockchainTZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_34
    iput-object p1, p0, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/android/server/blockchain/TAController;->mTAId:I

    .line 42
    new-instance p1, Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v4, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/blockchain/BlockchainTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    return-void
.end method


# virtual methods
.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "loadTA"

    .line 66
    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 67
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    const-string v1, "BlockchainTZService"

    if-eqz v0, :cond_11

    const-string v2, "TAController::loadTA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-nez p1, :cond_15

    const/4 p0, 0x0

    return p0

    .line 71
    :cond_15
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    if-eqz v0, :cond_3f

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA fd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v1, p0, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/blockchain/BlockchainTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p0
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_52

    .line 79
    :try_start_49
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_51
    return p0

    :catchall_52
    move-exception p0

    .line 79
    :try_start_53
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    :goto_5b
    throw p0
.end method

.method public processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .registers 5

    .line 47
    invoke-virtual {p0}, Landroid/blockchain/ITAController$Stub;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 48
    monitor-enter p0

    :try_start_7
    const-string/jumbo v0, "processTACommand"

    .line 49
    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 50
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_3b

    const-string v0, "BlockchainTZService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blockchain/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3b
    iget v0, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_45

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 54
    :cond_45
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/blockchain/BlockchainTZNative;->processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 56
    monitor-exit p0

    return-object p1

    :catchall_50
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw p1

    :cond_53
    const-string p0, "BlockchainTZService"

    const-string p1, "binder for cmd is died"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public unloadTA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "unloadTA"

    .line 90
    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 91
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "BlockchainTZService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 93
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0}, Lcom/android/server/blockchain/BlockchainTZNative;->unloadTA()V

    .line 94
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
