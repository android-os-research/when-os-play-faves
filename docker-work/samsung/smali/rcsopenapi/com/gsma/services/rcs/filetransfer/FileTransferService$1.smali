.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;
.super Ljava/lang/Object;
.source "FileTransferService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    .line 131
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 133
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    invoke-static {p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 134
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    # getter for: Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$000(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 135
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    # getter for: Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$100(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    .line 137
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 140
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->setApi(Landroid/os/IInterface;)V

    .line 141
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    # getter for: Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$200(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 142
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$1;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    # getter for: Lcom/gsma/services/rcs/filetransfer/FileTransferService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;->access$300(Lcom/gsma/services/rcs/filetransfer/FileTransferService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 143
    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    .line 147
    :cond_19
    return-void
.end method
