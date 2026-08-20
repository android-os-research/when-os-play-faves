.class public Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .registers 6

    .line 814
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 817
    :goto_d
    invoke-direct {v0, v1, v2, p2, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 820
    :try_start_14
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1f

    .line 822
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw p0
.end method
