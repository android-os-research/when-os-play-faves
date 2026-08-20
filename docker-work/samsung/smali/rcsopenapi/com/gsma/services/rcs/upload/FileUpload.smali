.class public Lcom/gsma/services/rcs/upload/FileUpload;
.super Ljava/lang/Object;
.source "FileUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/FileUpload$State;
    }
.end annotation


# instance fields
.field private uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    .registers 2
    .param p1, "uploadInf"    # Lcom/gsma/services/rcs/upload/IFileUpload;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    .line 137
    return-void
.end method


# virtual methods
.method public abortUpload()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->abortUpload()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 202
    nop

    .line 203
    return-void

    .line 200
    :catch_7
    move-exception v0

    .line 201
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

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getFile()Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 188
    :catch_7
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 147
    :catch_7
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
