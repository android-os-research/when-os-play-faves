.class public Lcom/android/server/deviceidle/TvConstraintController;
.super Ljava/lang/Object;
.source "TvConstraintController.java"

# interfaces
.implements Lcom/android/server/deviceidle/ConstraintController;


# instance fields
.field public final mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mHandler:Landroid/os/Handler;

    .line 44
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth"

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 48
    new-instance v1, Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/deviceidle/BluetoothConstraint;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 49
    :goto_24
    iput-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_c

    .line 55
    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    const/4 v1, 0x1

    const-string v2, "bluetooth"

    invoke-interface {p0, v0, v2, v1}, Lcom/android/server/DeviceIdleInternal;->registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public stop()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_9

    .line 63
    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {p0, v0}, Lcom/android/server/DeviceIdleInternal;->unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    :cond_9
    return-void
.end method
