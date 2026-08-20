.class public final Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;
.super Lcom/android/server/location/listeners/PendingIntentListenerRegistration;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/geofence/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GeofenceRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<",
        "Landroid/location/Geofence;",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_INSIDE:I = 0x1

.field public static final STATE_OUTSIDE:I = 0x2

.field public static final STATE_UNKNOWN:I


# instance fields
.field public mCachedLocation:Landroid/location/Location;

.field public mCachedLocationDistanceM:F

.field public final mCenter:Landroid/location/Location;

.field public mGeofenceState:I

.field public mPermitted:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$7D_l-PLlSOtlrKTXVjUcSZQxvAw(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_OTtZGOxbgy0U7YTUienL4Aqx0(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$sendIntent$2(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWwtmCB5rYsjiK7-mr4WIAij1x4(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$1(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V
    .registers 7

    .line 96
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 97
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    .line 99
    new-instance p4, Landroid/location/Location;

    const-string v0, ""

    invoke-direct {p4, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    .line 100
    invoke-virtual {p2}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 101
    invoke-virtual {p2}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 103
    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/os/PowerManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GeofenceManager:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    .line 104
    invoke-virtual {p1, p4, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 p0, 0x0

    .line 107
    invoke-virtual {p3, p0}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private synthetic lambda$onLocationChanged$0(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method private synthetic lambda$onLocationChanged$1(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method private synthetic lambda$sendIntent$2(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 205
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method public getDistanceToBoundary(Landroid/location/Location;)D
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 163
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 164
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    iput p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 167
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Geofence;

    invoke-virtual {p1}, Landroid/location/Geofence;->getRadius()F

    move-result p1

    iget p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public getOwner()Lcom/android/server/location/geofence/GeofenceManager;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getOwner()Lcom/android/server/location/geofence/GeofenceManager;

    move-result-object p0

    return-object p0
.end method

.method public isPermitted()Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return p0
.end method

.method public onActive()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_f
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 173
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    return-object v1

    .line 177
    :cond_11
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 178
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 180
    iget v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->getRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 182
    iget v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    cmpg-float p1, v2, p1

    const/4 v2, 0x1

    if-gtz p1, :cond_40

    .line 183
    iput v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-eq v0, v2, :cond_4b

    .line 185
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object p1

    :cond_40
    const/4 p1, 0x2

    .line 188
    iput p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-ne v0, v2, :cond_4b

    .line 191
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object p1

    :cond_4b
    return-object v1
.end method

.method public final onLocationPermissionsChanged()Z
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 152
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    .line 151
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 153
    iget-boolean v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_15

    .line 154
    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onLocationPermissionsChanged(I)Z
    .registers 3

    .line 143
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 144
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_13

    .line 135
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 136
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0
.end method

.method public onPendingIntentListenerRegister()V
    .registers 4

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 118
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return-void
.end method

.method public final sendIntent(Landroid/app/PendingIntent;Z)V
    .registers 13

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 201
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 205
    :try_start_12
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v3, p2, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v6, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p2, 0x0

    .line 206
    invoke-static {p2}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    move-object v2, p1

    .line 205
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_3d

    .line 208
    :catch_28
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 209
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceKey;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Geofence;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/geofence/GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    # invokes: Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    invoke-static {p2, v0, p0}, Lcom/android/server/location/geofence/GeofenceManager;->access$000(Lcom/android/server/location/geofence/GeofenceManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    :goto_3d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 219
    iget-boolean v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-nez v2, :cond_1c

    const-string/jumbo v2, "na"

    .line 220
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1c
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_2a

    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
