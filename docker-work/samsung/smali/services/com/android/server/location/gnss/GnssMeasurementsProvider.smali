.class public final Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">;",
        "Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;"
    }
.end annotation


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;


# direct methods
.method public static synthetic $r8$lambda$VRpHPMdfP6ckq4iaMLVi3VlUrYw(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->lambda$onReportMeasurements$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpYS9i6_kJIqoB_oOeUsktVk1DA(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->lambda$onReportMeasurements$1(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 91
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 92
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 93
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 95
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 96
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V

    return-void
.end method

.method public static synthetic lambda$onReportMeasurements$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method private synthetic lambda$onReportMeasurements$1(Landroid/location/GnssMeasurementsEvent;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 4

    .line 238
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 239
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 240
    new-instance p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .registers 4

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 4

    .line 49
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->addListener(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Landroid/location/IGnssMeasurementsListener;",
            ")",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V

    return-object v0
.end method

.method public bridge synthetic createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 4

    .line 49
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    check-cast p3, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->createRegistration(Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .registers 1

    .line 250
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_MEASUREMENT:Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object p0
.end method

.method public isSupported()Z
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isMeasurementSupported()Z

    move-result p0

    return p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)",
            "Landroid/location/GnssMeasurementRequest;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->isGnssMeasurementsFullTrackingEnabled()Z

    move-result p0

    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 181
    invoke-virtual {v2}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssMeasurementRequest;

    .line 182
    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    move p0, v4

    .line 185
    :cond_28
    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v4

    .line 188
    :cond_2f
    invoke-virtual {v2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_e

    .line 191
    :cond_38
    new-instance p1, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {p1}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    .line 192
    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementRequest$Builder;->setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurementRequest$Builder;->setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 194
    invoke-virtual {p0, v1}, Landroid/location/GnssMeasurementRequest$Builder;->setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/GnssMeasurementRequest;

    move-result-object p0

    return-object p0
.end method

.method public onActive()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public onHalRestarted()V
    .registers 1

    .line 232
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onInactive()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SettingsHelper;->removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 203
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 200
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 49
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 219
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 216
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 49
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3

    .line 237
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public onSettingChanged()V
    .registers 1

    .line 166
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void
.end method

.method public registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GnssMeasurementRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Landroid/location/GnssMeasurementRequest;",
            "Landroid/location/IGnssMeasurementsListener;",
            "Landroid/location/GnssMeasurementRequest;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 122
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    move-result p2

    const-string v0, "GnssManager"

    if-eqz p2, :cond_11

    const-string/jumbo p2, "stopping gnss measurements"

    .line 124
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p2, "error stopping gnss measurements"

    .line 127
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_16
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result p2

    .line 130
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v1

    .line 131
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v2

    .line 129
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->startMeasurementCollection(ZZI)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "starting gnss measurements ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_46
    const-string p0, "error starting gnss measurements"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 49
    check-cast p1, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->registerWithService(Landroid/location/GnssMeasurementRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public unregisterWithService()V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopMeasurementCollection()Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_11

    const-string/jumbo p0, "stopping gnss measurements"

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p0, "error stopping gnss measurements"

    .line 149
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
