.class Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricServiceLockoutResetCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 116
    const-string v0, "android.hardware.biometrics.IBiometricServiceLockoutResetCallback"

    return-object v0
.end method

.method public blacklist onLockoutReset(ILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceLockoutResetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 126
    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw v1
.end method
