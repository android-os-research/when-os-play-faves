.class public Landroid/net/INetworkMonitor$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 216
    iput-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 213
    iput-object p1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 219
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public forceReevaluation(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 290
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method forceReevaluation is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 223
    sget-object p0, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "-1"

    .line 421
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 425
    :try_start_13
    sget-object v2, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 430
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v2

    .line 434
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    :try_start_d
    sget-object v2, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw p0

    .line 417
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public launchCaptivePortalApp()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 246
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method launchCaptivePortalApp is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw p0
.end method

.method public notifyCaptivePortalAppFinished(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 261
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyCaptivePortalAppFinished is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw p0
.end method

.method public notifyDnsResponse(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 320
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyDnsResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    throw p0
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 362
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 365
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyLinkPropertiesChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw p0
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 376
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 378
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 380
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyNetworkCapabilitiesChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw p0
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 333
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 334
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_20

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 336
    :cond_20
    :try_start_20
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyNetworkConnected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw p0
.end method

.method public notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 392
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 393
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 395
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyNetworkConnectedParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw p0
.end method

.method public notifyNetworkDisconnected()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_21

    if-eqz p0, :cond_19

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 350
    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method notifyNetworkDisconnected is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    throw p0
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 305
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyPrivateDnsChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw p0
.end method

.method public setAcceptPartialConnectivity()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 275
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method setAcceptPartialConnectivity is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p0
.end method

.method public start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    :try_start_4
    sget-object v1, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1f

    if-eqz p0, :cond_17

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 232
    :cond_17
    :try_start_17
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method start is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw p0
.end method
