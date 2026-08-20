.class public Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssNavigationMessageListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;"
    }
.end annotation


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public static synthetic $r8$lambda$hq-RWr72rNiRatqL5D7I7QPhySM(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->lambda$onReportNavigationMessage$1(Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k0yT4rUGmE5kGkCi6MlYWyYYmTw(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->lambda$onReportNavigationMessage$0(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 67
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 68
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V

    return-void
.end method

.method public static synthetic lambda$onReportNavigationMessage$0(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method private synthetic lambda$onReportNavigationMessage$1(Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 4

    .line 123
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 124
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 125
    new-instance p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/GnssNavigationMessage;)V

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 3

    .line 43
    check-cast p2, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method

.method public bridge synthetic createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 4

    .line 43
    check-cast p1, Ljava/lang/Void;

    check-cast p3, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->createRegistration(Ljava/lang/Void;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p0

    return-object p0
.end method

.method public createRegistration(Ljava/lang/Void;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Landroid/location/IGnssNavigationMessageListener;",
            ")",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNavigationMessageListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;"
        }
    .end annotation

    .line 87
    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V

    return-object p1
.end method

.method public getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .registers 1

    .line 147
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_NAVIGATION_MESSAGE:Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object p0
.end method

.method public isSupported()Z
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isNavigationMessageCollectionSupported()Z

    move-result p0

    return p0
.end method

.method public onHalRestarted()V
    .registers 1

    .line 117
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
            "Landroid/location/IGnssNavigationMessageListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 43
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onRegistrationAdded(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

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
            "Landroid/location/IGnssNavigationMessageListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 43
    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onRegistrationRemoved(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    return-void
.end method

.method public onReportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 3

    .line 122
    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

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
            "Landroid/location/IGnssNavigationMessageListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startNavigationMessageCollection()Z

    move-result p0

    const-string p1, "GnssManager"

    if-eqz p0, :cond_12

    const-string/jumbo p0, "starting gnss navigation messages"

    .line 95
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string p0, "error starting gnss navigation messages"

    .line 99
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterWithService()V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopNavigationMessageCollection()Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_11

    const-string/jumbo p0, "stopping gnss navigation messages"

    .line 108
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p0, "error stopping gnss navigation messages"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
