.class public Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehFingerprint.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;
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

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 122
    iput-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 125
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 129
    sget-object p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

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

    .line 174
    iget-object v1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 178
    :try_start_13
    sget-object v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 183
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw v2

    .line 187
    :cond_39
    :goto_39
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 157
    iget v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    :try_start_d
    sget-object v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw p0

    .line 170
    :cond_33
    :goto_33
    iget p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 147
    sget-object p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3d

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 144
    :cond_35
    :try_start_35
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sehRequest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw p0
.end method
