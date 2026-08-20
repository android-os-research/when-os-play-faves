.class public Lcom/android/server/BatteryService$LedSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LedSettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 901
    iput-object p1, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 902
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    .line 907
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 909
    iget-object p1, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 910
    :try_start_a
    iget-object v0, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "led_indicator_charing"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    move v2, v5

    :goto_25
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmLedChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 912
    iget-object v1, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "led_indicator_low_battery"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->-$$Nest$fputmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 913
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Led Charging Settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Led Low Battery Settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object p0, p0, Lcom/android/server/BatteryService$LedSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 917
    monitor-exit p1

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit p1
    :try_end_81
    .catchall {:try_start_a .. :try_end_81} :catchall_7f

    throw p0
.end method
