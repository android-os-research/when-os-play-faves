.class public final Lcom/android/server/location/geofence/GeofenceProxy;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeofenceProvider"

.field public static final TAG:Ljava/lang/String; = "GeofenceProxy"


# instance fields
.field public volatile mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field public final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;Lcom/android/server/location/injector/Injector;)V
    .registers 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/location/IGpsGeofenceHardware;

    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    const-string p2, "com.android.location.service.GeofenceProvider"

    const v0, 0x1110137

    const v1, 0x1040354

    .line 71
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p2

    const-string v0, "GeofenceProxy"

    .line 69
    invoke-static {p1, v0, p2, p0, p3}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    return-void
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;Lcom/android/server/location/injector/Injector;)Lcom/android/server/location/geofence/GeofenceProxy;
    .registers 4

    .line 54
    new-instance v0, Lcom/android/server/location/geofence/GeofenceProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceProxy;-><init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;Lcom/android/server/location/injector/Injector;)V

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/server/location/geofence/GeofenceProxy;->register(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceProxy;->updateGeofenceHardware(Landroid/os/IBinder;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceProxy;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onUnbind()V
    .registers 1

    return-void
.end method

.method public final register(Landroid/content/Context;)Z
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 86
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;

    invoke-direct {v2, p0}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    const/4 p0, 0x1

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2, p0, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_1f
    return v0
.end method

.method public updateGeofenceHardware(Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {p1, p0}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V

    return-void
.end method
