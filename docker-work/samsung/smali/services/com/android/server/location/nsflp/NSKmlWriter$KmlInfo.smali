.class public Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
.super Ljava/lang/Object;
.source "NSKmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSKmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KmlInfo"
.end annotation


# instance fields
.field public final latitude:D

.field public final longitude:D

.field public final provider:Ljava/lang/String;

.field public final satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public final speed:F

.field public final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V
    .registers 9

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->provider:Ljava/lang/String;

    .line 546
    iput-wide p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    .line 547
    iput-wide p4, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 548
    iput p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    .line 549
    iput-object p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    .line 550
    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .line 558
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 562
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 1

    .line 554
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public getSatelliteState()Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object p0
.end method

.method public getSpeed()F
    .registers 1

    .line 566
    iget p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    return p0
.end method

.method public getTime()Ljava/lang/String;
    .registers 1

    .line 570
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    return-object p0
.end method
