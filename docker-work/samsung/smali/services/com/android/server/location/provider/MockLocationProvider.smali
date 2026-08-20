.class public Lcom/android/server/location/provider/MockLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "MockLocationProvider.java"


# instance fields
.field public mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ProviderProperties;",
            "Landroid/location/util/identity/CallerIdentity;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "last mock location="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/MockLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 2

    .line 66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 2

    return-void
.end method

.method public setProviderAllowed(Z)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    return-void
.end method

.method public setProviderLocation(Landroid/location/Location;)V
    .registers 4

    .line 55
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 57
    iput-object v0, p0, Lcom/android/server/location/provider/MockLocationProvider;->mLocation:Landroid/location/Location;

    new-array p1, p1, [Landroid/location/Location;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 58
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method
