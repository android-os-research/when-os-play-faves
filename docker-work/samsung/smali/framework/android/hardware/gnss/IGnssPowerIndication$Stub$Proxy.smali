.class Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssPowerIndication.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssPowerIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssPowerIndication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedVersion:I

    .line 123
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 130
    sget-object v0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 183
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 187
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 192
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    goto :goto_3a

    .line 192
    .end local p0    # "this":Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v2

    .line 196
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 182
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

    .line 166
    iget v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 172
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 175
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    goto :goto_34

    .line 175
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw v2

    .line 179
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist requestGnssPowerStats()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_21

    .line 156
    .local v1, "_status":Z
    if-eqz v1, :cond_19

    .line 161
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    nop

    .line 163
    return-void

    .line 157
    .restart local v1    # "_status":Z
    :cond_19
    :try_start_19
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestGnssPowerStats is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
    throw v2
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 161
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v1
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssPowerIndicationCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssPowerIndicationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 139
    iget-object v2, p0, Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 140
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 146
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    nop

    .line 149
    return-void

    .line 141
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/gnss/IGnssPowerIndicationCallback;
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 146
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssPowerIndication$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/gnss/IGnssPowerIndicationCallback;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v2
.end method
