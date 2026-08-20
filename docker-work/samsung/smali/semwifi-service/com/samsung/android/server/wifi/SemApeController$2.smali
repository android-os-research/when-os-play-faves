.class Lcom/samsung/android/server/wifi/SemApeController$2;
.super Landroid/content/BroadcastReceiver;
.source "SemApeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemApeController;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeController;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$2;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.wifi.SET_APE_POLICY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    const-string v0, "enable"

    .line 182
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 183
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController$2;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$2;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_28
    return-void
.end method
