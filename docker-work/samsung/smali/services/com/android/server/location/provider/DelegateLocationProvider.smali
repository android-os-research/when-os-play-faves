.class public Lcom/android/server/location/provider/DelegateLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "DelegateLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public final mInitializationLock:Ljava/lang/Object;

.field public mInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$IKKYeG5_gaJ76mwSBDV3w5L2Dw8(Lcom/android/server/location/provider/DelegateLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->lambda$initializeDelegate$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TqAFbBo8CtMGUp4wkhnbnR8IVMU(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->lambda$onStateChanged$1(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 5

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    .line 46
    iput-object p2, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method

.method private synthetic lambda$initializeDelegate$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    .line 57
    iget-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onStateChanged$1(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 117
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 118
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public initializeDelegate()V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 57
    new-instance v1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/DelegateLocationProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 58
    iput-boolean v2, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 111
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 112
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 3

    .line 105
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 106
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/provider/DelegateLocationProvider;->waitForInitialization()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 3

    .line 99
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 100
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/android/server/location/provider/DelegateLocationProvider;->waitForInitialization()V

    .line 76
    new-instance p1, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 94
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    return-void
.end method

.method public final waitForInitialization()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mInitialized:Z

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 70
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
