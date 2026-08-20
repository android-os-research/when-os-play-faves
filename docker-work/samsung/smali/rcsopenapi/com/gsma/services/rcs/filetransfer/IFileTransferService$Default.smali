.class public Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Default;
.super Ljava/lang/Object;
.source "IFileTransferService.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
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
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public canTransferFileToGroupChat(Ljava/lang/String;)Z
    .registers 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    .local p1, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .registers 2
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public deleteGroupFileTransfers()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public deleteGroupFileTransfersByChatId(Ljava/lang/String;)V
    .registers 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public deleteOneToOneFileTransfers()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .registers 3
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileTransfers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .registers 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .registers 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRegistered()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .registers 2
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    .local p1, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public setAutoAccept(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public setAutoAcceptInRoaming(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public setImageResizeOption(I)V
    .registers 2
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .registers 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
