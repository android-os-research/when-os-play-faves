.class public final Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;
.super Landroid/hardware/devicestate/DeviceStateManagerInternal;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public static synthetic $r8$lambda$MR506TTA6Q_idEjpG-NCmRZVPxY(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->lambda$displayEnabled$0(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 992
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method

.method public static synthetic lambda$displayEnabled$0(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    .line 1007
    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mnotifyPolicyIfNeeded(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public displayEnabled()V
    .registers 4

    .line 1003
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1004
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fputmDisplayEnabled(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V

    .line 1005
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mupdatePendingStateLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    .line 1006
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_24

    .line 1007
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_24
    move-exception p0

    .line 1006
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getSupportedStateIdentifiers()[I
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 996
    :try_start_7
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 997
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setAwake(Z)V
    .registers 2

    .line 1014
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/FoldStatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldStatePolicy;->setAwake(Z)V

    return-void
.end method

.method public setTableModeEnabled(Z)V
    .registers 2

    .line 1026
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/FoldStatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldStatePolicy;->setTableModeEnabled(Z)V

    return-void
.end method

.method public updateFoldingSensorState(Z)V
    .registers 2

    .line 1019
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/FoldStatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldStatePolicy;->updateFoldSensorListener(Z)V

    return-void
.end method
