.class public Lcom/android/server/deviceidle/BluetoothConstraint;
.super Ljava/lang/Object;
.source "BluetoothConstraint.java"

# interfaces
.implements Lcom/android/server/deviceidle/IDeviceIdleConstraint;


# static fields
.field public static final INACTIVITY_TIMEOUT_MS:J = 0x124f80L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public volatile mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLocalService:Lcom/android/server/DeviceIdleInternal;

.field public volatile mMonitoring:Z

.field public final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mTimeoutCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1K8F0zMQwQMmr8Xliy-3CRAPeHA(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalService(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAndReportActiveLocked(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/deviceidle/BluetoothConstraint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 124
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$1;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$1;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    iput-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 56
    const-class p2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method

.method public static isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 115
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x7

    .line 116
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 136
    invoke-virtual {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->cancelMonitoringDueToTimeout()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancelMonitoringDueToTimeout()V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 91
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {v1, p0, v0}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 93
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 62
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    .line 75
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x124f80

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->updateAndReportActiveLocked()V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_34

    .line 79
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .registers 3

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 86
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateAndReportActiveLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->isBluetoothConnected(Landroid/bluetooth/BluetoothManager;)Z

    move-result v0

    .line 102
    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    if-eq v0, v1, :cond_13

    .line 103
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    iget-boolean v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mConnected:Z

    invoke-interface {v0, p0, v1}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    :cond_13
    return-void
.end method
