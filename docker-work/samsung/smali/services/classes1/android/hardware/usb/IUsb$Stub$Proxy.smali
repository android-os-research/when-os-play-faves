.class public Landroid/hardware/usb/IUsb$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsb$Stub;
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

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 209
    iput v0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 210
    iput-object v0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 213
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_20

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 229
    :cond_20
    :try_start_20
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enableContaminantPresenceDetection is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p0
.end method

.method public enableUsbData(Ljava/lang/String;ZJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 246
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enableUsbData is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw p0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;J)V
    .registers 6
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
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 262
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enableUsbDataWhileDocked is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 217
    sget-object p0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

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

    .line 368
    iget-object v1, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 372
    :try_start_13
    sget-object v2, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 377
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v2

    .line 381
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 351
    iget v0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 355
    :try_start_d
    sget-object v2, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 362
    throw p0

    .line 364
    :cond_33
    :goto_33
    iget p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public limitPowerTransfer(Ljava/lang/String;ZJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 326
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method limitPowerTransfer is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw p0
.end method

.method public queryPortStatus(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 273
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 277
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method queryPortStatus is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw p0
.end method

.method public resetUsbPort(Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 337
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 342
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method resetUsbPort is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw p0
.end method

.method public setCallback(Landroid/hardware/usb/IUsbCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 290
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 292
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setCallback is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw p0
.end method

.method public switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    :try_start_4
    sget-object v1, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 305
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 306
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-object p0, p0, Landroid/hardware/usb/IUsb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method switchRole is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p0
.end method
