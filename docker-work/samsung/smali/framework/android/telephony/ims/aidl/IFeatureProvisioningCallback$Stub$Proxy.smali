.class Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFeatureProvisioningCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;
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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 137
    const-string v0, "android.telephony.ims.aidl.IFeatureProvisioningCallback"

    return-object v0
.end method

.method public blacklist onFeatureProvisioningChanged(IIZ)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.ims.aidl.IFeatureProvisioningCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    iget-object v1, p0, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v1
.end method

.method public blacklist onRcsFeatureProvisioningChanged(IIZ)V
    .registers 9
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.ims.aidl.IFeatureProvisioningCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    iget-object v1, p0, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v1
.end method
