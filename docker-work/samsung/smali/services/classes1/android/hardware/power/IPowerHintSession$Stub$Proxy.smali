.class public Landroid/hardware/power/IPowerHintSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPowerHintSession.java"

# interfaces
.implements Landroid/hardware/power/IPowerHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPowerHintSession$Stub;
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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 148
    iput-object v0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 151
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public close()V
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
    sget-object v1, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 222
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method close is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 155
    sget-object p0, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

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

    .line 248
    iget-object v1, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 252
    :try_start_13
    sget-object v2, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 257
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw v2

    .line 261
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 231
    iget v0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    :try_start_d
    sget-object v2, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw p0

    .line 244
    :cond_33
    :goto_33
    iget p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public pause()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    :try_start_4
    sget-object v1, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 194
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method pause is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw p0
.end method

.method public reportActualWorkDuration([Landroid/hardware/power/WorkDuration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    :try_start_4
    sget-object v1, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 178
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 180
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method reportActualWorkDuration is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw p0
.end method

.method public resume()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    :try_start_4
    sget-object v1, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 208
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method resume is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw p0
.end method

.method public updateTargetWorkDuration(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    :try_start_4
    sget-object v1, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-object p0, p0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    if-eqz p0, :cond_1a

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 165
    :cond_1a
    :try_start_1a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method updateTargetWorkDuration is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw p0
.end method
