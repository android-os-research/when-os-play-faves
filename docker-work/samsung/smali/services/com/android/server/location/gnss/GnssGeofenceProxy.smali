.class public Lcom/android/server/location/gnss/GnssGeofenceProxy;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProxy.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    }
.end annotation


# instance fields
.field public final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 27

    move-object v0, p0

    move/from16 v13, p1

    .line 67
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 68
    :try_start_6
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 72
    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry-IA;)V

    .line 73
    iput v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    move-wide/from16 v3, p2

    .line 74
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    move-wide/from16 v3, p4

    .line 75
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    move-wide/from16 v3, p6

    .line 76
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    move/from16 v3, p8

    .line 77
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    move/from16 v3, p9

    .line 78
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    move/from16 v3, p10

    .line 79
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    move/from16 v3, p11

    .line 80
    iput v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    .line 81
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_47
    monitor-exit v14

    return v1

    :catchall_49
    move-exception v0

    .line 84
    monitor-exit v14
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGeofencingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onHalRestarted()V
    .registers 16

    .line 129
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 131
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 132
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 137
    iget-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    if-eqz v3, :cond_37

    .line 138
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v2, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    invoke-virtual {v3, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 141
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 103
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    if-eqz p0, :cond_18

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 108
    :cond_18
    monitor-exit v0

    return v1

    :catchall_1a
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public removeHardwareGeofence(I)Z
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->removeGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 92
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    :cond_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 95
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->resumeGeofence(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 117
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    if-eqz p0, :cond_1a

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 120
    iput p2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    .line 123
    :cond_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p0

    .line 124
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method
