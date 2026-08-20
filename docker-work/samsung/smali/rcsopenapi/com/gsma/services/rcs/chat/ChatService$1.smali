.class Lcom/gsma/services/rcs/chat/ChatService$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/chat/ChatService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/ChatService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/rcs/chat/ChatService;

    .line 89
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 91
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    invoke-static {p2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 92
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    # getter for: Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$000(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 93
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    # getter for: Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$100(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    .line 95
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 98
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/chat/ChatService;->setApi(Landroid/os/IInterface;)V

    .line 99
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    # getter for: Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$200(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 100
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/ChatService$1;->this$0:Lcom/gsma/services/rcs/chat/ChatService;

    # getter for: Lcom/gsma/services/rcs/chat/ChatService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/ChatService;->access$300(Lcom/gsma/services/rcs/chat/ChatService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 101
    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    .line 103
    :cond_19
    return-void
.end method
