.class public Lcom/android/server/display/WifiDisplayMcfManager$3;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayMcfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 5

    .line 385
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 389
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x64

    .line 388
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    .line 395
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 399
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 398
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceRemoteException()V
    .registers 1

    return-void
.end method
