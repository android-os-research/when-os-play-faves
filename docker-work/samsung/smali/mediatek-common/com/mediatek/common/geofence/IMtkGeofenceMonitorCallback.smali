.class public interface abstract Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
.super Ljava/lang/Object;
.source "IMtkGeofenceMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub;,
        Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.geofence.IMtkGeofenceMonitorCallback"


# virtual methods
.method public abstract blacklist onMonitoringSystemChange(IIILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
