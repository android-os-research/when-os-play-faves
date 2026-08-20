.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GnssAntennaInfoProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Landroid/os/IBinder;",
        "Landroid/location/IGnssAntennaInfoListener;",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "Landroid/location/IGnssAntennaInfoListener;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;"
    }
.end annotation


# instance fields
.field public volatile mAntennaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;


# direct methods
.method public static synthetic $r8$lambda$aI8m2GsJ28YOCuy_3oZOdDjuy5Y(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->lambda$onReportAntennaInfo$0(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGnssDataListener(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/os/IBinder;ZLjava/lang/String;II)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 89
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 90
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 91
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V

    return-void
.end method

.method public static synthetic lambda$onReportAntennaInfo$0(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1, p0}, Landroid/location/IGnssAntennaInfoListener;->onGnssAntennaInfoChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .registers 7

    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 116
    :try_start_4
    invoke-interface {p2}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0
.end method

.method public getAntennaInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "GnssManager"

    return-object p0
.end method

.method public isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isSupported()Z
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isAntennaInfoSupported()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onHalRestarted()V
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public onHalStarted()V
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_27

    instance-of v0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    if-eqz v0, :cond_27

    .line 179
    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 180
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 181
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 183
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    .line 184
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    .line 180
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;IIZZ)V

    :cond_27
    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 41
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_20

    instance-of v0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    if-eqz v0, :cond_20

    .line 192
    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 193
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 195
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 196
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p2

    .line 193
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->removeGnssDataListener(Landroid/os/IBinder;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    :cond_20
    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 41
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onReportAntennaInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 168
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    .line 169
    new-instance v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public removeListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 4

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    :try_start_4
    invoke-interface {p1}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0
.end method

.method public setNSLocationProviderHelper(Lcom/android/server/location/nsflp/NSLocationProviderHelper;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-void
.end method

.method public unregisterWithService()V
    .registers 1

    return-void
.end method

.method public final updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;II)V
    .registers 13

    .line 201
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-nez v0, :cond_5

    return-void

    .line 205
    :cond_5
    sget-object v4, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    return-void
.end method
