.class public Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;,
        Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    }
.end annotation


# instance fields
.field private final transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)V
    .registers 2
    .param p1, "transferIntf"    # Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    .line 402
    return-void
.end method


# virtual methods
.method public abortTransfer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->abortTransfer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 680
    nop

    .line 681
    return-void

    .line 678
    :catch_7
    move-exception v0

    .line 679
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

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->acceptInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 654
    nop

    .line 655
    return-void

    .line 652
    :catch_7
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public canResumeTransfer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isAllowedToResumeTransfer()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 724
    :catch_7
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChatId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 427
    :catch_7
    move-exception v0

    .line 428
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

    .line 468
    :try_start_0
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$Direction;->values()[Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getDirection()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 469
    :catch_d
    move-exception v0

    .line 470
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

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFile()Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 511
    :catch_7
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 525
    :catch_7
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileExpiration()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileExpiration()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 539
    :catch_7
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileIcon()Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIcon()Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 483
    :catch_7
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileIconExpiration()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIconExpiration()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 553
    :catch_7
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileIconMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 497
    :catch_7
    move-exception v0

    .line 498
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

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 582
    :catch_7
    move-exception v0

    .line 583
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

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 596
    :catch_7
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFileType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getFileType()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 625
    :catch_7
    move-exception v0

    .line 626
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

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getMimeType()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 567
    :catch_7
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 639
    :catch_7
    move-exception v0

    .line 640
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

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 455
    :catch_7
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 610
    :catch_7
    move-exception v0

    .line 611
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

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestamp()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 781
    :catch_7
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestampDelivered()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampDelivered()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 813
    :catch_7
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestampDisplayed()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampDisplayed()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 829
    :catch_7
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestampSent()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTimestampSent()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 797
    :catch_7
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransferId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->getTransferId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 441
    :catch_7
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAllowedToPauseTransfer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->canPauseTransfer()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 695
    :catch_7
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAllowedToResendTransfer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->canResendTransfer()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 751
    :catch_7
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isExpiredDelivery()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isExpiredDelivery()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 857
    :catch_7
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isGroupTransfer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isGroupTransfer()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 413
    :catch_7
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isRead()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->isRead()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 843
    :catch_7
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public pauseTransfer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->pauseTransfer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 710
    nop

    .line 711
    return-void

    .line 708
    :catch_7
    move-exception v0

    .line 709
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

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->rejectInvitation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 667
    nop

    .line 668
    return-void

    .line 665
    :catch_7
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resendTransfer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->resendTransfer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 767
    nop

    .line 768
    return-void

    .line 765
    :catch_7
    move-exception v0

    .line 766
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumeTransfer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer;->transferInf:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->resumeTransfer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catch_7
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
