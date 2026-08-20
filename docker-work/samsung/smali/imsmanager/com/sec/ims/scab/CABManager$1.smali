.class Lcom/sec/ims/scab/CABManager$1;
.super Ljava/lang/Object;
.source "CABManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/scab/CABManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/scab/CABManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/ims/scab/CABManager;

    .line 59
    iput-object p1, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 68
    invoke-static {p2}, Lcom/sec/ims/scab/ICABService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/scab/ICABService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$sfputmImsCABService(Lcom/sec/ims/scab/ICABService;)V

    .line 69
    const-string v0, "CABManager"

    const-string v1, "Connected to CABService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 71
    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onConnected()V

    .line 73
    :cond_1f
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$sfputmImsCABService(Lcom/sec/ims/scab/ICABService;)V

    .line 83
    const-string v0, "CABManager"

    const-string v1, "Disconnected to CABService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 85
    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onDisconnected()V

    .line 87
    :cond_1c
    return-void
.end method
