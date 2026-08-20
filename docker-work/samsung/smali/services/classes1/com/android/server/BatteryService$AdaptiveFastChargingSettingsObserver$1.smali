.class public Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 936
    iget-object v0, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 937
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 938
    iget-object v2, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "adaptive_fast_charging"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_24

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    .line 940
    :goto_25
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V

    .line 941
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptiveFastCharging Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p0, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 944
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_55

    throw p0
.end method
