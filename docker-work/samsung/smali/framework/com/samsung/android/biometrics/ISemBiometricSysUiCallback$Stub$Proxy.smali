.class Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiCallback.java"

# interfaces
.implements Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 172
    const-string v0, "com.samsung.android.biometrics.ISemBiometricSysUiCallback"

    return-object v0
.end method

.method public blacklist onError(III)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "error"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v1
.end method

.method public blacklist onEvent(III)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v1
.end method

.method public blacklist onSysUiDismissed(II[B)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "credentialAttestation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw v1
.end method

.method public blacklist onTouchEvent(II)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw v1
.end method
