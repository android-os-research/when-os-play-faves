.class public Lcom/android/server/BatteryService$4;
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

    .line 693
    iput-object p1, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 695
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 696
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 697
    iget-object p1, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$4$1;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    :cond_1b
    const-string p2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 708
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 709
    iget-object p1, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$4$2;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$4$2;-><init>(Lcom/android/server/BatteryService$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    :goto_31
    return-void
.end method
