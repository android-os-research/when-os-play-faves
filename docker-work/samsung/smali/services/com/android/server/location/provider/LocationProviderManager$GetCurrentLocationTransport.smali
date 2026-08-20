.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCurrentLocationTransport"
.end annotation


# instance fields
.field public final mCallback:Landroid/location/ILocationCallback;


# direct methods
.method public static synthetic $r8$lambda$ZBI48Nxf8R_MEzU3wOsnERn_c6Q(Ljava/lang/RuntimeException;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationCallback;)V
    .registers 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/location/ILocationCallback;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    return-void
.end method

.method public static synthetic lambda$deliverOnLocationChanged$0(Ljava/lang/RuntimeException;)V
    .registers 1

    .line 371
    throw p0
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .registers 2

    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 355
    :goto_5
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eqz p1, :cond_14

    .line 359
    :try_start_a
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    goto :goto_2d

    .line 361
    :cond_14
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_2d

    :catch_1b
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 370
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2d
    return-void
.end method
