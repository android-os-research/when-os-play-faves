.class public Lcom/android/server/display/DisplayManagerService$DeviceStateListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateListener"
.end annotation


# instance fields
.field public mBaseState:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 6015
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 6017
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    return-void
.end method

.method private synthetic lambda$onStateChanged$0(I)V
    .registers 2

    .line 6049
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setActiveScreenParameter(I)V

    return-void
.end method

.method private synthetic lambda$onStateChanged$1()V
    .registers 2

    .line 6060
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDualScreenPolicy(Lcom/android/server/display/DisplayManagerService;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onTransitionStarted(I)V

    return-void
.end method


# virtual methods
.method public onBaseStateChanged(I)V
    .registers 2

    .line 6070
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    return-void
.end method

.method public onStateChanged(I)V
    .registers 4

    .line 6021
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->mBaseState:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 6022
    :goto_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 6023
    :try_start_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    .line 6024
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(IZ)V

    .line 6065
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p0
.end method
