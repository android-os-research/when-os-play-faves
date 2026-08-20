.class final Landroid/location/provider/LocationProviderBase$Service;
.super Landroid/location/provider/ILocationProvider$Stub;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/LocationProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/provider/LocationProviderBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$9y01bOLerFspp7sMBso73eRcOII(Landroid/location/provider/LocationProviderBase$Service;)V
    .registers 1

    invoke-direct {p0}, Landroid/location/provider/LocationProviderBase$Service;->onFlushComplete()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/location/provider/LocationProviderBase;)V
    .registers 2

    .line 306
    iput-object p1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-direct {p0}, Landroid/location/provider/ILocationProvider$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$flush$1(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 342
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$sendExtraCommand$2(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 366
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setRequest$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private blacklist onFlushComplete()V
    .registers 4

    .line 348
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 349
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_12

    .line 351
    :try_start_6
    invoke-interface {v0}, Landroid/location/provider/ILocationProviderManager;->onFlushComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    .line 354
    goto :goto_12

    .line 352
    :catch_a
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 4

    .line 337
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    new-instance v1, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;-><init>(Landroid/location/provider/LocationProviderBase$Service;)V

    invoke-virtual {v0, v1}, Landroid/location/provider/LocationProviderBase;->onFlush(Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 344
    goto :goto_24

    .line 338
    :catch_b
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method

.method public blacklist sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 361
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProviderBase;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 368
    goto :goto_1f

    .line 362
    :catch_6
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    return-void
.end method

.method public blacklist setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V
    .registers 6
    .param p1, "manager"    # Landroid/location/provider/ILocationProviderManager;

    .line 310
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 312
    :try_start_5
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-boolean v1, v1, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    iget-object v3, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v3, v3, Landroid/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/location/provider/ILocationProviderManager;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_17
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 315
    goto :goto_1f

    .line 318
    :catchall_15
    move-exception v1

    goto :goto_25

    .line 313
    :catch_17
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iput-object p1, v1, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_15

    throw v1
.end method

.method public blacklist setRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 324
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProviderBase;->onSetRequest(Landroid/location/provider/ProviderRequest;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 331
    goto :goto_1f

    .line 325
    :catch_6
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    return-void
.end method
