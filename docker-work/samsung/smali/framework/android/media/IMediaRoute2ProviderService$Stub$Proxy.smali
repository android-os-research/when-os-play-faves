.class Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaRoute2ProviderService.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 253
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 260
    const-string v0, "android.media.IMediaRoute2ProviderService"

    return-object v0
.end method

.method public blacklist releaseSession(JLjava/lang/String;)V
    .registers 9
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw v1
.end method

.method public blacklist requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "requestId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .param p5, "sessionHints"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public blacklist selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v1
.end method

.method public blacklist setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/IMediaRoute2ProviderServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 270
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v1
.end method

.method public blacklist setRouteVolume(JLjava/lang/String;I)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "routeId"    # Ljava/lang/String;
    .param p4, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 299
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v1
.end method

.method public blacklist setSessionVolume(JLjava/lang/String;I)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    nop

    .line 372
    return-void

    .line 370
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw v1
.end method

.method public blacklist transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw v1
.end method

.method public blacklist updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .registers 7
    .param p1, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    iget-object v1, p0, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v1
.end method
