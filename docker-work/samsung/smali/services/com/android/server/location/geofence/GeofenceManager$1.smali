.class public Lcom/android/server/location/geofence/GeofenceManager$1;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/geofence/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 2

    .line 246
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method
