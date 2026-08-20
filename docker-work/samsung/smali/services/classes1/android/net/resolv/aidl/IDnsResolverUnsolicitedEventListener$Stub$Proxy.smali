.class public Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDnsResolverUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;
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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 132
    iput-object v0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 135
    iget-object p0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 139
    sget-object p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

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

    .line 205
    iget-object v1, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 209
    :try_start_13
    sget-object v2, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 214
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v2

    .line 218
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 188
    iget v0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    :try_start_d
    sget-object v2, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw p0

    .line 201
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 145
    :try_start_4
    sget-object v1, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    iget-object p0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 149
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDnsHealthEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw p0
.end method

.method public onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    :try_start_4
    sget-object v1, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    iget-object p0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 164
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNat64PrefixEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw p0
.end method

.method public onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    :try_start_4
    sget-object v1, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    iget-object p0, p0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 179
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPrivateDnsValidationEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw p0
.end method
