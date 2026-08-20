.class public Lcom/android/server/StorageManagerService$ObbState;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObbState"
.end annotation


# instance fields
.field public final canonicalPath:Ljava/lang/String;

.field public final nonce:I

.field public final ownerGid:I

.field public final rawPath:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final token:Landroid/os/storage/IObbActionListener;

.field public volId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V
    .registers 8

    .line 802
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 804
    iput-object p3, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 805
    invoke-static {p4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 806
    iput-object p5, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 807
    iput p6, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 808
    iput-object p7, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 830
    new-instance v0, Lcom/android/server/StorageManagerService$UnmountObbAction;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 831
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbActionHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmObbActionHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-interface {p0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public link()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObbState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "rawPath="

    .line 845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",canonicalPath="

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ownerGid="

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",token="

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",binder="

    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",volId="

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 851
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlink()V
    .registers 3

    .line 839
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
