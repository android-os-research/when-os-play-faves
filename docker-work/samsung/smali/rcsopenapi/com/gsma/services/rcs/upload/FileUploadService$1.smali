.class Lcom/gsma/services/rcs/upload/FileUploadService$1;
.super Ljava/lang/Object;
.source "FileUploadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/FileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/upload/FileUploadService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/rcs/upload/FileUploadService;

    .line 114
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 116
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {p2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/upload/FileUploadService;->setApi(Landroid/os/IInterface;)V

    .line 117
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    # getter for: Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$000(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 118
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    # getter for: Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$100(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    .line 119
    invoke-static {}, Lcom/gsma/services/rcs/upload/FileUploadService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_34
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 124
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/upload/FileUploadService;->setApi(Landroid/os/IInterface;)V

    .line 125
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    # getter for: Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$200(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 126
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$1;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    # getter for: Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$300(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    .line 127
    invoke-static {}, Lcom/gsma/services/rcs/upload/FileUploadService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_33
    return-void
.end method
