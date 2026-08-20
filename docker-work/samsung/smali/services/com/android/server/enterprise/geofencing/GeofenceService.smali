.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field public static final CHECK_DEVICE_POSITION:I = 0x1

.field public static final DEFAULT_TIME_LIMIT:I = 0xea60

.field public static final REFRESH_GEOFENCING:I = 0x3

.field public static final START_GEOFENCING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GeofenceService"

.field public static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field public mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLocation:Landroid/location/Location;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLocation(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDeviceInsideOrOutsideGeo(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeleteGeofenceActiveListByAdmin(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageNameForUid(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceInsideGeofence(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mloadGeofenceActiveList(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 106
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 107
    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 144
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 129
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->initializeHandlerThread()V

    .line 131
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 133
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static deserializeGeoFence([B)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 1314
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1315
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 1316
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    return-object v0
.end method


# virtual methods
.method public final calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/BoundingBox;"
        }
    .end annotation

    if-eqz p1, :cond_5c

    .line 1793
    new-instance p0, Lcom/samsung/android/knox/location/BoundingBox;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    const/4 v0, 0x1

    .line 1794
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 1795
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1797
    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v4, p0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v2, v4

    if-gez v4, :cond_39

    .line 1798
    iput-object v1, p0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1800
    :cond_39
    iget-object v4, p0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_43

    .line 1801
    iput-object v1, p0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1803
    :cond_43
    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v4, p0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4f

    .line 1804
    iput-object v1, p0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1806
    :cond_4f
    iget-object v4, p0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_59

    .line 1808
    iput-object v1, p0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_5c
    const/4 p0, 0x0

    :cond_5d
    return-object p0
.end method

.method public final checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .registers 9

    const/4 p0, 0x0

    if-eqz p1, :cond_31

    .line 1445
    iget-object v0, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v0, :cond_8

    goto :goto_31

    .line 1447
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1448
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1450
    iget-object p1, p2, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_31

    iget-object p1, p2, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_31

    iget-object p1, p2, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_31

    iget-object p1, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide p1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double p1, v2, p1

    if-ltz p1, :cond_31

    const/4 p0, 0x1

    :cond_31
    :goto_31
    return p0
.end method

.method public final checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z
    .registers 13

    .line 1411
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1412
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    .line 1413
    iget-object v2, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1414
    iget-wide v5, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1416
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1417
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 1418
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1419
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 1422
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    sub-double/2addr p0, v4

    .line 1423
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v6, v2

    .line 1422
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    .line 1425
    iget-wide v0, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_4f

    const/4 p0, 0x1

    return p0

    :cond_4f
    const/4 p0, 0x0

    return p0
.end method

.method public final checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z
    .registers 9

    .line 1561
    iget-object v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1563
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1564
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    .line 1563
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_15

    move p0, p2

    goto :goto_16

    :cond_15
    move p0, p1

    :goto_16
    if-ne p0, p2, :cond_19

    return p2

    :cond_19
    return p1
.end method

.method public final declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1337
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    .line 1339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1343
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1344
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1346
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/Geofence;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1347
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_37
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3d

    .line 1352
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 1355
    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_49

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move-object v1, v0

    :goto_45
    monitor-exit p0

    return-object v1

    .line 1358
    :cond_47
    monitor-exit p0

    return-object v1

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z
    .registers 12

    .line 1511
    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1514
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1515
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    .line 1514
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    if-ne v0, v2, :cond_19

    return v2

    .line 1519
    :cond_19
    iget-object v4, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    .line 1520
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v3, p0

    .line 1519
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result p0

    if-ne p0, v2, :cond_2c

    move p0, v2

    goto :goto_2d

    :cond_2c
    move p0, v1

    :goto_2d
    if-ne p0, v2, :cond_30

    return v2

    :cond_30
    return v1
.end method

.method public final checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1469
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1470
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 1471
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    const/4 v4, 0x0

    move v5, v4

    .line 1473
    :goto_14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_31

    .line 1474
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v6, v2, v5

    .line 1475
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_31
    add-int/lit8 v0, v1, -0x1

    move v5, v0

    move v0, v4

    move v6, v0

    :goto_36
    if-ge v0, v1, :cond_6a

    .line 1489
    aget-wide v7, v3, v0

    cmpl-double v9, v7, p4

    const/4 v10, 0x1

    if-lez v9, :cond_41

    move v9, v10

    goto :goto_42

    :cond_41
    move v9, v4

    :goto_42
    aget-wide v11, v3, v5

    cmpl-double v13, v11, p4

    if-lez v13, :cond_4a

    move v13, v10

    goto :goto_4b

    :cond_4a
    move v13, v4

    :goto_4b
    if-eq v9, v13, :cond_62

    aget-wide v13, v2, v5

    aget-wide v15, v2, v0

    sub-double/2addr v13, v15

    sub-double v17, p4, v7

    mul-double v13, v13, v17

    sub-double/2addr v11, v7

    div-double/2addr v13, v11

    add-double/2addr v13, v15

    cmpg-double v5, p2, v13

    if-gtz v5, :cond_62

    if-nez v6, :cond_61

    move v6, v10

    goto :goto_62

    :cond_61
    move v6, v4

    :cond_62
    :goto_62
    add-int/lit8 v5, v0, 0x1

    move/from16 v19, v5

    move v5, v0

    move/from16 v0, v19

    goto :goto_36

    :cond_6a
    return v6
.end method

.method public final checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .registers 6

    .line 1371
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1372
    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    .line 1376
    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1377
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_22
    const/4 v2, 0x3

    if-ne v0, v2, :cond_36

    .line 1383
    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, p2, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1384
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z

    move-result p0

    if-eqz p0, :cond_36

    return v1

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized checkMonitoring()V
    .registers 10

    monitor-enter p0

    .line 1993
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_8

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    .line 1998
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1999
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2000
    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 2003
    :cond_14
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_76

    if-eqz v0, :cond_1e

    .line 2005
    monitor-exit p0

    return-void

    .line 2009
    :cond_1e
    :try_start_1e
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    .line 2010
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    .line 2011
    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 2012
    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 2013
    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 2014
    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 2016
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener-IA;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 2018
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v3

    .line 2019
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v5

    sget-object v7, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2020
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 2018
    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_50} :catch_51
    .catchall {:try_start_1e .. :try_end_50} :catchall_76

    goto :goto_74

    :catch_51
    move-exception v0

    :try_start_52
    const-string v2, "GeofenceService"

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMonitoring - EX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, -0x1

    .line 2025
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_76

    .line 2028
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/location/LinearGeofence;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .line 1291
    iget-object p0, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1295
    :goto_e
    div-int/lit8 v3, p0, 0x2

    if-ge v2, v3, :cond_4d

    .line 1296
    iget-object v3, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    .line 1297
    iget-object v7, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v9, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    .line 1298
    new-instance v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v5, v3, v4, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1299
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_4d
    return-object v1
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I
    .registers 7

    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 407
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 410
    iget-object v1, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3d

    .line 412
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object p2

    if-nez p2, :cond_1f

    return v2

    :cond_1f
    const/4 v1, 0x1

    .line 416
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v2

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 418
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d
    return v2
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .registers 5

    .line 343
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 344
    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I

    move-result p0

    goto :goto_21

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 348
    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I

    move-result p0

    goto :goto_21

    :cond_16
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 352
    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    :goto_21
    return p0
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I
    .registers 11

    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 365
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 367
    iget-wide v5, p2, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-wide v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_21

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 370
    iput-wide v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_31

    :cond_21
    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_31

    const-wide v1, 0x412e847e00000000L    # 999999.0

    .line 372
    iput-wide v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 374
    :cond_31
    :goto_31
    iget-object v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iget-wide v2, p2, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v2

    .line 376
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x2

    const/4 v3, -0x1

    if-le p2, v1, :cond_83

    .line 377
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 378
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_83

    .line 379
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v1, :cond_54

    goto :goto_83

    .line 381
    :cond_54
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v4

    .line 382
    new-instance v7, Lcom/samsung/android/knox/location/LinearGeofence;

    move-object v1, v7

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    .line 384
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object p2

    const/4 v1, 0x3

    .line 385
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v3

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 387
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 388
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_83
    :goto_83
    return v3
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I
    .registers 14

    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 435
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 439
    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-le v1, v3, :cond_6e

    .line 440
    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 441
    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6e

    .line 442
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_2e

    goto :goto_6e

    .line 444
    :cond_2e
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v10

    .line 445
    iget-wide v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-nez v4, :cond_3c

    move-object v9, v8

    goto :goto_41

    .line 448
    :cond_3c
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    .line 452
    :goto_41
    new-instance v1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v5, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v6, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    .line 454
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object p2

    .line 455
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v2

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 458
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 459
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    nop

    :cond_6e
    :goto_6e
    return v2
.end method

.method public final createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 852
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide v4, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v4, v4, p2

    const/4 v6, 0x0

    move v7, v6

    .line 872
    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_119

    .line 873
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_35

    .line 874
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 875
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    goto :goto_43

    .line 877
    :cond_35
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v9, v7, 0x1

    .line 878
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 881
    :goto_43
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double v12, v10, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    const-wide v16, 0x3f747ae147ae147bL    # 0.005

    if-nez v12, :cond_61

    cmpl-double v12, v10, v14

    if-ltz v12, :cond_5d

    sub-double v10, v10, v16

    .line 883
    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_61

    :cond_5d
    add-double v10, v10, v16

    .line 885
    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 888
    :cond_61
    :goto_61
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v12, v10, v12

    cmpl-double v12, v12, v14

    if-nez v12, :cond_78

    cmpl-double v12, v10, v14

    if-ltz v12, :cond_74

    sub-double v10, v10, v16

    .line 890
    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_78

    :cond_74
    add-double v10, v10, v16

    .line 892
    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 895
    :cond_78
    :goto_78
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v10, v12

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move/from16 v16, v7

    iget-wide v6, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v12, v6

    div-double/2addr v10, v12

    .line 897
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object v7, v1

    iget-wide v0, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v14, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v12, v0, v10

    neg-double v12, v12

    mul-double v14, v12, v12

    add-double/2addr v14, v0

    .line 908
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v4, v0

    const-wide/16 v14, 0x0

    cmpl-double v17, v10, v14

    if-lez v17, :cond_c3

    .line 911
    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v4

    iget-wide v4, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v14, v4

    if-ltz v4, :cond_d2

    const-wide/16 v4, 0x0

    goto :goto_c6

    :cond_c3
    move-wide/from16 v18, v4

    move-wide v4, v14

    :goto_c6
    cmpg-double v4, v10, v4

    if-gez v4, :cond_e6

    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v10, v14

    if-lez v5, :cond_e6

    .line 913
    :cond_d2
    iget-wide v4, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double/2addr v0, v12

    add-double/2addr v0, v4

    sub-double v4, v0, v4

    .line 914
    iget-wide v8, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v12

    add-double/2addr v4, v8

    div-double/2addr v4, v12

    .line 916
    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10e

    :cond_e6
    if-lez v17, :cond_f0

    .line 921
    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v10, v14

    if-gtz v5, :cond_fa

    :cond_f0
    if-gez v4, :cond_10e

    iget-wide v4, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v8, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_10e

    .line 923
    :cond_fa
    iget-wide v4, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double/2addr v0, v12

    sub-double v0, v4, v0

    sub-double v4, v0, v4

    .line 924
    iget-wide v8, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v12

    add-double/2addr v4, v8

    div-double/2addr v4, v12

    .line 926
    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10e
    :goto_10e
    add-int/lit8 v0, v16, 0x1

    move-object v1, v7

    move-wide/from16 v4, v18

    const/4 v6, 0x0

    move v7, v0

    move-object/from16 v0, p1

    goto/16 :goto_1a

    :cond_119
    move-object v7, v1

    .line 937
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 938
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_17f

    .line 940
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 941
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 942
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 943
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 944
    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    iget-wide v14, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v0, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v16, v8, v0

    sub-double v16, v14, v16

    sub-double v12, v12, v16

    sub-double v10, v8, v10

    div-double/2addr v12, v10

    mul-double v10, v8, v12

    mul-double/2addr v8, v0

    sub-double/2addr v14, v8

    add-double/2addr v10, v14

    .line 947
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v12, v13, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v6, 0x1

    move/from16 v20, v4

    move v4, v0

    move/from16 v0, v20

    move/from16 v21, v6

    move v6, v1

    move/from16 v1, v21

    goto :goto_128

    :cond_17f
    return-object v7
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 962
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 963
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 964
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 965
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v6, v6, p2

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    .line 983
    :goto_26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_256

    .line 984
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_43

    add-int/lit8 v13, v12, -0x1

    .line 985
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 986
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/location/LatLongPoint;

    goto :goto_51

    .line 988
    :cond_43
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v14, v12, 0x1

    .line 989
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_51
    move-object/from16 p2, v9

    .line 992
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 p3, v10

    move-object v15, v11

    iget-wide v10, v13, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double v10, v8, v10

    const-wide/16 v16, 0x0

    cmpl-double v10, v10, v16

    const-wide v18, 0x3f747ae147ae147bL    # 0.005

    if-nez v10, :cond_74

    cmpl-double v10, v8, v16

    if-ltz v10, :cond_70

    sub-double v8, v8, v18

    .line 994
    iput-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_74

    :cond_70
    add-double v8, v8, v18

    .line 996
    iput-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 999
    :cond_74
    :goto_74
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v8, v10

    cmpl-double v10, v10, v16

    if-nez v10, :cond_8b

    cmpl-double v10, v8, v16

    if-ltz v10, :cond_87

    sub-double v8, v8, v18

    .line 1001
    iput-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_8b

    :cond_87
    add-double v8, v8, v18

    .line 1003
    iput-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1006
    :cond_8b
    :goto_8b
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v8, v10

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v18, v1

    iget-wide v0, v13, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v10, v0

    div-double/2addr v8, v10

    .line 1008
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v13, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v19, v2

    iget-wide v1, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v10, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v1

    iget-wide v1, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v3, v1, v8

    neg-double v3, v3

    mul-double v10, v3, v3

    add-double/2addr v10, v1

    .line 1019
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v1, v6, v1

    cmpl-double v10, v8, v16

    move-wide/from16 v20, v6

    if-lez v10, :cond_d9

    .line 1022
    iget-wide v6, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v24, v10

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v6, v6, v10

    if-ltz v6, :cond_e7

    goto :goto_db

    :cond_d9
    move/from16 v24, v10

    :goto_db
    cmpg-double v6, v8, v16

    if-gez v6, :cond_180

    iget-wide v7, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v9, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v7, v7, v9

    if-lez v7, :cond_180

    .line 1024
    :cond_e7
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double/2addr v1, v3

    add-double v8, v6, v1

    sub-double v6, v8, v6

    .line 1025
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v3

    add-double/2addr v6, v10

    div-double/2addr v6, v3

    .line 1027
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v7, v23

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-wide v8, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v8, v1

    sub-double v8, v10, v8

    .line 1031
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v6, v3

    add-double/2addr v8, v6

    div-double/2addr v8, v3

    .line 1033
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_114

    move-object v11, v13

    goto :goto_115

    :cond_114
    move-object v11, v15

    .line 1037
    :goto_115
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_11e

    goto :goto_11f

    :cond_11e
    move-object v14, v11

    :goto_11f
    if-eqz v12, :cond_136

    .line 1040
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_12a

    goto :goto_136

    :cond_12a
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v0, v5

    :goto_12f
    move-object v11, v14

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    goto/16 :goto_247

    .line 1041
    :cond_136
    :goto_136
    iget-wide v6, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v8, v6, v1

    sub-double v6, v8, v6

    .line 1042
    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v3

    add-double/2addr v6, v10

    div-double/2addr v6, v3

    if-nez v12, :cond_150

    .line 1045
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v10, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    goto :goto_157

    :cond_150
    move-object/from16 v10, v18

    .line 1047
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1050
    :goto_157
    iget-wide v6, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v1, v6, v1

    sub-double v6, v1, v6

    .line 1051
    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    div-double/2addr v6, v3

    if-nez v12, :cond_171

    .line 1054
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v6, v7, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v8, v19

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p2

    goto :goto_179

    :cond_171
    move-object/from16 v8, v19

    .line 1056
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v6, v7, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v9, v3

    :goto_179
    move-object v4, v8

    move-object v6, v10

    move-object v11, v14

    move-object v10, v0

    move-object v0, v5

    goto/16 :goto_247

    :cond_180
    move-object/from16 v10, v18

    move-object/from16 v8, v19

    move-object/from16 v19, v8

    if-lez v24, :cond_193

    .line 1063
    iget-wide v7, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v18, v10

    iget-wide v9, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_19f

    goto :goto_195

    :cond_193
    move-object/from16 v18, v10

    :goto_195
    if-gez v6, :cond_23d

    iget-wide v6, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_23d

    .line 1065
    :cond_19f
    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double/2addr v1, v3

    sub-double v8, v6, v1

    sub-double v6, v8, v6

    .line 1066
    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v3

    add-double/2addr v6, v10

    div-double/2addr v6, v3

    .line 1068
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v6, v23

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-wide v7, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v9, v7, v1

    sub-double v7, v9, v7

    move-object v11, v13

    move-object/from16 v16, v14

    .line 1072
    iget-wide v13, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v13, v3

    add-double/2addr v7, v13

    div-double/2addr v7, v3

    .line 1074
    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_1ce

    goto :goto_1cf

    :cond_1ce
    move-object v11, v15

    .line 1078
    :goto_1cf
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_1da

    move-object/from16 v14, v16

    goto :goto_1db

    :cond_1da
    move-object v14, v11

    :goto_1db
    if-eqz v12, :cond_1ef

    .line 1081
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v12, v0, :cond_1e6

    goto :goto_1ef

    :cond_1e6
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v0, v5

    move-object/from16 v23, v6

    goto/16 :goto_12f

    .line 1082
    :cond_1ef
    :goto_1ef
    iget-wide v7, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v9, v7, v1

    sub-double v7, v9, v7

    move-object v0, v5

    move-object/from16 v23, v6

    .line 1083
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v5, v3

    add-double/2addr v7, v5

    div-double/2addr v7, v3

    if-nez v12, :cond_20c

    .line 1086
    new-instance v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v6, v18

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p3

    goto :goto_214

    :cond_20c
    move-object/from16 v6, v18

    .line 1088
    new-instance v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v10, v5

    .line 1091
    :goto_214
    iget-wide v7, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v1, v7

    sub-double v7, v1, v7

    move-object/from16 p3, v10

    .line 1092
    iget-wide v9, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    div-double/2addr v7, v3

    if-nez v12, :cond_231

    .line 1095
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v7, v8, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v4, v19

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    goto :goto_23b

    :cond_231
    move-object/from16 v4, v19

    .line 1097
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v7, v8, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v10, p3

    move-object v9, v3

    :goto_23b
    move-object v11, v14

    goto :goto_247

    :cond_23d
    move-object v0, v5

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v15

    :goto_247
    add-int/lit8 v12, v12, 0x1

    move-object v5, v0

    move-object v2, v4

    move-object v1, v6

    move-wide/from16 v6, v20

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v0, p1

    goto/16 :goto_26

    :cond_256
    move-object v6, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object v0, v5

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1109
    :goto_263
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v8, v2, :cond_2e6

    move-object/from16 v2, v22

    .line 1112
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-int/lit8 v8, v8, 0x1

    .line 1113
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object/from16 v3, v23

    .line 1114
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v7, v1, 0x1

    .line 1115
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1116
    iget-wide v14, v13, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v2, v13, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v2, v11

    sub-double/2addr v14, v2

    iget-wide v2, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v19, v4

    iget-wide v4, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v16, v9, v4

    sub-double v16, v2, v16

    sub-double v14, v14, v16

    sub-double v16, v9, v11

    div-double v14, v14, v16

    mul-double v20, v9, v14

    mul-double/2addr v4, v9

    sub-double/2addr v2, v4

    add-double v2, v20, v2

    .line 1119
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v14, v15, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1122
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1123
    iget-wide v3, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v13, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v11, v13

    sub-double v11, v3, v11

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v13, v9, v1

    sub-double v13, v3, v13

    sub-double/2addr v11, v13

    div-double v11, v11, v16

    mul-double v13, v9, v11

    mul-double/2addr v9, v1

    sub-double/2addr v3, v9

    add-double/2addr v13, v3

    .line 1126
    new-instance v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v1, v11, v12, v13, v14}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v2, v19

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    move v1, v7

    goto/16 :goto_263

    :cond_2e6
    move-object/from16 v9, p3

    move-object v2, v4

    .line 1131
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p2

    .line 1132
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2f7
    if-ltz v0, :cond_305

    .line 1134
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f7

    :cond_305
    return-object v6
.end method

.method public final declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 6

    monitor-enter p0

    .line 1769
    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_id"

    .line 1771
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCING"

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 1774
    monitor-exit p0

    return p1

    .line 1776
    :cond_20
    :try_start_20
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2c

    const/4 p1, 0x1

    .line 1777
    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "_id"

    .line 1231
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1238
    :goto_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1240
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string v1, "_id"

    .line 1241
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1240
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2b} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_34
    .catchall {:try_start_2 .. :try_end_2b} :catchall_32

    goto :goto_12

    :cond_2c
    if-eqz v0, :cond_5d

    .line 1252
    :goto_2e
    :try_start_2e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_5d
    .catchall {:try_start_2e .. :try_end_31} :catchall_65

    goto :goto_5d

    :catchall_32
    move-exception p1

    goto :goto_5f

    :catch_34
    move-exception p1

    :try_start_35
    const-string v1, "GeofenceService"

    const-string v2, "deleteGeofenceActiveListByAdmin - EX"

    .line 1248
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_5d

    goto :goto_2e

    :catch_3f
    move-exception p1

    const-string v1, "GeofenceService"

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_32

    if-eqz v0, :cond_5d

    goto :goto_2e

    .line 1255
    :catch_5d
    :cond_5d
    :goto_5d
    monitor-exit p0

    return-void

    :goto_5f
    if-eqz v0, :cond_67

    .line 1252
    :try_start_61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_67
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_67

    :catchall_65
    move-exception p1

    goto :goto_68

    .line 1254
    :catch_67
    :cond_67
    :goto_67
    :try_start_67
    throw p1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_65

    :goto_68
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "GeofenceService"

    const-string v1, "destroyGeofence"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 476
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result p2

    if-nez p2, :cond_36

    .line 479
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCINGSETTINGS"

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 481
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4c

    :cond_36
    if-eqz p1, :cond_4c

    .line 484
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 485
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 487
    :cond_4c
    :goto_4c
    monitor-exit p0

    return p1

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final deviceLocationUnavailableMessage(I)V
    .registers 10

    const-string v0, "GeofenceService"

    const-string v1, "DEVICE_LOCATION_UNAVAILABLE"

    .line 1704
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 1707
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_26

    .line 1709
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    :cond_26
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v3

    .line 1713
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1718
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1719
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1720
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v2, :cond_61

    .line 1722
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1724
    :cond_61
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    .line 1726
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    return-void
.end method

.method public final enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 297
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final findCollinear(Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1826
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1829
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 1831
    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_a2

    .line 1832
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1833
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1834
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1838
    iget-wide v11, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v13, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move v15, v6

    iget-wide v5, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v16, v13, v5

    mul-double v11, v11, v16

    move-object/from16 v16, v2

    iget-wide v1, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v17, v3

    move/from16 v18, v4

    iget-wide v3, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v3

    mul-double/2addr v1, v5

    add-double/2addr v11, v1

    iget-wide v1, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v3, v13

    mul-double/2addr v1, v3

    add-double/2addr v11, v1

    const-wide/16 v1, 0x0

    cmpl-double v1, v11, v1

    if-nez v1, :cond_75

    move-object/from16 v1, v17

    .line 1841
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 1842
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_60
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 1844
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_69
    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 1846
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    move-object/from16 v3, v16

    goto :goto_96

    :cond_75
    move-object/from16 v1, v17

    .line 1849
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    .line 1850
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_96

    :cond_91
    move-object/from16 v3, v16

    .line 1854
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_96
    add-int/lit8 v4, v18, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v15, 0x1

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_1a

    :cond_a2
    move-object v3, v2

    .line 1857
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public findDistance(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)D
    .registers 13

    .line 1539
    iget-wide v0, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1540
    iget-wide p0, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 1541
    iget-wide v2, p2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1542
    iget-wide v4, p2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 1544
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    sub-double/2addr p0, v4

    .line 1545
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v6, v2

    .line 1544
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x40aeed880a82edb3L    # 3958.765705195919

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public final findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1886
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v0, 0x1

    .line 1888
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1889
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v3, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v3, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_30

    .line 1890
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_33
    return-object p0
.end method

.method public final findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1868
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v0, 0x1

    .line 1870
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1871
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v3, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v3, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_30

    .line 1872
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_33
    return-object p0
.end method

.method public final getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "adminUid"

    const/4 v2, 0x0

    if-eqz p1, :cond_6a

    .line 1663
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6a

    .line 1667
    :cond_e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1670
    :try_start_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1676
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "GEOFENCING"

    invoke-virtual {p0, v6, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1680
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1681
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1682
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1683
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_27

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1684
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1688
    :cond_59
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5d} :catch_62

    if-eqz p0, :cond_60

    goto :goto_61

    :cond_60
    move-object v2, v4

    :goto_61
    return-object v2

    :catch_62
    move-exception p0

    const-string p1, "GeofenceService"

    const-string p2, "getActiveGeofenceIdsbyAdmin - EX"

    .line 1690
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6a
    :goto_6a
    return-object v2
.end method

.method public final getEffectiveMinDistanceParameter()F
    .registers 8

    const-string v0, "distance"

    const-string/jumbo v1, "state"

    .line 803
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 808
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 812
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 813
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 814
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_30

    goto :goto_17

    .line 820
    :cond_30
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v4, v3

    if-nez v6, :cond_3d

    goto :goto_45

    :cond_3d
    cmpl-float v6, v5, v3

    if-eqz v6, :cond_17

    cmpl-float v6, v4, v5

    if-lez v6, :cond_17

    :goto_45
    move v4, v5

    goto :goto_17

    :cond_47
    return v4
.end method

.method public final getEffectiveMinTimeParameter()J
    .registers 11

    const-string/jumbo v0, "time"

    const-string/jumbo v1, "state"

    .line 734
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 739
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 743
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 744
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_32

    .line 745
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_32

    goto :goto_19

    .line 751
    :cond_32
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v5, v3

    if-nez v9, :cond_3f

    goto :goto_47

    :cond_3f
    cmp-long v9, v7, v3

    if-eqz v9, :cond_19

    cmp-long v9, v5, v7

    if-lez v9, :cond_19

    :goto_47
    move-wide v5, v7

    goto :goto_19

    :cond_49
    cmp-long p0, v5, v3

    if-nez p0, :cond_50

    const-wide/32 v5, 0xea60

    :cond_50
    return-wide v5
.end method

.method public getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    const-string v0, "blobdata"

    const-string/jumbo v1, "type"

    const-string v2, "_id"

    const-string v3, "GeofenceService"

    const-string v4, "getGeofences"

    .line 636
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 638
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 639
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 643
    :try_start_1a
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    .line 648
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "GEOFENCING"

    invoke-virtual {v7, v8, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_26} :catch_92
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_88
    .catchall {:try_start_1a .. :try_end_26} :catchall_86

    if-eqz p1, :cond_80

    .line 652
    :goto_28
    :try_start_28
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 654
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 655
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 657
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 656
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    const/4 v9, 0x2

    if-ne v7, v9, :cond_57

    .line 660
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 661
    iput v6, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 662
    iput v7, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 663
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_57
    const/4 v9, 0x3

    if-ne v7, v9, :cond_6e

    .line 665
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 666
    iput v6, v8, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 667
    iput v7, v8, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 668
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 669
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 671
    :cond_6e
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 672
    iput v6, v8, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 673
    iput v7, v8, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 674
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_7b} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7b} :catch_7c
    .catchall {:try_start_28 .. :try_end_7b} :catchall_b7

    goto :goto_28

    :catch_7c
    move-exception p0

    goto :goto_8a

    :catch_7e
    move-exception p0

    goto :goto_94

    :cond_80
    if-eqz p1, :cond_af

    .line 685
    :goto_82
    :try_start_82
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_af

    goto :goto_af

    :catchall_86
    move-exception p0

    goto :goto_b9

    :catch_88
    move-exception p0

    move-object p1, v5

    :goto_8a
    :try_start_8a
    const-string v0, "getGeofences - EX"

    .line 681
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_af

    goto :goto_82

    :catch_92
    move-exception p0

    move-object p1, v5

    .line 679
    :goto_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred accessing Enterprise db "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_8a .. :try_end_ac} :catchall_b7

    if-eqz p1, :cond_af

    goto :goto_82

    .line 689
    :catch_af
    :cond_af
    :goto_af
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b6

    move-object v4, v5

    :cond_b6
    return-object v4

    :catchall_b7
    move-exception p0

    move-object v5, p1

    :goto_b9
    if-eqz v5, :cond_be

    .line 685
    :try_start_bb
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_be

    .line 687
    :catch_be
    :cond_be
    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object p0
.end method

.method public getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .registers 5

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 794
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 795
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCINGSETTINGS"

    const-string v2, "distance"

    .line 796
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 5

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 726
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCINGSETTINGS"

    const-string/jumbo v2, "time"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 5

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@getPackageNameForUid - uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_22

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_2a

    :cond_22
    const-string p0, "@getPackageNameForUid - returning UMC PACKAGENAME"

    .line 1743
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object p0

    .line 1746
    :cond_2a
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "ADMIN_INFO"

    const-string v2, "adminName"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "@getPackageNameForUid - returning null"

    if-nez p0, :cond_3d

    .line 1749
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1752
    :cond_3d
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_47

    .line 1754
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1757
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initializeHandlerThread()V
    .registers 3

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-void
.end method

.method public final isAdminHasGeofence(I)Z
    .registers 6

    const-string v0, "GeofenceService"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "_id"

    .line 1261
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1265
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1268
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_15} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1b
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 1277
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_18

    :catch_18
    return p0

    :catchall_19
    move-exception p0

    goto :goto_46

    :catch_1b
    move-exception p0

    :try_start_1c
    const-string/jumbo p1, "isAdminHasGeofence - EX"

    .line 1273
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    if-eqz v1, :cond_44

    .line 1277
    :goto_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_44

    goto :goto_44

    :catch_28
    move-exception p0

    .line 1271
    :try_start_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred accessing Enterprise db "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_19

    if-eqz v1, :cond_44

    goto :goto_24

    :catch_44
    :cond_44
    :goto_44
    const/4 p0, 0x0

    return p0

    :goto_46
    if-eqz v1, :cond_4b

    .line 1277
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4b

    .line 1281
    :catch_4b
    :cond_4b
    throw p0
.end method

.method public final isBootCompleted()Z
    .registers 2

    const-string/jumbo p0, "sys.boot_completed"

    const/4 v0, 0x0

    .line 1732
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isDeviceInsideGeofence(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "isDeviceInsideGeofence"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 596
    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    const/4 v4, 0x1

    .line 597
    invoke-virtual {v3, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v5, 0x0

    .line 598
    invoke-virtual {v3, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 599
    invoke-virtual {v3, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 600
    invoke-virtual {v3, v5}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 601
    invoke-virtual {v3, v4}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v6, 0x0

    .line 604
    :try_start_23
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    if-nez v7, :cond_4a

    .line 606
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v3, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    const-string/jumbo v4, "passive"

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 608
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_3f

    goto :goto_4a

    :catch_3f
    move-exception v3

    const-string/jumbo v4, "isDeviceInsideGeofence - EX"

    .line 612
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    :cond_4a
    :goto_4a
    if-nez v7, :cond_56

    .line 617
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    goto :goto_5e

    .line 620
    :cond_56
    invoke-virtual {p0, v7, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    .line 621
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 624
    :goto_5e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6
.end method

.method public isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 585
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 569
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "GEOFENCINGSETTINGS"

    const-string/jumbo v2, "state"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_5 .. :try_end_12} :catch_16

    const/4 p1, 0x1

    if-ne p0, p1, :cond_16

    move v0, p1

    :catch_16
    :cond_16
    return v0
.end method

.method public final declared-synchronized loadGeofenceActiveList(I)V
    .registers 7

    monitor-enter p0

    .line 1145
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1146
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_76

    .line 1150
    :try_start_20
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "adminUid"

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1157
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 1160
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57
    .catchall {:try_start_20 .. :try_end_56} :catchall_76

    goto :goto_35

    :catch_57
    move-exception v0

    :try_start_58
    const-string v1, "GeofenceService"

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadGeofenceActiveList - EX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_76

    goto :goto_14

    .line 1169
    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 283
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final parseStringToFloat(Ljava/lang/String;)F
    .registers 2

    .line 833
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public final parseStringToLong(Ljava/lang/String;)J
    .registers 2

    .line 841
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final sendIntenttoAdmins(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "sendIntenttoAdmins"

    .line 1581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1583
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1586
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1587
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_1b

    .line 1591
    :cond_32
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v5, "ADMIN"

    const-string v6, "adminUid"

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1594
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_42
    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1595
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID"

    const-string v7, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string v8, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    if-eqz v5, :cond_10c

    .line 1598
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    const/4 v11, 0x0

    .line 1600
    :goto_6c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_81

    .line 1601
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    :cond_81
    const-string v5, "com.samsung.android.knox.intent.extra.ID"

    .line 1603
    invoke-virtual {v9, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1604
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v9, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    invoke-virtual {v9, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v4

    .line 1608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    .line 1613
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v6, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 1612
    invoke-virtual {v5, v9, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1617
    :try_start_d3
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1618
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1619
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1620
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_104} :catch_106

    goto/16 :goto_42

    :catch_106
    move-exception v4

    .line 1623
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_42

    .line 1628
    :cond_10c
    :try_start_10c
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"

    invoke-virtual {v5, v4, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_42

    .line 1630
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1633
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v6, v4}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v4

    .line 1635
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    .line 1637
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 1636
    invoke-virtual {v6, v5, v9, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_146} :catch_42

    .line 1642
    :try_start_146
    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1643
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1644
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v9, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_177} :catch_179

    goto/16 :goto_42

    :catch_179
    move-exception v4

    .line 1648
    :try_start_17a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17d} :catch_42

    goto/16 :goto_42

    :cond_17f
    return-void
.end method

.method public final serializeGeoFence(Ljava/lang/Object;)[B
    .registers 3

    .line 1947
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1950
    :try_start_5
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1951
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1952
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    .line 1956
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 1958
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setLocationManager()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .registers 6

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 769
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 773
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 775
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    const-string v1, "GEOFENCINGSETTINGS"

    const-string v2, "distance"

    .line 773
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 778
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 779
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return p1
.end method

.method public setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 6

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 700
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 705
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 707
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "GEOFENCINGSETTINGS"

    const-string/jumbo v1, "time"

    .line 705
    invoke-virtual {v0, p1, p3, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 710
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 711
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2f
    return p1
.end method

.method public startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "startGeofencing"

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 499
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 505
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    .line 507
    monitor-enter p0

    const/4 v1, 0x1

    if-eqz p1, :cond_24

    .line 508
    :try_start_1e
    sget-object p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz p1, :cond_24

    .line 509
    monitor-exit p0

    return v1

    .line 511
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_46

    .line 513
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_45
    return p1

    :catchall_46
    move-exception p1

    .line 511
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "stopGeofencing"

    .line 534
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 536
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 542
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 546
    :cond_1e
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 552
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3e
    return p1
.end method

.method public systemReady()V
    .registers 4

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 266
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string v3, "blobdata"

    .line 1175
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1180
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 1184
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_8a

    const-string p1, "_id"

    .line 1186
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1188
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "type"

    .line 1191
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1190
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "blobdata"

    .line 1193
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1192
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5f

    .line 1196
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 1197
    iput p1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 1198
    iput v1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 1199
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_5f
    const/4 v3, 0x3

    if-ne v1, v3, :cond_76

    .line 1201
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 1202
    iput p1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 1203
    iput v1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 1204
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1206
    :cond_76
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 1207
    iput p1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 1208
    iput v1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 1209
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_89} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_89} :catch_92
    .catchall {:try_start_2 .. :try_end_89} :catchall_90

    goto :goto_17

    :cond_8a
    if-eqz v0, :cond_bc

    .line 1222
    :goto_8c
    :try_start_8c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_bc
    .catchall {:try_start_8c .. :try_end_8f} :catchall_c4

    goto :goto_bc

    :catchall_90
    move-exception p1

    goto :goto_be

    :catch_92
    move-exception p1

    :try_start_93
    const-string v1, "GeofenceService"

    const-string/jumbo v2, "updateGeofenceActiveList - EX"

    .line 1218
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_bc

    goto :goto_8c

    :catch_9e
    move-exception p1

    const-string v1, "GeofenceService"

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_93 .. :try_end_b9} :catchall_90

    if-eqz v0, :cond_bc

    goto :goto_8c

    .line 1225
    :catch_bc
    :cond_bc
    :goto_bc
    monitor-exit p0

    return-void

    :goto_be
    if-eqz v0, :cond_c6

    .line 1222
    :try_start_c0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c6
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c6

    :catchall_c4
    move-exception p1

    goto :goto_c7

    .line 1224
    :catch_c6
    :cond_c6
    :goto_c6
    :try_start_c6
    throw p1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c4

    :goto_c7
    monitor-exit p0

    throw p1
.end method

.method public final validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmpg-double p0, p2, v0

    const/4 p2, 0x0

    if-gtz p0, :cond_8

    goto :goto_32

    .line 1979
    :cond_8
    iget-wide v0, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double p0, v0, v2

    if-gtz p0, :cond_32

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_32

    iget-wide p0, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double p3, p0, v0

    if-gtz p3, :cond_32

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_31

    goto :goto_32

    :cond_31
    const/4 p2, 0x1

    :cond_32
    :goto_32
    return p2
.end method

.method public final validatePolygonalGeofence(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 1906
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 1907
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1908
    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_3a

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3a

    iget-wide v1, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_3a

    const-wide v3, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3a
    :goto_3a
    return p0

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public final writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .registers 7

    .line 1926
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p3, :cond_6

    const/4 p0, -0x1

    return p0

    .line 1929
    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1931
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "blobdata"

    .line 1932
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1933
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p3, "GEOFENCING"

    invoke-virtual {p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    .line 1935
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    return p2
.end method
