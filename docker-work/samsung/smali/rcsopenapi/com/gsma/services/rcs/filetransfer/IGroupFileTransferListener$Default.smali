.class public Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Default;
.super Ljava/lang/Object;
.source "IGroupFileTransferListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeleted(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 22
    .local p2, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p4, "state"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p4, "state"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .registers 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
