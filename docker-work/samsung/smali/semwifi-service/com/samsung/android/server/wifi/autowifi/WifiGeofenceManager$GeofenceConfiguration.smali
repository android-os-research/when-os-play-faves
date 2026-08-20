.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;
.super Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
.source "WifiGeofenceManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeofenceConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field geopointState:I

.field pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 2

    .line 731
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;-><init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    const/4 p1, 0x0

    .line 732
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->geopointState:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 726
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 727
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->geopointState:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)I
    .registers 5

    .line 750
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    iget-wide p0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    cmp-long p0, v0, p0

    if-gez p0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 719
    check-cast p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->compareTo(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)I

    move-result p0

    return p0
.end method

.method getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 740
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method setLocationMeasurement(DD)V
    .registers 5

    .line 744
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 745
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method setPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->geopointState:I

    .line 761
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
