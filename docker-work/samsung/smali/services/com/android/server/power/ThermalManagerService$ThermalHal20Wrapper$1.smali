.class public Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;
.super Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V
    .registers 2

    .line 944
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/hardware/thermal/V2_0/Temperature;)V
    .registers 6

    .line 948
    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget p1, p1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 953
    :try_start_11
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 955
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw p0
.end method
