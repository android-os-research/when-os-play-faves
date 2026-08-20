.class Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecureElementChannel.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedVersion:I

    .line 170
    const-string v0, "-1"

    iput-object v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 186
    .local v2, "_status":Z
    if-eqz v2, :cond_22

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2a

    .line 192
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    nop

    .line 195
    return-void

    .line 187
    .restart local v2    # "_status":Z
    :cond_22
    :try_start_22
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method close is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    throw v3
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 192
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 177
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 316
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 320
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 322
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 325
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    goto :goto_3a

    .line 325
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw v2

    .line 329
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 315
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 303
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 305
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    goto :goto_34

    .line 308
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v2

    .line 312
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public greylist-max-o getSelectResponse()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 244
    .local v2, "_status":Z
    if-eqz v2, :cond_27

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2f

    move-object v2, v3

    .line 251
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    nop

    .line 254
    return-object v2

    .line 245
    .local v2, "_status":Z
    :cond_27
    :try_start_27
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSelectResponse is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 251
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v2
.end method

.method public greylist-max-o isBasicChannel()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 224
    .local v2, "_status":Z
    if-eqz v2, :cond_27

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2f

    move v2, v3

    .line 231
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    nop

    .line 234
    return v2

    .line 225
    .local v2, "_status":Z
    :cond_27
    :try_start_27
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isBasicChannel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 231
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v2
.end method

.method public greylist-max-o isClosed()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 204
    .local v2, "_status":Z
    if-eqz v2, :cond_27

    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2f

    move v2, v3

    .line 211
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    nop

    .line 214
    return v2

    .line 205
    .local v2, "_status":Z
    :cond_27
    :try_start_27
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isClosed is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 211
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw v2
.end method

.method public greylist-max-o selectNext()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 285
    .local v2, "_status":Z
    if-eqz v2, :cond_27

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2f

    move v2, v3

    .line 292
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    nop

    .line 295
    return v2

    .line 286
    .local v2, "_status":Z
    :cond_27
    :try_start_27
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method selectNext is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 292
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v2
.end method

.method public greylist-max-o transmit([B)[B
    .registers 7
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 264
    iget-object v2, p0, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 265
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_32

    move-object v2, v3

    .line 272
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-object v2

    .line 266
    .local v2, "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method transmit is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    .end local p1    # "command":[B
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 272
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    .restart local p1    # "command":[B
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v2
.end method
