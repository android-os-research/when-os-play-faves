.class public Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field public static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field public mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLocationManager:Landroid/location/LocationManager;

.field public mQueryThread:Ljava/lang/Thread;

.field public mTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$mqueryCountryCode(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "location"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 7

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_54

    .line 169
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_35

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 176
    new-instance v4, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 194
    iget-object v5, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 199
    :cond_35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 200
    new-instance v1, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v2

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_50

    .line 212
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 214
    :goto_50
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_5a

    monitor-exit p0

    return-object v0

    .line 166
    :cond_54
    :try_start_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 8

    .line 77
    new-instance v0, Landroid/location/Geocoder;

    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 80
    :try_start_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_30

    :catch_29
    const-string p1, "LocationBasedCountryDetector"

    const-string v0, "Exception occurs when getting country from location"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-object p0
.end method

.method public getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 152
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 154
    :cond_d
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object p0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 10

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    iget-object v5, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_f

    if-eqz v3, :cond_31

    .line 131
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    .line 132
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_37

    cmp-long v5, v5, v7

    if-gez v5, :cond_f

    :cond_31
    move-object v3, v4

    goto :goto_f

    .line 139
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_37
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0
.end method

.method public getQueryLocationTimeout()J
    .registers 3

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public isAcceptableProvider(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p0, "passive"

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 239
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    .line 257
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 11

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0
.end method

.method public declared-synchronized stop()V
    .registers 4

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    goto :goto_a

    .line 226
    :cond_1a
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 228
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_25

    .line 229
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 232
    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Landroid/location/LocationListener;)V
    .registers 4

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method
