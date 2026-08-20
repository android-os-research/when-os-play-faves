.class Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkGeofenceMonitorCallback.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, "com.mediatek.common.geofence.IMtkGeofenceMonitorCallback"

    return-object v0
.end method

.method public blacklist onMonitoringSystemChange(IIILandroid/location/Location;)V
    .registers 9
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "sourceTechnologies"    # I
    .param p4, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.common.geofence.IMtkGeofenceMonitorCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw v1
.end method
