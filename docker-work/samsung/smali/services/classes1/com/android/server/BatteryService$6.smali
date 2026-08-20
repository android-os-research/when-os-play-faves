.class public Lcom/android/server/BatteryService$6;
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

    .line 778
    iput-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 780
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 781
    sget-object p2, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 782
    iget-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$6$1;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$6;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 790
    :cond_1b
    sget-object p2, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 791
    iget-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$6$2;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$6$2;-><init>(Lcom/android/server/BatteryService$6;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    :goto_31
    return-void
.end method
