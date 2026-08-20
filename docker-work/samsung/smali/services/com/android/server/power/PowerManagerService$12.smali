.class public Lcom/android/server/power/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 11013
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 14

    .line 11016
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 11017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 11018
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_ba

    .line 11019
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    .line 11020
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_af

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1e

    goto/16 :goto_ba

    :cond_1e
    const-string p1, "PowerManagerService"

    const-string v5, "WirelessChargerSContextListener : Move"

    .line 11027
    invoke-static {p1, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11028
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v4, p1, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    .line 11029
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v4, :cond_ba

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object p1

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    if-nez p1, :cond_ba

    const-string p1, "PowerManagerService"

    const-string v4, "SContextListener : Unregister SContextListener"

    .line 11030
    invoke-static {p1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11031
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWirelessChargerSContextListener(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object p1

    invoke-virtual {v4, p1, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 11032
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    .line 11034
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 11035
    :try_start_53
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPassedWakeupTime(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gez v1, :cond_aa

    const-string v1, "PowerManagerService"

    const-string v2, "WirelessChargerSContextListener : received move lately"

    .line 11036
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11037
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmPassedWakeupTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 11038
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 11039
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " powered change"

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenOnReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 11040
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/power/PowerGroup;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const-string v8, "android.server.power:POWER"

    const/16 v9, 0x3e8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 11041
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e8

    .line 11040
    invoke-static/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 11042
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 11044
    :cond_aa
    monitor-exit p1

    goto :goto_ba

    :catchall_ac
    move-exception p0

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_53 .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    const-string p1, "PowerManagerService"

    const-string v1, "WirelessChargerSContextListener : No Move"

    .line 11023
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11024
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    :cond_ba
    :goto_ba
    return-void
.end method
