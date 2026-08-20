.class public interface abstract Lcom/mediatek/common/geofence/IMtkGeofence;
.super Ljava/lang/Object;
.source "IMtkGeofence.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/geofence/IMtkGeofence$Stub;,
        Lcom/mediatek/common/geofence/IMtkGeofence$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.geofence.IMtkGeofence"


# virtual methods
.method public abstract blacklist addCircularFence(IDDDIIIILcom/mediatek/common/geofence/IMtkGeofenceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist pauseGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeGeofence(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resumeGeofence(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
