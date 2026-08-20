.class public Lcom/gsma/services/rcs/upload/IFileUploadListener$Default;
.super Ljava/lang/Object;
.source "IFileUploadListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V
    .registers 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/gsma/services/rcs/upload/FileUpload$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .registers 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
