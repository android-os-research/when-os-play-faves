.class Lcom/android/location/provider/GeocodeProvider$1;
.super Landroid/location/IGeocodeProvider$Stub;
.source "GeocodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/GeocodeProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/GeocodeProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/location/provider/GeocodeProvider;

    .line 42
    iput-object p1, p0, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    invoke-direct {p0}, Landroid/location/IGeocodeProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 19
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .param p7, "listener"    # Landroid/location/IGeocodeListener;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 47
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v10, p0

    iget-object v1, v10, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v2, p7

    :try_start_16
    invoke-interface {v2, v1, v9}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 52
    goto :goto_1b

    .line 50
    :catch_1a
    move-exception v0

    .line 53
    :goto_1b
    return-void
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 29
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .param p12, "listener"    # Landroid/location/IGeocodeListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 61
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/location/provider/GeocodeProvider$1;->this$0:Lcom/android/location/provider/GeocodeProvider;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object v13, v14

    invoke-virtual/range {v1 .. v13}, Lcom/android/location/provider/GeocodeProvider;->onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v2, p12

    :try_start_1f
    invoke-interface {v2, v1, v14}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 68
    goto :goto_24

    .line 66
    :catch_23
    move-exception v0

    .line 69
    :goto_24
    return-void
.end method
