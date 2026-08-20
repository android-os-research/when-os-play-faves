.class public Lcom/android/server/display/WifiDisplayMcfManager$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayMcfManager.java"


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

    .line 425
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_5c

    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 433
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xf

    if-eq p1, p2, :cond_38

    const/16 v0, 0x10

    if-ne p1, v0, :cond_ba

    :cond_38
    if-ne p1, p2, :cond_3b

    const/4 v1, 0x1

    .line 437
    :cond_3b
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 439
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 438
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ba

    :cond_5c
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string/jumbo p1, "state"

    .line 442
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 443
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 445
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 444
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ba

    :cond_8c
    const-string p2, "com.samsung.android.nearbyscanning"

    .line 446
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 447
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$misNearbyScanningOn(Lcom/android/server/display/WifiDisplayMcfManager;)Z

    move-result p1

    .line 448
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$5;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 450
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 449
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_ba
    :goto_ba
    return-void
.end method
