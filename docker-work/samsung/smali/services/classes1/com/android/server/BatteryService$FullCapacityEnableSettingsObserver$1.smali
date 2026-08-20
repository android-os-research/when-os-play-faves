.class public Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 734
    iget-object v0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 735
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 737
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLifeExtender(Lcom/android/server/BatteryService;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 738
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "!@battery life extender used before!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmLifeExtender(Lcom/android/server/BatteryService;Z)V

    .line 741
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-$$Nest$fgetmUpdateBatteryUsageExtenderRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v2, "protect_battery"

    const/4 v4, -0x2

    .line 742
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 745
    :cond_4a
    iget-object v2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "protect_battery"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_59

    move v3, v4

    :cond_59
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmFullCapacityEnable(Lcom/android/server/BatteryService;Z)V

    .line 746
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@mFullCapacityEnable Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmFullCapacityEnable(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmUpdateBatteryUsageFullCapacityEnableRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    monitor-exit v0

    return-void

    :catchall_91
    move-exception p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_9 .. :try_end_93} :catchall_91

    throw p0
.end method
