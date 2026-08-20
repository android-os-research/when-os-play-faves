.class public Lcom/android/server/location/gnss/GnssNmeaProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssNmeaProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssNmeaListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;"
    }
.end annotation


# static fields
.field public static final NMEA_LISTENER_ALLOWED:I = 0x1

.field public static final NMEA_LISTENER_NOT_ALLOWED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GnssNmeaProvider"


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mNmeaAllowed:I

.field public final mNmeaBuffer:[B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/injector/AppOpsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/gnss/hal/GnssNative;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNmeaBuffer(Lcom/android/server/location/gnss/GnssNmeaProvider;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    const/16 v0, 0x78

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    .line 62
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 63
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 65
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V
    .registers 5

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: adding NMEA listener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") from "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GnssNmeaProvider"

    .line 80
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    if-nez p1, :cond_37

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onGnssNmeaListenerStatusChanged(I)V

    :cond_37
    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 3

    .line 44
    check-cast p2, Landroid/location/IGnssNmeaListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .registers 1

    .line 178
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->NMEA:Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object p0
.end method

.method public onGnssNmeaListenerStatusChanged(I)V
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGnssNmeaListenerStatusChanged: Injecting NMEA_ALLOWED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNmeaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 73
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NMEA_ALLOWED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method public onHalRestarted()V
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNmeaListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 166
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 44
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNmeaListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 44
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportNmea(J)V
    .registers 4

    .line 138
    new-instance v0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider$1;-><init>(Lcom/android/server/location/gnss/GnssNmeaProvider;J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

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
            "Landroid/location/IGnssNmeaListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startNmeaMessageCollection()Z

    move-result p0

    const-string p1, "GnssNmeaProvider"

    if-eqz p0, :cond_12

    const-string/jumbo p0, "starting gnss nmea messages collection"

    .line 111
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string p0, "error starting gnss nmea messages collection"

    .line 115
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Landroid/location/IGnssNmeaListener;)V
    .registers 4

    .line 94
    invoke-super {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeListener(Landroid/os/IInterface;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeListener: removing NMEA listener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssNmeaProvider"

    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isRegistrationEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 99
    iget p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->onGnssNmeaListenerStatusChanged(I)V

    :cond_38
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/os/IInterface;)V
    .registers 2

    .line 44
    check-cast p1, Landroid/location/IGnssNmeaListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNmeaProvider;->removeListener(Landroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public unregisterWithService()V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopNmeaMessageCollection()Z

    move-result p0

    const-string v0, "GnssNmeaProvider"

    if-eqz p0, :cond_11

    const-string/jumbo p0, "stopping gnss nmea messages collection"

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p0, "error stopping gnss nmea messages collection"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
