.class Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;
.super Ljava/lang/Object;
.source "VideoSharingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    .line 99
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 101
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->setApi(Landroid/os/IInterface;)V

    .line 102
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$000(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 103
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$100(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    .line 105
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 108
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->setApi(Landroid/os/IInterface;)V

    .line 109
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$200(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 110
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$300(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    .line 111
    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    .line 113
    :cond_19
    return-void
.end method
