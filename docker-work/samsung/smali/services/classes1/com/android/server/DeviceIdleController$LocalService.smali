.class public Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 2019
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 2056
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V

    return-void
.end method

.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    .line 2047
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V

    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJIZILjava/lang/String;I)V
    .registers 18

    move-object v0, p0

    .line 2064
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move/from16 v1, p8

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V

    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 2

    .line 2040
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    return-void
.end method

.method public getNotificationAllowlistDuration()J
    .registers 3

    .line 2071
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .registers 1

    .line 2104
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 1

    .line 2099
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getTempAllowListType(II)I
    .registers 3

    .line 2120
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetTempAllowListType(Lcom/android/server/DeviceIdleController;II)I

    move-result p0

    return p0
.end method

.method public isAppOnWhitelist(I)Z
    .registers 2

    .line 2088
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result p0

    return p0
.end method

.method public onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 4

    .line 2022
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 2023
    :try_start_3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->-$$Nest$monConstraintStateChangedLocked(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2024
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4

    .line 2030
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->-$$Nest$mregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    .line 2109
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method

.method public setAlarmsActive(Z)V
    .registers 2

    .line 2082
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    return-void
.end method

.method public setJobsActive(Z)V
    .registers 2

    .line 2076
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    return-void
.end method

.method public unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2

    .line 2035
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$munregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method public unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    .line 2114
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$munregisterStationaryListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method
