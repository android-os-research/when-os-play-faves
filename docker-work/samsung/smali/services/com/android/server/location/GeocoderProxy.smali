.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"


# instance fields
.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/location/injector/Injector;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.location.service.GeocodeProvider"

    .line 83
    invoke-static {p1, v0, p2, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p2

    const-string p3, "GeocoderProxy"

    const/4 v0, 0x0

    .line 82
    invoke-static {p1, p3, p2, v0, p4}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.location.service.GeocodeProvider"

    const v1, 0x1110136

    const v2, 0x104034f

    .line 73
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    const-string v1, "GeocoderProxy"

    const/4 v2, 0x0

    .line 72
    invoke-static {p1, v1, v0, v2, p2}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/GeocoderProxy;
    .registers 5

    .line 60
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;IILcom/android/server/location/injector/Injector;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/server/location/GeocoderProxy;->register()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createAndRegister(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)Lcom/android/server/location/GeocoderProxy;
    .registers 3

    .line 48
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    .line 49
    invoke-virtual {v0}, Lcom/android/server/location/GeocoderProxy;->register()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 19

    move-object v1, p0

    .line 103
    iget-object v9, v1, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v10, Lcom/android/server/location/GeocoderProxy$1;

    move-object v0, v10

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/GeocoderProxy$1;-><init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-interface {v9, v10}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 29

    move-object/from16 v1, p0

    .line 128
    iget-object v14, v1, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v15, Lcom/android/server/location/GeocoderProxy$2;

    move-object v0, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/location/GeocoderProxy$2;-><init>(Lcom/android/server/location/GeocoderProxy;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-interface {v14, v15}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public final register()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object p0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_d
    return v0
.end method
