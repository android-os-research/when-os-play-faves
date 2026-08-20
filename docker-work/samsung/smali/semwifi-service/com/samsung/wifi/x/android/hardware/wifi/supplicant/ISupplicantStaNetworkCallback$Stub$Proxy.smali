.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaNetworkCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 156
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 163
    sget-object p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

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

    .line 261
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 265
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 270
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    throw v2

    .line 274
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 244
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw p0

    .line 257
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onNetworkEapIdentityRequest()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1f

    if-eqz p0, :cond_17

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 172
    :cond_17
    :try_start_17
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onNetworkEapIdentityRequest is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw p0
.end method

.method public onNetworkEapSimGsmAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimGsmAuthParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 183
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 187
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkEapSimGsmAuthRequest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw p0
.end method

.method public onNetworkEapSimUmtsAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimUmtsAuthParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 202
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkEapSimUmtsAuthRequest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw p0
.end method

.method public onServerCertificateAvailable(I[B[B[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 228
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 232
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 233
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2c

    if-eqz p0, :cond_24

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 235
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onServerCertificateAvailable is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw p0
.end method

.method public onTransitionDisable(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 217
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onTransitionDisable is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw p0
.end method
