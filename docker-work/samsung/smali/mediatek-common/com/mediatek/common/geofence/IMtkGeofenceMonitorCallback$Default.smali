.class public Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Default;
.super Ljava/lang/Object;
.source "IMtkGeofenceMonitorCallback.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMonitoringSystemChange(IIILandroid/location/Location;)V
    .registers 5
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "sourceTechnologies"    # I
    .param p4, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
