.class public Lcom/android/server/BatteryService$8$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$8;

.field public final synthetic val$audiomode:I


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$8;I)V
    .registers 3

    .line 857
    iput-object p1, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iput p2, p0, Lcom/android/server/BatteryService$8$1;->val$audiomode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 861
    iget v0, p0, Lcom/android/server/BatteryService$8$1;->val$audiomode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 862
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 863
    iget-object p0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object p0, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    :cond_20
    if-nez v0, :cond_46

    .line 865
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 867
    iget-object p0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object p0, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    :cond_46
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6b

    .line 869
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 871
    iget-object p0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object p0, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6b
    :goto_6b
    return-void
.end method
