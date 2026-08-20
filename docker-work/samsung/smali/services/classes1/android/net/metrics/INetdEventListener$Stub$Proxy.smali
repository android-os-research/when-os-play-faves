.class public Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
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

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 222
    iput v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 223
    iput-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 226
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 230
    sget-object p0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

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

    .line 372
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 376
    :try_start_13
    sget-object v2, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 381
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v2

    .line 385
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 355
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    :try_start_d
    sget-object v2, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    throw p0

    .line 368
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_32

    if-eqz p0, :cond_2a

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 285
    :cond_2a
    :try_start_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onConnectEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw p0
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_37

    if-eqz p0, :cond_2f

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 247
    :cond_2f
    :try_start_2f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDnsEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw p0
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2c

    if-eqz p0, :cond_24

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 346
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNat64PrefixEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw p0
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2c

    if-eqz p0, :cond_24

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 265
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPrivateDnsValidationEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw p0
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 8
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
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 324
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 325
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 326
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2f

    if-eqz p0, :cond_27

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 328
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onTcpSocketStatsEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw p0
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    :try_start_4
    sget-object v1, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 302
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v0, p10, p11}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-object p0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_3e

    if-eqz p0, :cond_36

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_36
    :try_start_36
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onWakeupEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p0
.end method
