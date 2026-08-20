.class Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehSupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub;
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

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 113
    iput-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getBss()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 134
    sget-object p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/BssParam;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_31

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 131
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getBss is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 120
    sget-object p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

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

    .line 161
    iget-object v1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 165
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 170
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v2

    .line 174
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 144
    iget v0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 148
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw p0

    .line 157
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    return p0
.end method
