.class public Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
.super Ljava/lang/Object;
.source "FileTransferServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    .registers 3
    .param p1, "ftInf"    # Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    .line 127
    return-void
.end method


# virtual methods
.method public getImageResizeOption()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImageResizeOption() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1f

    .line 276
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getImageResizeOption()I

    move-result v0

    .line 277
    .local v0, "value":I
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    .line 278
    .local v1, "result":Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    return-object v1

    .line 279
    .end local v0    # "value":I
    .end local v1    # "result":Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    :catch_14
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMaxAudioMessageDuration()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxAudioMessageLength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageLength()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 344
    :catch_e
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxAudioMessageLength()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxAudioMessageLength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageLength()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 168
    :catch_e
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxFileTransfers()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxFileTransfers() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1b

    .line 314
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxFileTransfers()I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 315
    :catch_10
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMaxSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxSize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxSize()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 153
    :catch_e
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWarnSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getWarnSize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getWarnSize()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 139
    :catch_e
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoAcceptEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptEnabled()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 180
    :catch_e
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptInRoamingEnabled() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1b

    .line 237
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptInRoamingEnabled()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 238
    :catch_10
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAutoAcceptModeChangeable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptModeChangeable() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1b

    .line 216
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptModeChangeable()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 217
    :catch_10
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isGroupFileTransferSupported()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isGroupFileTransferSupported() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1b

    .line 331
    :try_start_b
    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isGroupFileTransferSupported()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    .line 332
    :catch_10
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setAutoAccept(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoAccept() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_2c

    .line 198
    :try_start_1c
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAccept(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 201
    nop

    .line 205
    return-void

    .line 199
    :catch_21
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setAutoAcceptInRoaming(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAutoAcceptInRoaming()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1b

    .line 259
    :try_start_b
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAcceptInRoaming(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 262
    nop

    .line 266
    return-void

    .line 260
    :catch_10
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setImageResizeOption(Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;)V
    .registers 5
    .param p1, "option"    # Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setImageResizeOption() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_1f

    .line 296
    :try_start_b
    invoke-virtual {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setImageResizeOption(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    .line 299
    nop

    .line 303
    return-void

    .line 297
    :catch_14
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
