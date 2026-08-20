.class public Lcom/android/server/BatteryService$1$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$1;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/android/server/BatteryService$1$2;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/android/server/BatteryService$1$2;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 602
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$1$2;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmScreenOn(Lcom/android/server/BatteryService;Z)V

    .line 604
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    if-eqz v1, :cond_1c

    .line 605
    iget-object v1, p0, Lcom/android/server/BatteryService$1$2;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->sendScreenState()V

    .line 608
    :cond_1c
    iget-object p0, p0, Lcom/android/server/BatteryService$1$2;->this$1:Lcom/android/server/BatteryService$1;

    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 609
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p0
.end method
