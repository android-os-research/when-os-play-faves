.class public Lcom/android/server/location/gnss/sec/SLocationProxy;
.super Ljava/lang/Object;
.source "SLocationProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SLocationProxy"


# instance fields
.field public mSLocationService:Lcom/samsung/android/location/ISLocationManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    return-void
.end method


# virtual methods
.method public enableSLocation()V
    .registers 2

    const-string/jumbo v0, "sec_location"

    .line 39
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    return-void
.end method

.method public onReportGeofenceAddStatus(II)V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_12

    .line 72
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 74
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public onReportGeofencePauseStatus(II)V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_12

    .line 93
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 95
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public onReportGeofenceRemoveStatus(II)V
    .registers 3

    .line 81
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_12

    .line 83
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public onReportGeofenceResumeStatus(II)V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_12

    .line 103
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 105
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public onStatusChanged(Z)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_12

    .line 113
    :try_start_4
    invoke-interface {p0, p1}, Lcom/samsung/android/location/ISLocationManager;->onGnssStatusChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method public onSvStatusChanged(Landroid/location/GnssStatus;)V
    .registers 11

    .line 121
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_52

    .line 122
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v2

    .line 123
    new-array v3, v2, [I

    .line 124
    new-array v4, v2, [F

    .line 125
    new-array v5, v2, [F

    .line 126
    new-array v6, v2, [F

    .line 127
    new-array v7, v2, [F

    .line 128
    new-array v8, v2, [F

    const/4 v0, 0x0

    .line 129
    :goto_15
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 130
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v1

    aput v1, v3, v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v1

    aput v1, v4, v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v1

    aput v1, v5, v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v1

    aput v1, v6, v0

    .line 134
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v1

    aput v1, v7, v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v1

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 138
    :cond_42
    :try_start_42
    iget-object v1, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/location/ISLocationManager;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_52

    :catch_48
    move-exception p0

    .line 142
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 4

    .line 60
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz p0, :cond_17

    .line 62
    :try_start_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(ILandroid/location/Location;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 12

    if-nez p2, :cond_3

    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SLocationProxy;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-eqz v0, :cond_21

    const/16 p0, 0x2710

    if-le p1, p0, :cond_21

    .line 49
    :try_start_b
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(ILandroid/location/Location;IJ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SLocationProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void
.end method
