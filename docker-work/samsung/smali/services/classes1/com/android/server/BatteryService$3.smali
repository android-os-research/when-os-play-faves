.class public Lcom/android/server/BatteryService$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 673
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 674
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    const-string v0, "OTG_CHARGE_BLOCK"

    .line 675
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 676
    iget-object p2, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/BatteryService$3$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$3$1;-><init>(Lcom/android/server/BatteryService$3;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method
