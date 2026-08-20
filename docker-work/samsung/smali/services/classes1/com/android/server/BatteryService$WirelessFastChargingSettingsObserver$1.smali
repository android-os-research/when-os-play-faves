.class public Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;)V
    .registers 2

    .line 1012
    iput-object p1, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1015
    iget-object v0, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1016
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1017
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "wireless_fast_charging"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_25

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 1018
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WirelessFastCharging Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object p0, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetWirelessFastCharging(Lcom/android/server/BatteryService;Z)V

    .line 1021
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_56

    throw p0
.end method
