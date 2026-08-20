.class Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVideoSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;
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
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 216
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 331
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 332
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 335
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    nop

    .line 338
    return-void

    .line 335
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 249
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public deleteVideoSharings()V
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .registers 6
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 281
    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 284
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-object v2

    .line 284
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    :catchall_29
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
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    return-object v0
.end method

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .registers 7
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 315
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 319
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-object v2

    .line 319
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v2
.end method

.method public getVideoSharings()Ljava/util/List;
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 297
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 301
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    nop

    .line 304
    return-object v2

    .line 301
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 346
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 347
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 350
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    nop

    .line 353
    return-void

    .line 350
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
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
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 264
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .registers 8
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "player"    # Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 363
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 364
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 368
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    nop

    .line 371
    return-object v2

    .line 368
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw v2
.end method
