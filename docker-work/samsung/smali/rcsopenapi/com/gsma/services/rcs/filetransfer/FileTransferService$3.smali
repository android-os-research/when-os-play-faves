.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;
.super Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.source "FileTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;->addEventListener(Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 501
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    iput-object p2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
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

    .line 533
    .local p2, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 534
    .local v0, "setTransferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 535
    return-void
.end method

.method public onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .registers 12
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

    .line 518
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 520
    return-void
.end method

.method public onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .registers 12
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

    .line 544
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 546
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 14
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 528
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$3;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/GroupFileTransferListener;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 509
    return-void
.end method
