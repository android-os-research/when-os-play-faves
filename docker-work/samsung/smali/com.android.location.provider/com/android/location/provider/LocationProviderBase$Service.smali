.class final Lcom/android/location/provider/LocationProviderBase$Service;
.super Landroid/location/provider/ILocationProvider$Stub;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/LocationProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/LocationProviderBase;


# direct methods
.method public static synthetic $r8$lambda$lT1EGo9Z6gXbPFq8XDpr_a7n5zE(Lcom/android/location/provider/LocationProviderBase$Service;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/location/provider/LocationProviderBase$Service;->onFlushComplete()V

    return-void
.end method

.method constructor <init>(Lcom/android/location/provider/LocationProviderBase;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    invoke-direct {p0}, Landroid/location/provider/ILocationProvider$Stub;-><init>()V

    .line 365
    return-void
.end method

.method private onFlushComplete()V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v0, v0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 396
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_19

    .line 398
    :try_start_6
    invoke-interface {v0}, Landroid/location/provider/ILocationProviderManager;->onFlushComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    .line 403
    goto :goto_19

    .line 401
    :catch_a
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v2, v2, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 399
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    new-instance v1, Lcom/android/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Lcom/android/location/provider/LocationProviderBase$Service;)V

    invoke-virtual {v0, v1}, Lcom/android/location/provider/LocationProviderBase;->onFlush(Lcom/android/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V

    .line 392
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 409
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProviderBase;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 410
    return-void
.end method

.method public setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V
    .registers 6
    .param p1, "manager"    # Landroid/location/provider/ILocationProviderManager;

    .line 369
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v0, v0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 371
    :try_start_5
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-boolean v1, v1, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v2, v2, Lcom/android/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    iget-object v3, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v3, v3, Lcom/android/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/location/provider/ILocationProviderManager;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_17
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 376
    goto :goto_1f

    .line 379
    :catchall_15
    move-exception v1

    goto :goto_30

    .line 374
    :catch_17
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_18
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iget-object v2, v2, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    iput-object p1, v1, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 379
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_15

    .line 381
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProviderBase;->onInit()V

    .line 382
    return-void

    .line 372
    :catch_2a
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/location/provider/LocationProviderBase$Service;
    .end local p1    # "manager":Landroid/location/provider/ILocationProviderManager;
    throw v2

    .line 379
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/location/provider/LocationProviderBase$Service;
    .restart local p1    # "manager":Landroid/location/provider/ILocationProviderManager;
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_15

    throw v1
.end method

.method public setRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 386
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    new-instance v1, Lcom/android/location/provider/ProviderRequestUnbundled;

    invoke-direct {v1, p1}, Lcom/android/location/provider/ProviderRequestUnbundled;-><init>(Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/location/provider/LocationProviderBase;->onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V

    .line 387
    return-void
.end method
