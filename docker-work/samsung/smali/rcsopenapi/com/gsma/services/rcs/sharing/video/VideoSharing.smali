.class public Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.super Ljava/lang/Object;
.source "VideoSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$Encoding;
    }
.end annotation


# instance fields
.field private sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    .registers 2
    .param p1, "sharingInf"    # Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    .line 243
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

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->abortSharing()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 373
    nop

    .line 374
    return-void

    .line 371
    :catch_7
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V
    .registers 5
    .param p1, "player"    # Lcom/gsma/services/rcs/sharing/video/VideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 349
    nop

    .line 350
    return-void

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 334
    :catch_7
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDuration()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDuration()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 397
    :catch_7
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 320
    :catch_7
    move-exception v0

    .line 321
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

    .line 266
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 267
    :catch_c
    move-exception v0

    .line 268
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

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 253
    :catch_7
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 307
    :catch_7
    move-exception v0

    .line 308
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

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getTimeStamp()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 385
    :catch_7
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 293
    :catch_7
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoEncoding()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 280
    :catch_7
    move-exception v0

    .line 281
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

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->rejectInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 361
    nop

    .line 362
    return-void

    .line 359
    :catch_7
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
