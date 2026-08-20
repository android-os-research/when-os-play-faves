.class public Lcom/android/server/BatteryService$1;
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

    .line 578
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 582
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 583
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$1$1;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$1$1;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    :cond_1b
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 597
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 598
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$1$2;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$1$2;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    :cond_32
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 612
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 613
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$1$3;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$1$3;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    :cond_49
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 644
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 646
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSaveBatteryUsageRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmEnableIqi(Lcom/android/server/BatteryService;)Z

    move-result p0

    if-eqz p0, :cond_71

    const-string/jumbo p0, "persist.sys.shutdown_received"

    const-string/jumbo p1, "true"

    .line 649
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    return-void
.end method
