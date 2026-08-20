.class public final Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
.super Ljava/lang/Object;
.source "GeofenceService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GeoLocationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fputmLocation(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)V

    .line 314
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mcheckDeviceInsideOrOutsideGeo(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fputmLocation(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
