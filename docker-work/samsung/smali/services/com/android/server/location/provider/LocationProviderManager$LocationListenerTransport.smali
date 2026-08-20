.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field public final mListener:Landroid/location/ILocationListener;


# direct methods
.method public static synthetic $r8$lambda$3wiU5ouaMlcQCs91M-cvYrN12Rc(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->lambda$deliverOnProviderEnabledChanged$2(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PxaWVNAXiZYWIaRj_mVeNzIzSdw(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->lambda$deliverOnFlushComplete$1(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VtqJ2ELbYk81qPODn8lIozRy1HA(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationListener;)V
    .registers 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/location/ILocationListener;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    return-void
.end method

.method public static synthetic lambda$deliverOnFlushComplete$1(Ljava/lang/RuntimeException;)V
    .registers 1

    .line 253
    throw p0
.end method

.method public static synthetic lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V
    .registers 1

    .line 236
    throw p0
.end method

.method public static synthetic lambda$deliverOnProviderEnabledChanged$2(Ljava/lang/RuntimeException;)V
    .registers 1

    .line 271
    throw p0
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {p0, p1}, Landroid/location/ILocationListener;->onFlushComplete(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_18

    :catch_6
    move-exception p0

    .line 251
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 252
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_18
    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1c

    :catch_a
    move-exception p0

    .line 234
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 235
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1c
    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onProviderEnabledChanged(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_18

    :catch_6
    move-exception p0

    .line 269
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 270
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_18
    return-void
.end method
