.class Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehHostapdCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub;
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

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 112
    iput-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 119
    sget-object p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

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

    .line 155
    iget-object v1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 159
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 164
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v2

    .line 168
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 138
    iget v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw p0

    .line 151
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public sehHostapdCallbackEvent(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    if-eqz p0, :cond_1a

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 129
    :cond_1a
    :try_start_1a
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sehHostapdCallbackEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw p0
.end method
