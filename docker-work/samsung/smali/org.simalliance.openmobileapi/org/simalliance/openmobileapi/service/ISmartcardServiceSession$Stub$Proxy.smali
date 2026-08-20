.class Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartcardServiceSession.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub;
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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 179
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 182
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .registers 7
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 217
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 219
    invoke-virtual {p1, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 223
    .end local v2    # "_status":Z
    :cond_21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v2
.end method

.method public closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .registers 7
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 235
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 237
    invoke-virtual {p1, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 241
    .end local v2    # "_status":Z
    :cond_21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v2
.end method

.method public getAtr()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 197
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 201
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    nop

    .line 204
    return-object v2

    .line 201
    .end local v2    # "_result":[B
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 186
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    return-object v0
.end method

.method public isClosed()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_28

    if-eqz v3, :cond_1f

    const/4 v4, 0x1

    :cond_1f
    move v2, v4

    .line 262
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return v2

    .line 262
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v2
.end method

.method public openBasicChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .registers 10
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .param p3, "callback"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .param p4, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 281
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 282
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 284
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v3

    .line 286
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 287
    invoke-virtual {p4, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3a

    .line 291
    .end local v2    # "_status":Z
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    nop

    .line 294
    return-object v3

    .line 291
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw v2
.end method

.method public openLogicalChannel([BBLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .registers 10
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .param p3, "callback"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .param p4, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardServiceSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 311
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 312
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    move-result-object v3

    .line 314
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 315
    invoke-virtual {p4, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3a

    .line 319
    .end local v2    # "_status":Z
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-object v3

    .line 319
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v2
.end method
