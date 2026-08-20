.class public Lcom/android/server/BatteryService$1$3;
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

    .line 613
    iput-object p1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 616
    iget-object v0, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 619
    :try_start_15
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "led_indicator_charing"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x0

    if-ne v3, v5, :cond_27

    move v3, v5

    goto :goto_28

    :cond_27
    move v3, v6

    :goto_28
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmLedChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 620
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_3a

    move v3, v5

    goto :goto_3b

    :cond_3a
    move v3, v6

    :goto_3b
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 623
    iget-object v2, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v2, v2, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "show_wireless_charger_menu"

    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_4c

    goto :goto_4d

    :cond_4c
    move v5, v6

    .line 624
    :goto_4d
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;Z)V

    .line 627
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USER_SWITCHED: Led Charging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Led Low Battery:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " wfc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v4, v4, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-$$Nest$fgetmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_15 .. :try_end_91} :catchall_b5

    .line 631
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 632
    :try_start_9a
    iget-object v1, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v1, v1, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 634
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v1, :cond_b0

    .line 635
    iget-object p0, p0, Lcom/android/server/BatteryService$1$3;->this$1:Lcom/android/server/BatteryService$1;

    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    .line 638
    :cond_b0
    monitor-exit v2

    return-void

    :catchall_b2
    move-exception p0

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_9a .. :try_end_b4} :catchall_b2

    throw p0

    :catchall_b5
    move-exception p0

    .line 630
    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0
.end method
