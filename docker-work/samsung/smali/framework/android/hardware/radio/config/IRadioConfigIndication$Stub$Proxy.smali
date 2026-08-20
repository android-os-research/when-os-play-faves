.class Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigIndication$Stub;
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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedVersion:I

    .line 115
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 122
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 159
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 163
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 165
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 168
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    goto :goto_3a

    .line 168
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v2

    .line 172
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 158
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

    .line 142
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 146
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 148
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    goto :goto_34

    .line 151
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v2

    .line 155
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "slotStatus"    # [Landroid/hardware/radio/config/SimSlotStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 131
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_27

    .line 132
    .local v1, "_status":Z
    if-eqz v1, :cond_1f

    .line 137
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-void

    .line 133
    .restart local v1    # "_status":Z
    :cond_1f
    :try_start_1f
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method simSlotsStatusChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "slotStatus":[Landroid/hardware/radio/config/SimSlotStatus;
    throw v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 137
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfigIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "slotStatus":[Landroid/hardware/radio/config/SimSlotStatus;
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v1
.end method
