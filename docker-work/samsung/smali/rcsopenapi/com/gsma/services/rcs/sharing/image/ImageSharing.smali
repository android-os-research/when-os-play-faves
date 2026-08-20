.class public Lcom/gsma/services/rcs/sharing/image/ImageSharing;
.super Ljava/lang/Object;
.source "ImageSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    }
.end annotation


# instance fields
.field private final mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    .registers 2
    .param p1, "sharingInf"    # Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 41
    return-void
.end method


# virtual methods
.method public abortSharing()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 486
    nop

    .line 487
    return-void

    .line 484
    :catch_7
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->acceptInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 462
    nop

    .line 463
    return-void

    .line 460
    :catch_7
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getDirection()I

    move-result v0

    .line 442
    .local v0, "code":I
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$Direction;->values()[Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 443
    .local v4, "direction":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {v4}, Lcom/gsma/services/rcs/RcsService$Direction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 444
    return-object v4

    .line 442
    .end local v4    # "direction":Lcom/gsma/services/rcs/RcsService$Direction;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 447
    :cond_22
    sget-object v1, Lcom/gsma/services/rcs/RcsService$Direction;->IRRELEVANT:Lcom/gsma/services/rcs/RcsService$Direction;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v1

    .line 448
    .end local v0    # "code":I
    :catch_25
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFile()Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 348
    :catch_b
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 361
    :catch_7
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 375
    :catch_7
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileSize1()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 492
    :catch_b
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getFileType()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 388
    :catch_7
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 335
    :catch_7
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSharingId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 322
    :catch_7
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 416
    :catch_7
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getTimeStamp()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 403
    :catch_7
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->rejectInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 474
    nop

    .line 475
    return-void

    .line 472
    :catch_7
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
