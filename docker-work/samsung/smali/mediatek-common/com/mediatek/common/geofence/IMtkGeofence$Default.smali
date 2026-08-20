.class public Lcom/mediatek/common/geofence/IMtkGeofence$Default;
.super Ljava/lang/Object;
.source "IMtkGeofence.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCircularFence(IDDDIIIILcom/mediatek/common/geofence/IMtkGeofenceCallback;)Z
    .registers 14
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsivenessMs"    # I
    .param p11, "unknownTimerMs"    # I
    .param p12, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pauseGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resumeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method
