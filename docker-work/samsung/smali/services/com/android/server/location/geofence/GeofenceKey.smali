.class public final Lcom/android/server/location/geofence/GeofenceKey;
.super Ljava/lang/Object;
.source "GeofenceKey.java"

# interfaces
.implements Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;


# instance fields
.field public final mGeofence:Landroid/location/Geofence;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 36
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/location/Geofence;

    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lcom/android/server/location/geofence/GeofenceKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 52
    :cond_a
    check-cast p1, Lcom/android/server/location/geofence/GeofenceKey;

    .line 53
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p0, p1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    return p0
.end method
