.class public Lcom/android/server/location/gnss/GnssStatusProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssStatusProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssStatusListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;"
    }
.end annotation


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mIsNavigating:Z

.field public final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public mOnStatusChanged:Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;


# direct methods
.method public static synthetic $r8$lambda$EC2tZ0S57UGvtweerkwOHhQQ1L4(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportSvStatus$2(Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OOvdvR7P8G5TmaEHtXnCA4lRTgs(ILandroid/location/IGnssStatusListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportFirstFix$0(ILandroid/location/IGnssStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZNS6OuNJPWjG5T913DErtG0aQU(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportSvStatus$1(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    .line 61
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 62
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 63
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 66
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 69
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    return-void
.end method

.method public static synthetic lambda$onReportFirstFix$0(ILandroid/location/IGnssStatusListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    return-void
.end method

.method public static synthetic lambda$onReportSvStatus$1(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method

.method private synthetic lambda$onReportSvStatus$2(Landroid/location/GnssStatus;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 4

    .line 186
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 187
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 188
    new-instance p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;-><init>(Landroid/location/GnssStatus;)V

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V
    .registers 3

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 3

    .line 45
    check-cast p2, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method public getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .registers 1

    .line 198
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_STATUS:Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object p0
.end method

.method public onHalRestarted()V
    .registers 1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 109
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 106
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 45
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 125
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->isForeground()Z

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 122
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 45
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportFirstFix(I)V
    .registers 3

    .line 178
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onReportStatus(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    .line 155
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 158
    :cond_d
    :goto_d
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eq v0, p1, :cond_32

    .line 159
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    if-eqz v0, :cond_1e

    .line 161
    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    goto :goto_26

    .line 163
    :cond_1e
    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 166
    :goto_26
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEngineStatusUpdated(Z)V

    .line 169
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mOnStatusChanged:Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;

    if-eqz p0, :cond_32

    .line 170
    invoke-interface {p0, v0}, Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;->onStatusCallback(Z)V

    :cond_32
    return-void
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 3

    .line 185
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 45
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

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
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssStatusListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startSvStatusCollection()Z

    move-result p0

    const-string p1, "GnssManager"

    if-eqz p0, :cond_12

    const-string/jumbo p0, "starting gnss sv status"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string p0, "error starting gnss sv status"

    .line 88
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSLocationStatusCallback(Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mOnStatusChanged:Lcom/android/server/location/gnss/GnssStatusProvider$StatusCallback;

    return-void
.end method

.method public unregisterWithService()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopSvStatusCollection()Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_11

    const-string/jumbo p0, "stopping gnss sv status"

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p0, "error stopping gnss sv status"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
