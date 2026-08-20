.class public abstract Lcom/android/location/provider/LocationProviderBase;
.super Ljava/lang/Object;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/LocationProviderBase$Service;,
        Lcom/android/location/provider/LocationProviderBase$OnFlushCompleteCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"


# instance fields
.field volatile mAllowed:Z

.field final mAttributionTag:Ljava/lang/String;

.field final mBinder:Landroid/os/IBinder;

.field protected final mLocationManager:Landroid/location/ILocationManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field volatile mManager:Landroid/location/provider/ILocationProviderManager;

.field volatile mProperties:Landroid/location/provider/ProviderProperties;

.field final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    .line 136
    new-instance v1, Lcom/android/location/provider/LocationProviderBase$Service;

    invoke-direct {v1, p0}, Lcom/android/location/provider/LocationProviderBase$Service;-><init>(Lcom/android/location/provider/LocationProviderBase;)V

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    .line 138
    nop

    .line 139
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mLocationManager:Landroid/location/ILocationManager;

    .line 141
    iput-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 142
    invoke-virtual {p3}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->getProviderProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/location/provider/LocationProviderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 124
    return-void
.end method

.method private static stripExtras(Landroid/location/Location;)Landroid/location/Location;
    .registers 6
    .param p0, "location"    # Landroid/location/Location;

    .line 414
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_3b

    const-string v1, "noGPSLocation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "coarseLocation"

    const-string v4, "indoorProbability"

    if-nez v2, :cond_1e

    .line 416
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 417
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 418
    :cond_1e
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object p0, v2

    .line 419
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 424
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 427
    :cond_3b
    return-object p0
.end method

.method private static stripExtras(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 431
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    move-object v0, p0

    .line 432
    .local v0, "mapped":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 433
    .local v1, "size":I
    const/4 v2, 0x0

    .line 434
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 435
    .local v4, "location":Landroid/location/Location;
    invoke-static {v4}, Lcom/android/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    .line 436
    .local v5, "newLocation":Landroid/location/Location;
    if-eq v0, p0, :cond_20

    .line 437
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 438
    :cond_20
    if-eq v5, v4, :cond_46

    .line 439
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 440
    const/4 v6, 0x0

    .line 441
    .local v6, "j":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 442
    .local v8, "copiedLocation":Landroid/location/Location;
    if-lt v6, v2, :cond_3c

    .line 443
    goto :goto_43

    .line 445
    :cond_3c
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    nop

    .end local v8    # "copiedLocation":Landroid/location/Location;
    add-int/lit8 v6, v6, 0x1

    .line 447
    goto :goto_2d

    .line 448
    :cond_43
    :goto_43
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v6    # "j":I
    :cond_46
    :goto_46
    nop

    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "newLocation":Landroid/location/Location;
    add-int/lit8 v2, v2, 0x1

    .line 451
    goto :goto_a

    .line 453
    :cond_4a
    return-object v0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAllowed()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/android/location/provider/LocationProviderBase;->isAllowed()Z

    move-result v0

    return v0
.end method

.method protected onDisable()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    return-void
.end method

.method protected onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    return-void
.end method

.method protected onEnable()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    return-void
.end method

.method protected onFlush(Lcom/android/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/location/provider/LocationProviderBase$OnFlushCompleteCallback;

    .line 320
    invoke-interface {p1}, Lcom/android/location/provider/LocationProviderBase$OnFlushCompleteCallback;->onFlushComplete()V

    .line 321
    return-void
.end method

.method protected onGetStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    const/4 v0, 0x2

    return v0
.end method

.method protected onGetStatusUpdateTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onInit()V
    .registers 1

    .line 284
    invoke-virtual {p0}, Lcom/android/location/provider/LocationProviderBase;->onEnable()V

    .line 285
    return-void
.end method

.method protected onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
.end method

.method public reportLocation(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 253
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 254
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_19

    .line 256
    :try_start_4
    invoke-static {p1}, Lcom/android/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocation(Landroid/location/Location;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    .line 261
    goto :goto_19

    .line 259
    :catch_c
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 257
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method public reportLocations(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 271
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_19

    .line 273
    :try_start_4
    invoke-static {p1}, Lcom/android/location/provider/LocationProviderBase;->stripExtras(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocations(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    .line 278
    goto :goto_19

    .line 276
    :catch_c
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 274
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 280
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method

.method public setAdditionalProviderPackages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setAllowed(Z)V
    .registers 5
    .param p1, "allowed"    # Z

    .line 177
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-boolean v1, p0, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    if-ne v1, p1, :cond_9

    .line 179
    monitor-exit v0

    return-void

    .line 182
    :cond_9
    iput-boolean p1, p0, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    .line 183
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_24

    .line 185
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 186
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_23

    .line 188
    :try_start_10
    iget-boolean v1, p0, Lcom/android/location/provider/LocationProviderBase;->mAllowed:Z

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetAllowed(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    .line 193
    goto :goto_23

    .line 191
    :catch_16
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 189
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void

    .line 183
    .end local v0    # "manager":Landroid/location/provider/ILocationProviderManager;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/location/provider/LocationProviderBase;->setAllowed(Z)V

    .line 157
    return-void
.end method

.method public setProperties(Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .registers 5
    .param p1, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .line 203
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-virtual {p1}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->getProviderProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 205
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 207
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 208
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_21

    .line 210
    :try_start_e
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetProperties(Landroid/location/provider/ProviderProperties;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_14

    .line 215
    goto :goto_21

    .line 213
    :catch_14
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 211
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v1

    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    return-void

    .line 205
    .end local v0    # "manager":Landroid/location/provider/ILocationProviderManager;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
