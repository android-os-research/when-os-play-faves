.class Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeolocSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 216
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 333
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 334
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 337
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-void

    .line 337
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v2
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 249
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 250
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 253
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 253
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteAllGeolocSharings()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 383
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw v2
.end method

.method public deleteGeolocSharingBySharingId(Ljava/lang/String;)V
    .registers 7
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    nop

    .line 416
    return-void

    .line 413
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v2
.end method

.method public deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 7
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 395
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 398
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-void

    .line 398
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v2
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .registers 7
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 298
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 302
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-object v2

    .line 302
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v2
.end method

.method public getGeolocSharings()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 284
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-object v2

    .line 284
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 364
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 368
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    nop

    .line 371
    return v2

    .line 368
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw v2
.end method

.method public isServiceRegistered()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 233
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 237
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    nop

    .line 240
    return v2

    .line 237
    .end local v2    # "_result":Z
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw v2
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 348
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 349
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 352
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    nop

    .line 355
    return-void

    .line 352
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v2
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 264
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 265
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 268
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v2
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .registers 8
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 315
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 317
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 321
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-object v2

    .line 321
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v2
.end method
