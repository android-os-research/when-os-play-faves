.class Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehSupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 206
    iput-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 213
    sget-object p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

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

    .line 366
    iget-object v1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 370
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 375
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2

    .line 379
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 349
    iget v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw p0

    .line 362
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onBeaconEventAbort(I)V
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
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    const-string p1, "Method onBeaconEventAbort is unimplemented."

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

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_32

    if-eqz p0, :cond_2a

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 277
    :cond_2a
    :try_start_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onBeaconInterval is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw p0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 240
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDriverHang is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw p0
.end method

.method public onEapEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 257
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onEapEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 5
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
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 307
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkAdded is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw p0
.end method

.method public onNotify(I[I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 340
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNotify is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw p0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 224
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNotifyBigdata is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw p0
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 321
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 323
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRoamingChannelListUpdate is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw p0
.end method
