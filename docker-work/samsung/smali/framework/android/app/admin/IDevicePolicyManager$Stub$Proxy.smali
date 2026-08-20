.class Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 6811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6812
    iput-object p1, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6813
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeDeviceCompliant()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13254
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x166

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13255
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 13258
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13260
    nop

    .line 13261
    return-void

    .line 13258
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13260
    throw v2
.end method

.method public blacklist acknowledgeNewUserDisclaimer(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9743
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 9747
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9749
    nop

    .line 9750
    return-void

    .line 9747
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9749
    throw v2
.end method

.method public greylist-max-o addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9252
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9253
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9254
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9255
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9256
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 9259
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9261
    nop

    .line 9262
    return-void

    .line 9259
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9261
    throw v2
.end method

.method public blacklist addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12581
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12582
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12583
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12584
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12585
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x141

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 12589
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12591
    nop

    .line 12592
    return-void

    .line 12589
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12591
    throw v2
.end method

.method public greylist-max-o addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10480
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10482
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10483
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10484
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10487
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10489
    nop

    .line 10490
    return v2

    .line 10487
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10489
    throw v2
.end method

.method public greylist-max-o addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12157
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12158
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12159
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x129

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12160
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12161
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 12164
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12166
    nop

    .line 12167
    return v2

    .line 12164
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12166
    throw v2
.end method

.method public greylist-max-o addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9038
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9039
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9040
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9041
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9042
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 9045
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9047
    nop

    .line 9048
    return-void

    .line 9045
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9047
    throw v2
.end method

.method public greylist-max-o approveCaCert(Ljava/lang/String;IZ)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8672
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8673
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8674
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8675
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8678
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8680
    nop

    .line 8681
    return v2

    .line 8678
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8680
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 6816
    iget-object v0, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11714
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 11717
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11718
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11719
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 11720
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 11721
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x111

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11722
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11723
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3b

    move v2, v3

    .line 11726
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11728
    nop

    .line 11729
    return v2

    .line 11726
    .end local v2    # "_result":Z
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11728
    throw v2
.end method

.method public blacklist canAdminGrantSensorsPermissionsForUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13474
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x173

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13476
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13479
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13481
    nop

    .line 13482
    return v2

    .line 13479
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13481
    throw v2
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13287
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x168

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13288
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13289
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13292
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13294
    nop

    .line 13295
    return v2

    .line 13292
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13294
    throw v2
.end method

.method public blacklist canUsbDataSignalingBeDisabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13543
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x177

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13544
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13545
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13548
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13550
    nop

    .line 13551
    return v2

    .line 13548
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13550
    throw v2
.end method

.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8502
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8503
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8504
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8505
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8508
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8510
    nop

    .line 8511
    return v2

    .line 8508
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8510
    throw v2
.end method

.method public blacklist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10938
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10943
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10945
    nop

    .line 10946
    return v2

    .line 10943
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10945
    throw v2
.end method

.method public greylist-max-o choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8819
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8821
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8822
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8823
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8824
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8825
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 8828
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8830
    nop

    .line 8831
    return-void

    .line 8828
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8830
    throw v2
.end method

.method public greylist-max-o clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11935
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11937
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11938
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 11942
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11944
    nop

    .line 11945
    return-void

    .line 11942
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11944
    throw v2
.end method

.method public greylist-max-o clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9269
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9270
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9271
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 9274
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9276
    nop

    .line 9277
    return-void

    .line 9274
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9276
    throw v2
.end method

.method public blacklist clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12599
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12601
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x142

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12602
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 12605
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12607
    nop

    .line 12608
    return-void

    .line 12605
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12607
    throw v2
.end method

.method public greylist-max-o clearDeviceOwner(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8296
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8297
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8300
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8302
    nop

    .line 8303
    return-void

    .line 8300
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8302
    throw v2
.end method

.method public blacklist clearOrganizationIdForUser(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11192
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11193
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 11196
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11198
    nop

    .line 11199
    return-void

    .line 11196
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11198
    throw v2
.end method

.method public greylist-max-o clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9055
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9057
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9058
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 9061
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9063
    nop

    .line 9064
    return-void

    .line 9061
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9063
    throw v2
.end method

.method public greylist-max-o clearProfileOwner(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8450
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8451
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8452
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8455
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    nop

    .line 8458
    return-void

    .line 8455
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8457
    throw v2
.end method

.method public greylist-max-o clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11844
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11845
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x118

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11846
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11847
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11850
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11852
    nop

    .line 11853
    return v2

    .line 11850
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11852
    throw v2
.end method

.method public blacklist clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12653
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12657
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12658
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12659
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x145

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12660
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12661
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 12664
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12666
    nop

    .line 12667
    return v2

    .line 12664
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12666
    throw v2
.end method

.method public greylist-max-o clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10738
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10739
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 10742
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10744
    nop

    .line 10745
    return-void

    .line 10742
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10744
    throw v2
.end method

.method public greylist-max-o createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9495
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9496
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9497
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 9500
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9502
    nop

    .line 9503
    return-object v2

    .line 9500
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9502
    throw v2
.end method

.method public greylist-max-o createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9574
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9575
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9576
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9577
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9578
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9579
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9580
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9581
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_39

    move-object v2, v3

    .line 9584
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9586
    nop

    .line 9587
    return-object v2

    .line 9584
    .end local v2    # "_result":Landroid/os/UserHandle;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9586
    throw v2
.end method

.method public blacklist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 8
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13373
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13375
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13377
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 13380
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13382
    nop

    .line 13383
    return-object v2

    .line 13380
    .end local v2    # "_result":Landroid/os/UserHandle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13382
    throw v2
.end method

.method public greylist-max-o enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9772
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9775
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9777
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9778
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 9782
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9784
    nop

    .line 9785
    return-void

    .line 9782
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9784
    throw v2
.end method

.method public greylist-max-o enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9793
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9794
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9795
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9796
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9797
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 9801
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9803
    nop

    .line 9804
    return v2

    .line 9801
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9803
    throw v2
.end method

.method public greylist-max-o enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8653
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8654
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8655
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8656
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8659
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8661
    nop

    .line 8662
    return-void

    .line 8659
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8661
    throw v2
.end method

.method public blacklist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .registers 8
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13407
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13408
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13409
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13415
    nop

    .line 13416
    return-void

    .line 13413
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13415
    throw v2
.end method

.method public blacklist forceNetworkLogs()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11494
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11495
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11496
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-wide v2, v3

    .line 11499
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11501
    nop

    .line 11502
    return-wide v2

    .line 11499
    .end local v2    # "_result":J
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11501
    throw v2
.end method

.method public greylist-max-o forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8080
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8082
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8083
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8086
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8088
    nop

    .line 8089
    return-void

    .line 8086
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8088
    throw v2
.end method

.method public greylist-max-o forceSecurityLogs()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11511
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x105

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11512
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11513
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-wide v2, v3

    .line 11516
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11518
    nop

    .line 11519
    return-wide v2

    .line 11516
    .end local v2    # "_result":J
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11518
    throw v2
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11609
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11610
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 11613
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11615
    nop

    .line 11616
    return-void

    .line 11613
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11615
    throw v2
.end method

.method public greylist-max-o generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySpec"    # Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .param p5, "idAttestationFlags"    # I
    .param p6, "attestationChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8773
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8774
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8775
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8776
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8777
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8778
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8780
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 8781
    .local v3, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 8782
    invoke-virtual {p6, v1}, Landroid/security/keymaster/KeymasterCertificateChain;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3d

    .line 8786
    .end local v2    # "_status":Z
    :cond_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8788
    nop

    .line 8789
    return v3

    .line 8786
    .end local v3    # "_result":Z
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8788
    throw v2
.end method

.method public greylist-max-o getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9851
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9852
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9853
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 9856
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9858
    nop

    .line 9859
    return-object v2

    .line 9856
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9858
    throw v2
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9864
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9870
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9871
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9872
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 9875
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9877
    nop

    .line 9878
    return-object v2

    .line 9875
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9877
    throw v2
.end method

.method public greylist-max-o getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8012
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8013
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8014
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 8017
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8019
    nop

    .line 8020
    return-object v2

    .line 8017
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8019
    throw v2
.end method

.method public blacklist getActualDeviceOwnerMDM()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12288
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x130

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12289
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12290
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 12293
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12295
    nop

    .line 12296
    return-object v2

    .line 12293
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12295
    throw v2
.end method

.method public greylist-max-o getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11367
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11368
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11369
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11370
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 11373
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11375
    nop

    .line 11376
    return-object v2

    .line 11373
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11375
    throw v2
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7347
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7348
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7352
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7354
    nop

    .line 7355
    return v2

    .line 7352
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7354
    throw v2
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12944
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12947
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12948
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x155

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12949
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12950
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 12953
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12955
    nop

    .line 12956
    return-object v2

    .line 12953
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12955
    throw v2
.end method

.method public blacklist getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9021
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9022
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9023
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9024
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9027
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9029
    nop

    .line 9030
    return-object v2

    .line 9027
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9029
    throw v2
.end method

.method public greylist-max-o getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8949
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8950
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8951
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8952
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 8955
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8957
    nop

    .line 8958
    return-object v2

    .line 8955
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8957
    throw v2
.end method

.method public blacklist getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8968
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8969
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8970
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 8973
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8975
    nop

    .line 8976
    return-object v2

    .line 8973
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8975
    throw v2
.end method

.method public greylist-max-o getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9107
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9110
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9111
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9112
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 9115
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9117
    nop

    .line 9118
    return-object v2

    .line 9115
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9117
    throw v2
.end method

.method public blacklist getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12562
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12564
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12565
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x140

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12566
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12567
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 12570
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12572
    nop

    .line 12573
    return-object v2

    .line 12570
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12572
    throw v2
.end method

.method public greylist-max-o getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9146
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9147
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9148
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9149
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9152
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9154
    nop

    .line 9155
    return-object v2

    .line 9152
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9154
    throw v2
.end method

.method public blacklist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10585
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10586
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10587
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10588
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10591
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10593
    nop

    .line 10594
    return v2

    .line 10591
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10593
    throw v2
.end method

.method public greylist-max-o getAutoTimeRequired()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10552
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10553
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10554
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 10557
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10559
    nop

    .line 10560
    return v2

    .line 10557
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10559
    throw v2
.end method

.method public blacklist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10619
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10620
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10621
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10622
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10625
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10627
    nop

    .line 10628
    return v2

    .line 10625
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10627
    throw v2
.end method

.method public greylist-max-o getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11738
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11739
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x112

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11740
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11741
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 11744
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11746
    nop

    .line 11747
    return-object v2

    .line 11744
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11746
    throw v2
.end method

.method public greylist-max-o getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10405
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10406
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10408
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10411
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10413
    nop

    .line 10414
    return v2

    .line 10411
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10413
    throw v2
.end method

.method public greylist-max-o getBluetoothContactSharingDisabledForUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10424
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10425
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10426
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10429
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10431
    nop

    .line 10432
    return v2

    .line 10429
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10431
    throw v2
.end method

.method public blacklist getBluetoothContactSharingEnabledForKnox(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14439
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1ac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14440
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14441
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 14444
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14446
    nop

    .line 14447
    return v2

    .line 14444
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14446
    throw v2
.end method

.method public blacklist getCameraDisabled(Landroid/content/ComponentName;IZ)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7815
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7817
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7818
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7819
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7820
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7823
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7825
    nop

    .line 7826
    return v2

    .line 7823
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7825
    throw v2
.end method

.method public greylist-max-o getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8910
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8911
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8913
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 8916
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8918
    nop

    .line 8919
    return-object v2

    .line 8916
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8918
    throw v2
.end method

.method public blacklist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12859
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12860
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x150

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12861
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12862
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 12865
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12867
    nop

    .line 12868
    return-object v2

    .line 12865
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12867
    throw v2
.end method

.method public blacklist getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12892
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12895
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12897
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x152

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12898
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12899
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 12902
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12904
    nop

    .line 12905
    return-object v2

    .line 12902
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12904
    throw v2
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10282
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10283
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10284
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10285
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10288
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10290
    nop

    .line 10291
    return v2

    .line 10288
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10290
    throw v2
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabledForUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10301
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10302
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10303
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10306
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10308
    nop

    .line 10309
    return v2

    .line 10306
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10308
    throw v2
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10334
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10335
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10337
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10340
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10342
    nop

    .line 10343
    return v2

    .line 10340
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10342
    throw v2
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabledForUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10353
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10354
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10355
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10358
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10360
    nop

    .line 10361
    return v2

    .line 10358
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10360
    throw v2
.end method

.method public blacklist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12930
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12931
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x154

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12932
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12933
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 12936
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12938
    nop

    .line 12939
    return-object v2

    .line 12936
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12938
    throw v2
.end method

.method public greylist-max-o getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10518
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10519
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10520
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10521
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 10524
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10526
    nop

    .line 10527
    return-object v2

    .line 10524
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10526
    throw v2
.end method

.method public blacklist getCurrentFailedBiometricAttempts(I)I
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7403
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7404
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7408
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7410
    nop

    .line 7411
    return v2

    .line 7408
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7410
    throw v2
.end method

.method public greylist-max-o getCurrentFailedPasswordAttempts(IZ)I
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7384
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7385
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7389
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7391
    nop

    .line 7392
    return v2

    .line 7389
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7391
    throw v2
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12964
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12965
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x156

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12966
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12967
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 12970
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12972
    nop

    .line 12973
    return-object v2

    .line 12970
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12972
    throw v2
.end method

.method public greylist-max-o getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8875
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8877
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8879
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 8882
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8884
    nop

    .line 8885
    return-object v2

    .line 8882
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8884
    throw v2
.end method

.method public greylist-max-o getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8856
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8858
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8859
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8860
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 8863
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8865
    nop

    .line 8866
    return-object v2

    .line 8863
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8865
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .registers 7
    .param p1, "callingUserOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8245
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8246
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8247
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 8250
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8252
    nop

    .line 8253
    return-object v2

    .line 8250
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8252
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8542
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8544
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 8547
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8549
    nop

    .line 8550
    return-object v2

    .line 8547
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8549
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8279
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8281
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8284
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8286
    nop

    .line 8287
    return-object v2

    .line 8284
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8286
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11283
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11284
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11285
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 11288
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11290
    nop

    .line 11291
    return-object v2

    .line 11288
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11290
    throw v2
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13440
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13441
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x171

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13442
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13446
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13448
    nop

    .line 13449
    return v2

    .line 13446
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13448
    throw v2
.end method

.method public greylist-max-o getDeviceOwnerUserId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8311
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8312
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 8316
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8318
    nop

    .line 8319
    return v2

    .line 8316
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8318
    throw v2
.end method

.method public greylist-max-o getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11986
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11988
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11989
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x120

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11990
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11991
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 11994
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11996
    nop

    .line 11997
    return-object v2

    .line 11994
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11996
    throw v2
.end method

.method public greylist-max-o getDoNotAskCredentialsOnBoot()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10791
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10793
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 10796
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10798
    nop

    .line 10799
    return v2

    .line 10796
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10798
    throw v2
.end method

.method public blacklist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 9
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13673
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13674
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13675
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13676
    sget-object v3, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableResource;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 13679
    .local v2, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13681
    nop

    .line 13682
    return-object v2

    .line 13679
    .end local v2    # "_result":Landroid/app/admin/ParcelableResource;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13681
    throw v2
.end method

.method public greylist-max-o getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12102
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12103
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x126

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12104
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12105
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 12108
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12110
    nop

    .line 12111
    return-object v2

    .line 12108
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12110
    throw v2
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9514
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9515
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9516
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 9519
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9521
    nop

    .line 9522
    return-object v2

    .line 9519
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9521
    throw v2
.end method

.method public blacklist getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13339
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13340
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13341
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 13344
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13346
    nop

    .line 13347
    return-object v2

    .line 13344
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13346
    throw v2
.end method

.method public blacklist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7619
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7620
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7621
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7622
    sget-object v3, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FactoryResetProtectionPolicy;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7625
    .local v2, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7627
    nop

    .line 7628
    return-object v2

    .line 7625
    .end local v2    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7627
    throw v2
.end method

.method public greylist-max-o getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10653
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10654
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10655
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10656
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10659
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10661
    nop

    .line 10662
    return v2

    .line 10659
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10661
    throw v2
.end method

.method public blacklist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12791
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12792
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12793
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12794
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 12797
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12799
    nop

    .line 12800
    return-object v2

    .line 12797
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12799
    throw v2
.end method

.method public blacklist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12773
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12774
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 12779
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12781
    nop

    .line 12782
    return v2

    .line 12779
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12781
    throw v2
.end method

.method public greylist-max-o getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7690
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7692
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7695
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7697
    nop

    .line 7698
    return-object v2

    .line 7695
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7697
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 6820
    const-string v0, "android.app.admin.IDevicePolicyManager"

    return-object v0
.end method

.method public greylist-max-o getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10972
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10974
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10975
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10976
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 10979
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10981
    nop

    .line 10982
    return-object v2

    .line 10979
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10981
    throw v2
.end method

.method public blacklist getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;
    .registers 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13062
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13063
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13064
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13065
    sget-object v3, Landroid/app/admin/ParcelableGranteeMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableGranteeMap;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 13068
    .local v2, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13070
    nop

    .line 13071
    return-object v2

    .line 13068
    .end local v2    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13070
    throw v2
.end method

.method public greylist-max-o getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7955
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7956
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7957
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7958
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7959
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7960
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7963
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7965
    nop

    .line 7966
    return v2

    .line 7963
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7965
    throw v2
.end method

.method public greylist-max-o getLastBugReportRequestTime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11791
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x115

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11793
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-wide v2, v3

    .line 11796
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11798
    nop

    .line 11799
    return-wide v2

    .line 11796
    .end local v2    # "_result":J
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11798
    throw v2
.end method

.method public greylist-max-o getLastNetworkLogRetrievalTime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11808
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x116

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11810
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-wide v2, v3

    .line 11813
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11815
    nop

    .line 11816
    return-wide v2

    .line 11813
    .end local v2    # "_result":J
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11815
    throw v2
.end method

.method public greylist-max-o getLastSecurityLogRetrievalTime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11774
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x114

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11776
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-wide v2, v3

    .line 11779
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11781
    nop

    .line 11782
    return-wide v2

    .line 11779
    .end local v2    # "_result":J
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11781
    throw v2
.end method

.method public greylist-max-o getLockTaskFeatures(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10021
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10022
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10023
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10027
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10029
    nop

    .line 10030
    return v2

    .line 10027
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10029
    throw v2
.end method

.method public greylist-max-o getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9965
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9968
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9969
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9970
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9971
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9972
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9975
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9977
    nop

    .line 9978
    return-object v2

    .line 9975
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9977
    throw v2
.end method

.method public blacklist getLogoutUserId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9708
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9709
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 9713
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9715
    nop

    .line 9716
    return v2

    .line 9713
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9715
    throw v2
.end method

.method public greylist-max-o getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11104
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11105
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xee

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11107
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 11110
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11112
    nop

    .line 11113
    return-object v2

    .line 11110
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11112
    throw v2
.end method

.method public greylist-max-o getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11141
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11143
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11145
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 11148
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11150
    nop

    .line 11151
    return-object v2

    .line 11148
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11150
    throw v2
.end method

.method public blacklist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13221
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13222
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x164

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13223
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13224
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-wide v2, v3

    .line 13227
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13229
    nop

    .line 13230
    return-wide v2

    .line 13227
    .end local v2    # "_result":J
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13229
    throw v2
.end method

.method public greylist-max-o getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7457
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7459
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7460
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7461
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7465
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7467
    nop

    .line 7468
    return v2

    .line 7465
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7467
    throw v2
.end method

.method public greylist-max-o getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7513
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7515
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7516
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7517
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7518
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-wide v2, v3

    .line 7521
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7523
    nop

    .line 7524
    return-wide v2

    .line 7521
    .end local v2    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7523
    throw v2
.end method

.method public greylist-max-o getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12139
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12140
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x128

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12141
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12142
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 12145
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12147
    nop

    .line 12148
    return-object v2

    .line 12145
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12147
    throw v2
.end method

.method public blacklist getMinimumRequiredWifiSecurityLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13575
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x179

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13576
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13580
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13582
    nop

    .line 13583
    return v2

    .line 13580
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13582
    throw v2
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7921
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7926
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7928
    nop

    .line 7929
    return v2

    .line 7926
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7928
    throw v2
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7888
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7889
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7890
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7893
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7895
    nop

    .line 7896
    return v2

    .line 7893
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7895
    throw v2
.end method

.method public greylist-max-o getOrganizationColor(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11206
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11207
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11208
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11209
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11213
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11215
    nop

    .line 11216
    return v2

    .line 11213
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11215
    throw v2
.end method

.method public greylist-max-o getOrganizationColorForUser(I)I
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11226
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11231
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11233
    nop

    .line 11234
    return v2

    .line 11231
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11233
    throw v2
.end method

.method public greylist-max-o getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11265
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11266
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11267
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11268
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 11271
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11273
    nop

    .line 11274
    return-object v2

    .line 11271
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11273
    throw v2
.end method

.method public greylist-max-o getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11301
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11302
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11303
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 11306
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11308
    nop

    .line 11309
    return-object v2

    .line 11306
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11308
    throw v2
.end method

.method public greylist-max-o getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12215
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12216
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12217
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12218
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 12221
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12223
    nop

    .line 12224
    return-object v2

    .line 12221
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12223
    throw v2
.end method

.method public greylist-max-o getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11918
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11919
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11920
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11921
    sget-object v3, Landroid/content/pm/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/StringParceledListSlice;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 11924
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11926
    nop

    .line 11927
    return-object v2

    .line 11924
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11926
    throw v2
.end method

.method public blacklist getPasswordComplexity(Z)I
    .registers 7
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7294
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7295
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7299
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7301
    nop

    .line 7302
    return v2

    .line 7299
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7301
    throw v2
.end method

.method public greylist-max-o getPasswordExpiration(Landroid/content/ComponentName;IZ)J
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7218
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7219
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7220
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7221
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7223
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-wide v2, v3

    .line 7226
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7228
    nop

    .line 7229
    return-wide v2

    .line 7226
    .end local v2    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7228
    throw v2
.end method

.method public greylist-max-o getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7198
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7200
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7201
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7202
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7203
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-wide v2, v3

    .line 7206
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7208
    nop

    .line 7209
    return-wide v2

    .line 7206
    .end local v2    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7208
    throw v2
.end method

.method public greylist-max-o getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7157
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7161
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7163
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7164
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7165
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7169
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7171
    nop

    .line 7172
    return v2

    .line 7169
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7171
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6882
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6883
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6884
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6885
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6886
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 6891
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6893
    nop

    .line 6894
    return v2

    .line 6891
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6893
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6994
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6996
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6997
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6998
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6999
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7002
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7004
    nop

    .line 7005
    return v2

    .line 7002
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7004
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6957
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6959
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6960
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6961
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6962
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 6965
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6967
    nop

    .line 6968
    return v2

    .line 6965
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6967
    throw v2
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7127
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7128
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7129
    sget-object v3, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PasswordMetrics;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 7132
    .local v2, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7134
    nop

    .line 7135
    return-object v2

    .line 7132
    .end local v2    # "_result":Landroid/app/admin/PasswordMetrics;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7134
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7105
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7108
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7109
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7113
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7115
    nop

    .line 7116
    return v2

    .line 7113
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7115
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7031
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7032
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7033
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7034
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7035
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7039
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7041
    nop

    .line 7042
    return v2

    .line 7039
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7041
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7068
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7070
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7071
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7072
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7076
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7078
    nop

    .line 7079
    return v2

    .line 7076
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7078
    throw v2
.end method

.method public greylist-max-o getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6920
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6921
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6922
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6923
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6924
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 6928
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6930
    nop

    .line 6931
    return v2

    .line 6928
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6930
    throw v2
.end method

.method public greylist-max-o getPasswordQuality(Landroid/content/ComponentName;IZ)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6846
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6848
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6849
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6850
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 6854
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6856
    nop

    .line 6857
    return v2

    .line 6854
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6856
    throw v2
.end method

.method public greylist-max-o getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10822
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10823
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10824
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10825
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10826
    sget-object v3, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdateInfo;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 10829
    .local v2, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10831
    nop

    .line 10832
    return-object v2

    .line 10829
    .end local v2    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10831
    throw v2
.end method

.method public greylist-max-o getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10892
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10895
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10896
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10897
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10898
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10899
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10900
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10901
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 10905
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10907
    nop

    .line 10908
    return v2

    .line 10905
    .end local v2    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10907
    throw v2
.end method

.method public greylist-max-o getPermissionPolicy(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10858
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10859
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10860
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10864
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10866
    nop

    .line 10867
    return v2

    .line 10864
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10866
    throw v2
.end method

.method public greylist-max-o getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9304
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9305
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9306
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9307
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9310
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9312
    nop

    .line 9313
    return-object v2

    .line 9310
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9312
    throw v2
.end method

.method public greylist-max-o getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9323
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9325
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9328
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9330
    nop

    .line 9331
    return-object v2

    .line 9328
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9330
    throw v2
.end method

.method public greylist-max-o getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9457
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9458
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9460
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9463
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9465
    nop

    .line 9466
    return-object v2

    .line 9463
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9465
    throw v2
.end method

.method public blacklist getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9380
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9382
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9384
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 9387
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9389
    nop

    .line 9390
    return-object v2

    .line 9387
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9389
    throw v2
.end method

.method public blacklist getPermittedInputMethodsAsUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9400
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9402
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9405
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9407
    nop

    .line 9408
    return-object v2

    .line 9405
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9407
    throw v2
.end method

.method public blacklist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13187
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13188
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x162

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13189
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13193
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13195
    nop

    .line 13196
    return v2

    .line 13193
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13195
    throw v2
.end method

.method public blacklist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13788
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13789
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x186

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13790
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13791
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 13794
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13796
    nop

    .line 13797
    return-object v2

    .line 13794
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13796
    throw v2
.end method

.method public blacklist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9936
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9937
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9938
    sget-object v3, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move-object v2, v3

    .line 9941
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9943
    nop

    .line 9944
    return-object v2

    .line 9941
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9943
    throw v2
.end method

.method public blacklist getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8349
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8350
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8351
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 8354
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8356
    nop

    .line 8357
    return-object v2

    .line 8354
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8356
    throw v2
.end method

.method public greylist-max-o getProfileOwnerName(I)Ljava/lang/String;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8403
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8404
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8405
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 8408
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8410
    nop

    .line 8411
    return-object v2

    .line 8408
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8410
    throw v2
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8366
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8367
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8368
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8369
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 8372
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8374
    nop

    .line 8375
    return-object v2

    .line 8372
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8374
    throw v2
.end method

.method public greylist-max-o getProfileWithMinimumFailedPasswordsForWipe(IZ)I
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7423
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7428
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7430
    nop

    .line 7431
    return v2

    .line 7428
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7430
    throw v2
.end method

.method public greylist-max-o getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 9
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8047
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8048
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8049
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8050
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8051
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8054
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8056
    nop

    .line 8057
    return-void

    .line 8054
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8056
    throw v2
.end method

.method public blacklist getRequiredPasswordComplexity(Z)I
    .registers 7
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7328
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7329
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7333
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7335
    nop

    .line 7336
    return v2

    .line 7333
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7335
    throw v2
.end method

.method public greylist-max-o getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7550
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7553
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7554
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7555
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-wide v2, v3

    .line 7558
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7560
    nop

    .line 7561
    return-wide v2

    .line 7558
    .end local v2    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7560
    throw v2
.end method

.method public greylist-max-o getRestrictionsProvider(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9199
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9200
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9201
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 9204
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9206
    nop

    .line 9207
    return-object v2

    .line 9204
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9206
    throw v2
.end method

.method public blacklist getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14476
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14478
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1ae

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14479
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14480
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14483
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14485
    nop

    .line 14486
    return v2

    .line 14483
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14485
    throw v2
.end method

.method public blacklist getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7852
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7854
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7855
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7856
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7857
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7860
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7862
    nop

    .line 7863
    return v2

    .line 7860
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7862
    throw v2
.end method

.method public greylist-max-o getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9725
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9726
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9728
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 9731
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9733
    nop

    .line 9734
    return-object v2

    .line 9731
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9733
    throw v2
.end method

.method public greylist-max-o getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11064
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11065
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xec

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11066
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11067
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 11070
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11072
    nop

    .line 11073
    return-object v2

    .line 11070
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11072
    throw v2
.end method

.method public greylist-max-o getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11122
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11124
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xef

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11126
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 11129
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11131
    nop

    .line 11132
    return-object v2

    .line 11129
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11131
    throw v2
.end method

.method public greylist-max-o getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12084
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12085
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x125

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12086
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12087
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 12090
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12092
    nop

    .line 12093
    return-object v2

    .line 12090
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12092
    throw v2
.end method

.method public greylist-max-o getStorageEncryption(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7742
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7744
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7745
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7746
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7749
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7751
    nop

    .line 7752
    return v2

    .line 7749
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7751
    throw v2
.end method

.method public greylist-max-o getStorageEncryptionStatus(Ljava/lang/String;I)I
    .registers 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7763
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7764
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7765
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7768
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7770
    nop

    .line 7771
    return v2

    .line 7768
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7770
    throw v2
.end method

.method public blacklist getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 7
    .param p1, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13754
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x184

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13755
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13756
    sget-object v3, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ParcelableResource;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 13759
    .local v2, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13761
    nop

    .line 13762
    return-object v2

    .line 13759
    .end local v2    # "_result":Landroid/app/admin/ParcelableResource;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13761
    throw v2
.end method

.method public greylist-max-o getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10722
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10723
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10724
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdatePolicy;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 10727
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10729
    nop

    .line 10730
    return-object v2

    .line 10727
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10729
    throw v2
.end method

.method public greylist-max-o getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12023
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x122

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12025
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 12028
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12030
    nop

    .line 12031
    return-object v2

    .line 12028
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12030
    throw v2
.end method

.method public greylist-max-o getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10459
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10460
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10461
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10462
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10463
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xca

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10464
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10465
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_34

    move-object v2, v3

    .line 10468
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10470
    nop

    .line 10471
    return-object v2

    .line 10468
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10470
    throw v2
.end method

.method public blacklist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13135
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13136
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13137
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13138
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 13141
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13143
    nop

    .line 13144
    return-object v2

    .line 13141
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13143
    throw v2
.end method

.method public greylist-max-o getUserProvisioningState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11318
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11319
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11323
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11325
    nop

    .line 11326
    return v2

    .line 11323
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11325
    throw v2
.end method

.method public blacklist getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9234
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9236
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9237
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9238
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 9241
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9243
    nop

    .line 9244
    return-object v2

    .line 9241
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9243
    throw v2
.end method

.method public greylist-max-o getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11008
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11009
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11010
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11011
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11012
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 11015
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11017
    nop

    .line 11018
    return-object v2

    .line 11015
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11017
    throw v2
.end method

.method public blacklist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13607
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13608
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13609
    sget-object v3, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/WifiSsidPolicy;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 13612
    .local v2, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13614
    nop

    .line 13615
    return-object v2

    .line 13612
    .end local v2    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13614
    throw v2
.end method

.method public blacklist hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12735
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x149

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12736
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12737
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 12740
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12742
    nop

    .line 12743
    return v2

    .line 12740
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12742
    throw v2
.end method

.method public greylist-max-o hasDeviceOwner()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8262
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8263
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8264
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 8267
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8269
    nop

    .line 8270
    return v2

    .line 8267
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8269
    throw v2
.end method

.method public greylist-max-o hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 9
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8093
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8096
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8097
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8099
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8100
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8101
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8102
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8105
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8107
    nop

    .line 8108
    return v2

    .line 8105
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8107
    throw v2
.end method

.method public blacklist hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8756
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8757
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8758
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8761
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8763
    nop

    .line 8764
    return v2

    .line 8761
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8763
    throw v2
.end method

.method public blacklist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10106
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10107
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10108
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10109
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10112
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10114
    nop

    .line 10115
    return v2

    .line 10112
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10114
    throw v2
.end method

.method public greylist-max-o hasUserSetupCompleted()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8466
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8468
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 8471
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8473
    nop

    .line 8474
    return v2

    .line 8471
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8473
    throw v2
.end method

.method public greylist-max-o installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8617
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8618
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8619
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8620
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8621
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8622
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8625
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8627
    nop

    .line 8628
    return v2

    .line 8625
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8627
    throw v2
.end method

.method public greylist-max-o installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9813
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9816
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9817
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9818
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 9821
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9823
    nop

    .line 9824
    return v2

    .line 9821
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9823
    throw v2
.end method

.method public greylist-max-o installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "privKeyBuffer"    # [B
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "alias"    # Ljava/lang/String;
    .param p7, "requestAccess"    # Z
    .param p8, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8709
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8711
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8712
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8713
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8714
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8715
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8716
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8717
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8718
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8719
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3e

    move v2, v3

    .line 8722
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8724
    nop

    .line 8725
    return v2

    .line 8722
    .end local v2    # "_result":Z
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8724
    throw v2
.end method

.method public blacklist installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12825
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12826
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12827
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12828
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12829
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12832
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12834
    nop

    .line 12835
    return-void

    .line 12832
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12834
    throw v2
.end method

.method public greylist-max-o isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9340
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9342
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9343
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9344
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9345
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 9348
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9350
    nop

    .line 9351
    return v2

    .line 9348
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9350
    throw v2
.end method

.method public greylist-max-o isActivePasswordSufficient(IZ)Z
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7240
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7242
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7245
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    nop

    .line 7248
    return v2

    .line 7245
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    throw v2
.end method

.method public blacklist isActivePasswordSufficientForDeviceRequirement()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7257
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7259
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7262
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7264
    nop

    .line 7265
    return v2

    .line 7262
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7264
    throw v2
.end method

.method public greylist-max-o isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7992
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7994
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7995
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7996
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7999
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8001
    nop

    .line 8002
    return v2

    .line 7999
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8001
    throw v2
.end method

.method public blacklist isAffiliatedUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11403
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11404
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11405
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11408
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11410
    nop

    .line 11411
    return v2

    .line 11408
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11410
    throw v2
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8985
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8986
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8987
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8988
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8991
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8993
    nop

    .line 8994
    return v2

    .line 8991
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8993
    throw v2
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabledForUser(I)Z
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9004
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9006
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9009
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9011
    nop

    .line 9012
    return v2

    .line 9009
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9011
    throw v2
.end method

.method public blacklist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9553
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9555
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9556
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9557
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9558
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9559
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 9562
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9564
    nop

    .line 9565
    return v2

    .line 9562
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9564
    throw v2
.end method

.method public greylist-max-o isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11640
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11641
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11643
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11646
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11648
    nop

    .line 11649
    return v2

    .line 11646
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11648
    throw v2
.end method

.method public greylist-max-o isCaCertApproved(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8691
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8692
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8693
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8694
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8697
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8699
    nop

    .line 8700
    return v2

    .line 8697
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8699
    throw v2
.end method

.method public greylist-max-o isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9165
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9166
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9167
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9170
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9172
    nop

    .line 9173
    return v2

    .line 9170
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9172
    throw v2
.end method

.method public blacklist isCallingUserAffiliated()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11385
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11386
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11387
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11390
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11392
    nop

    .line 11393
    return v2

    .line 11390
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11392
    throw v2
.end method

.method public blacklist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13169
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13170
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x161

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13172
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13175
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13177
    nop

    .line 13178
    return v2

    .line 13175
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13177
    throw v2
.end method

.method public blacklist isComplianceAcknowledgementRequired()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13269
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x167

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13270
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13271
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13274
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13276
    nop

    .line 13277
    return v2

    .line 13274
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13276
    throw v2
.end method

.method public greylist-max-o isCurrentInputMethodSetByOwner()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11901
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11902
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11903
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11906
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11908
    nop

    .line 11909
    return v2

    .line 11906
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11908
    throw v2
.end method

.method public greylist-max-o isDeviceProvisioned()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11561
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11562
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11563
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11566
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11568
    nop

    .line 11569
    return v2

    .line 11566
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11568
    throw v2
.end method

.method public greylist-max-o isDeviceProvisioningConfigApplied()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11578
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x109

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11579
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11580
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11583
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11585
    nop

    .line 11586
    return v2

    .line 11583
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11585
    throw v2
.end method

.method public blacklist isDpcDownloaded()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13691
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x180

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13692
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13693
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13696
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13698
    nop

    .line 13699
    return v2

    .line 13696
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13698
    throw v2
.end method

.method public greylist-max-o isEphemeralUser(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11756
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11757
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x113

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11759
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11762
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11764
    nop

    .line 11765
    return v2

    .line 11762
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11764
    throw v2
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7637
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7638
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7639
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7642
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7644
    nop

    .line 7645
    return v2

    .line 7642
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7644
    throw v2
.end method

.method public blacklist isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9417
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9420
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9421
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9422
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9423
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 9426
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9428
    nop

    .line 9429
    return v2

    .line 9426
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9428
    throw v2
.end method

.method public blacklist isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13102
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13103
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13104
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 13107
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13109
    nop

    .line 13110
    return v2

    .line 13107
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13109
    throw v2
.end method

.method public greylist-max-o isLockTaskPermitted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9986
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9988
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9989
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9990
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9993
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9995
    nop

    .line 9996
    return v2

    .line 9993
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9995
    throw v2
.end method

.method public greylist-max-o isLogoutEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11965
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11968
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11969
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11970
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11971
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 11974
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11976
    nop

    .line 11977
    return v2

    .line 11974
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11976
    throw v2
.end method

.method public blacklist isManagedKiosk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12978
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12981
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12982
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x157

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12983
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12984
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 12987
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12989
    nop

    .line 12990
    return v2

    .line 12987
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12989
    throw v2
.end method

.method public greylist-max-o isManagedProfile(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10991
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10992
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10993
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10994
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10997
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10999
    nop

    .line 11000
    return v2

    .line 10997
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10999
    throw v2
.end method

.method public greylist-max-o isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10194
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10195
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10196
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10197
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 10200
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10202
    nop

    .line 10203
    return v2

    .line 10200
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10202
    throw v2
.end method

.method public greylist-max-o isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12267
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12270
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12271
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12272
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 12275
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12277
    nop

    .line 12278
    return v2

    .line 12275
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12277
    throw v2
.end method

.method public blacklist isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11675
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11677
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11678
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11679
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 11682
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11684
    nop

    .line 11685
    return v2

    .line 11682
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11684
    throw v2
.end method

.method public blacklist isNewUserDisclaimerAcknowledged(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9759
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9760
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9761
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9764
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9766
    nop

    .line 9767
    return v2

    .line 9764
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9766
    throw v2
.end method

.method public greylist-max-o isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9477
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9478
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9479
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9482
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9484
    nop

    .line 9485
    return v2

    .line 9482
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9484
    throw v2
.end method

.method public blacklist isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8483
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8484
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8485
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 8488
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8490
    nop

    .line 8491
    return v2

    .line 8488
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8490
    throw v2
.end method

.method public greylist-max-o isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12249
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12250
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12252
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 12255
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12257
    nop

    .line 12258
    return v2

    .line 12255
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12257
    throw v2
.end method

.method public blacklist isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12879
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x151

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12880
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12881
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 12884
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12886
    nop

    .line 12887
    return v2

    .line 12884
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12886
    throw v2
.end method

.method public greylist-max-o isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8580
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8581
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8582
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8583
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8585
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8588
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8590
    nop

    .line 8591
    return v2

    .line 8588
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8590
    throw v2
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7276
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7277
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7278
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7281
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7283
    nop

    .line 7284
    return v2

    .line 7281
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7283
    throw v2
.end method

.method public blacklist isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12715
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x148

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 12720
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12722
    nop

    .line 12723
    return v2

    .line 12720
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12722
    throw v2
.end method

.method public greylist-max-o isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10919
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10920
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10921
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10924
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10926
    nop

    .line 10927
    return v2

    .line 10924
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10926
    throw v2
.end method

.method public greylist-max-o isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10671
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10673
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10674
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10675
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10678
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10680
    nop

    .line 10681
    return v2

    .line 10678
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10680
    throw v2
.end method

.method public greylist-max-o isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11862
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11863
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x119

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11864
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11865
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11868
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11870
    nop

    .line 11871
    return v2

    .line 11868
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11870
    throw v2
.end method

.method public blacklist isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12638
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12640
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x144

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12642
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 12645
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12647
    nop

    .line 12648
    return v2

    .line 12645
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12647
    throw v2
.end method

.method public blacklist isSafeOperation(I)Z
    .registers 7
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13321
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13322
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13323
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13326
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13328
    nop

    .line 13329
    return v2

    .line 13326
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13328
    throw v2
.end method

.method public blacklist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9903
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9904
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9906
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9909
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9911
    nop

    .line 9912
    return v2

    .line 9909
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9911
    throw v2
.end method

.method public blacklist isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11437
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11438
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11439
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x101

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11440
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11441
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 11444
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11446
    nop

    .line 11447
    return v2

    .line 11444
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11446
    throw v2
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8384
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8385
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8386
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8387
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8390
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8392
    nop

    .line 8393
    return v2

    .line 8390
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8392
    throw v2
.end method

.method public blacklist isUnattendedManagedKiosk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12995
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12998
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12999
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x158

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13000
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13001
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13004
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13006
    nop

    .line 13007
    return v2

    .line 13004
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13006
    throw v2
.end method

.method public greylist-max-o isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10247
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10249
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10250
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10251
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10254
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10256
    nop

    .line 10257
    return v2

    .line 10254
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10256
    throw v2
.end method

.method public greylist-max-o isUninstallInQueue(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11529
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11530
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11531
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 11534
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11536
    nop

    .line 11537
    return v2

    .line 11534
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11536
    throw v2
.end method

.method public blacklist isUsbDataSignalingEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13508
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x175

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13509
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13510
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13513
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13515
    nop

    .line 13516
    return v2

    .line 13513
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13515
    throw v2
.end method

.method public blacklist isUsbDataSignalingEnabledForUser(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13526
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x176

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13527
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13528
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13531
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13533
    nop

    .line 13534
    return v2

    .line 13531
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13533
    throw v2
.end method

.method public greylist-max-o isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7364
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7365
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7366
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7367
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7370
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7372
    nop

    .line 7373
    return v2

    .line 7370
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7372
    throw v2
.end method

.method public blacklist listForegroundAffiliatedUsers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13624
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13625
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13626
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move-object v2, v3

    .line 13629
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13631
    nop

    .line 13632
    return-object v2

    .line 13629
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13631
    throw v2
.end method

.method public blacklist listPolicyExemptApps()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8600
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8601
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8602
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8605
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8607
    nop

    .line 8608
    return-object v2

    .line 8605
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8607
    throw v2
.end method

.method public greylist-max-o lockNow(IZ)V
    .registers 8
    .param p1, "flags"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7571
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7572
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7575
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7577
    nop

    .line 7578
    return-void

    .line 7575
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7577
    throw v2
.end method

.method public greylist-max-o logoutUser(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9672
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9673
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9674
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9675
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9678
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9680
    nop

    .line 9681
    return v2

    .line 9678
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9680
    throw v2
.end method

.method public blacklist logoutUserInternal()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9690
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 9695
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9697
    nop

    .line 9698
    return v2

    .line 9695
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9697
    throw v2
.end method

.method public greylist-max-o notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .registers 9
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10210
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10213
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10214
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10215
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10218
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10220
    nop

    .line 10221
    return-void

    .line 10218
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10220
    throw v2
.end method

.method public greylist-max-o notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/app/admin/SystemUpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10807
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10808
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xde

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 10812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10814
    nop

    .line 10815
    return-void

    .line 10812
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10814
    throw v2
.end method

.method public greylist-max-o packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8030
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8031
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8032
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8033
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8036
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8038
    nop

    .line 8039
    return v2

    .line 8036
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8038
    throw v2
.end method

.method public blacklist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .registers 8
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13391
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13393
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13394
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13397
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13399
    nop

    .line 13400
    return-void

    .line 13397
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13399
    throw v2
.end method

.method public greylist-max-o reboot(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11026
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11027
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xea

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11028
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 11031
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11033
    nop

    .line 11034
    return-void

    .line 11031
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11033
    throw v2
.end method

.method public blacklist rebootMDM(Ljava/lang/String;)Z
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12306
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x131

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12307
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12308
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 12311
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12313
    nop

    .line 12314
    return v2

    .line 12311
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12313
    throw v2
.end method

.method public greylist-max-o removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8064
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8066
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8067
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8070
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8072
    nop

    .line 8073
    return-void

    .line 8070
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8072
    throw v2
.end method

.method public greylist-max-o removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10499
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10501
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10502
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10503
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10506
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10508
    nop

    .line 10509
    return v2

    .line 10506
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10508
    throw v2
.end method

.method public greylist-max-o removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8730
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8733
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8734
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8736
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8737
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8738
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8739
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8742
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8744
    nop

    .line 8745
    return v2

    .line 8742
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8744
    throw v2
.end method

.method public greylist-max-o removeOverrideApn(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12196
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12198
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12199
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12200
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 12203
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12205
    nop

    .line 12206
    return v2

    .line 12203
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12205
    throw v2
.end method

.method public greylist-max-o removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9592
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9595
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9596
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9597
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9598
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9599
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9600
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9603
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9605
    nop

    .line 9606
    return v2

    .line 9603
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9605
    throw v2
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8163
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8164
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8167
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    nop

    .line 8170
    return-void

    .line 8167
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    throw v2
.end method

.method public greylist-max-o reportFailedPasswordAttempt(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8131
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8133
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8134
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8137
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8139
    nop

    .line 8140
    return-void

    .line 8137
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8139
    throw v2
.end method

.method public greylist-max-o reportKeyguardDismissed(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8193
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8199
    nop

    .line 8200
    return-void

    .line 8197
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8199
    throw v2
.end method

.method public greylist-max-o reportKeyguardSecured(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8206
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8208
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8209
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8214
    nop

    .line 8215
    return-void

    .line 8212
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8214
    throw v2
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .registers 8
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8116
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8117
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8118
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8119
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8122
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8124
    nop

    .line 8125
    return-void

    .line 8122
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8124
    throw v2
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8178
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8184
    nop

    .line 8185
    return-void

    .line 8182
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8184
    throw v2
.end method

.method public greylist-max-o reportSuccessfulPasswordAttempt(I)V
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8148
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8149
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8154
    nop

    .line 8155
    return-void

    .line 8152
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8154
    throw v2
.end method

.method public greylist-max-o requestBugreport(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7776
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7779
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7780
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7781
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7782
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7783
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7786
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7788
    nop

    .line 7789
    return v2

    .line 7786
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7788
    throw v2
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13458
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x172

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13462
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13464
    nop

    .line 13465
    return-void

    .line 13462
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13464
    throw v2
.end method

.method public blacklist resetDrawables(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13651
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13656
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13657
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13660
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13662
    nop

    .line 13663
    return-void

    .line 13660
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13662
    throw v2
.end method

.method public greylist-max-o resetPassword(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7479
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7480
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7481
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7484
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7486
    nop

    .line 7487
    return v2

    .line 7484
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7486
    throw v2
.end method

.method public greylist-max-o resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11876
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11879
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11880
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11881
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11882
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11883
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11884
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11885
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11886
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 11889
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11891
    nop

    .line 11892
    return v2

    .line 11889
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11891
    throw v2
.end method

.method public blacklist resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12616
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 12619
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12620
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 12621
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x143

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12622
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12623
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_35

    move v2, v3

    .line 12626
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12628
    nop

    .line 12629
    return v2

    .line 12626
    .end local v2    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12628
    throw v2
.end method

.method public blacklist resetStrings(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13733
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13738
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x183

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13739
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13742
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13744
    nop

    .line 13745
    return-void

    .line 13742
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13744
    throw v2
.end method

.method public blacklist retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11694
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11696
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 11697
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x110

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11699
    sget-object v3, Landroid/app/admin/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_31

    move-object v2, v3

    .line 11702
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11704
    nop

    .line 11705
    return-object v2

    .line 11702
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11704
    throw v2
.end method

.method public blacklist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11475
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11477
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x103

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11478
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11479
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 11482
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11484
    nop

    .line 11485
    return-object v2

    .line 11482
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11484
    throw v2
.end method

.method public blacklist retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11456
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11458
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x102

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11460
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 11463
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11465
    nop

    .line 11466
    return-object v2

    .line 11463
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11465
    throw v2
.end method

.method public blacklist semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14278
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14280
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14282
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14285
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14287
    nop

    .line 14288
    return v2

    .line 14285
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14287
    throw v2
.end method

.method public blacklist semGetAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14208
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14210
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14211
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14212
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14215
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14217
    nop

    .line 14218
    return v2

    .line 14215
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14217
    throw v2
.end method

.method public blacklist semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14313
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14314
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14315
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14316
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14317
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14320
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14322
    nop

    .line 14323
    return v2

    .line 14320
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14322
    throw v2
.end method

.method public blacklist semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14243
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14245
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14246
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14247
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14250
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14252
    nop

    .line 14253
    return v2

    .line 14250
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14252
    throw v2
.end method

.method public blacklist semGetAllowIrda(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14348
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14350
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14351
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14352
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14355
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14357
    nop

    .line 14358
    return v2

    .line 14355
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14357
    throw v2
.end method

.method public blacklist semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14173
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14175
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14176
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14177
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14180
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14182
    nop

    .line 14183
    return v2

    .line 14180
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14182
    throw v2
.end method

.method public blacklist semGetAllowStorageCard(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14068
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14070
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x197

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14071
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14072
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14075
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14077
    nop

    .line 14078
    return v2

    .line 14075
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14077
    throw v2
.end method

.method public blacklist semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14138
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14140
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14141
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14142
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14145
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14147
    nop

    .line 14148
    return v2

    .line 14145
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14147
    throw v2
.end method

.method public blacklist semGetAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14103
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14105
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x199

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14107
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14110
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14112
    nop

    .line 14113
    return v2

    .line 14110
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14112
    throw v2
.end method

.method public blacklist semGetRequireStorageCardEncryption(Landroid/content/ComponentName;IZ)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "isParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14384
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14386
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14387
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14388
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14389
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 14392
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14394
    nop

    .line 14395
    return v2

    .line 14392
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14394
    throw v2
.end method

.method public blacklist semIsActivePasswordSufficient(I)Z
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13968
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x191

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13969
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13970
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 13973
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13975
    nop

    .line 13976
    return v2

    .line 13973
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13975
    throw v2
.end method

.method public blacklist semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14001
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14003
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x193

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14004
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14005
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 14008
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14010
    nop

    .line 14011
    return v2

    .line 14008
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14010
    throw v2
.end method

.method public blacklist semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14261
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14263
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14264
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14267
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14269
    nop

    .line 14270
    return-void

    .line 14267
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14269
    throw v2
.end method

.method public blacklist semSetAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14191
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14193
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14199
    nop

    .line 14200
    return-void

    .line 14197
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14199
    throw v2
.end method

.method public blacklist semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14296
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14298
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14302
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14304
    nop

    .line 14305
    return-void

    .line 14302
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14304
    throw v2
.end method

.method public blacklist semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14226
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14228
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14229
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14232
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14234
    nop

    .line 14235
    return-void

    .line 14232
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14234
    throw v2
.end method

.method public blacklist semSetAllowIrda(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14331
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14333
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14334
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14337
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14339
    nop

    .line 14340
    return-void

    .line 14337
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14339
    throw v2
.end method

.method public blacklist semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14156
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14158
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14159
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14162
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14164
    nop

    .line 14165
    return-void

    .line 14162
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14164
    throw v2
.end method

.method public blacklist semSetAllowStorageCard(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14051
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14052
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14053
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x196

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14057
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14059
    nop

    .line 14060
    return-void

    .line 14057
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14059
    throw v2
.end method

.method public blacklist semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14121
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14123
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14127
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14129
    nop

    .line 14130
    return-void

    .line 14127
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14129
    throw v2
.end method

.method public blacklist semSetAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14086
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14087
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14088
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x198

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14089
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14092
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14094
    nop

    .line 14095
    return-void

    .line 14092
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14094
    throw v2
.end method

.method public blacklist semSetCameraDisabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14035
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14037
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x195

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14038
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14041
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14043
    nop

    .line 14044
    return-void

    .line 14041
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14043
    throw v2
.end method

.method public blacklist semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14403
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14405
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1aa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14406
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14409
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14411
    nop

    .line 14412
    return-void

    .line 14409
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14411
    throw v2
.end method

.method public blacklist semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14019
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14020
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14021
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x194

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14022
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14025
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14027
    nop

    .line 14028
    return-void

    .line 14025
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14027
    throw v2
.end method

.method public blacklist semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13950
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13951
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 13952
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x190

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13953
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13956
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13958
    nop

    .line 13959
    return-void

    .line 13956
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13958
    throw v2
.end method

.method public blacklist semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13934
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13936
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13937
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13940
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13942
    nop

    .line 13943
    return-void

    .line 13940
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13942
    throw v2
.end method

.method public blacklist semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13822
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13824
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x188

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13825
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13828
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13830
    nop

    .line 13831
    return-void

    .line 13828
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13830
    throw v2
.end method

.method public blacklist semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13870
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13871
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13872
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13876
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13878
    nop

    .line 13879
    return-void

    .line 13876
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13878
    throw v2
.end method

.method public blacklist semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13853
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13854
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13855
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13856
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13857
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13860
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13862
    nop

    .line 13863
    return-void

    .line 13860
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13862
    throw v2
.end method

.method public blacklist semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13918
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13920
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13921
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13924
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13926
    nop

    .line 13927
    return-void

    .line 13924
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13926
    throw v2
.end method

.method public blacklist semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13886
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13888
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13889
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13892
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13894
    nop

    .line 13895
    return-void

    .line 13892
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13894
    throw v2
.end method

.method public blacklist semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13902
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13904
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13908
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13910
    nop

    .line 13911
    return-void

    .line 13908
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13910
    throw v2
.end method

.method public blacklist semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13838
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13840
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x189

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13841
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13844
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13846
    nop

    .line 13847
    return-void

    .line 13844
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13846
    throw v2
.end method

.method public blacklist semSetPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13806
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13808
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x187

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13814
    nop

    .line 13815
    return-void

    .line 13812
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13814
    throw v2
.end method

.method public blacklist semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "isParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14366
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14369
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14370
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 14373
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14375
    nop

    .line 14376
    return-void

    .line 14373
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14375
    throw v2
.end method

.method public blacklist semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13984
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13986
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x192

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13987
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13990
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13992
    nop

    .line 13993
    return-void

    .line 13990
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13992
    throw v2
.end method

.method public blacklist sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7649
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7653
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7654
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7655
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7658
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7660
    nop

    .line 7661
    return-void

    .line 7658
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7660
    throw v2
.end method

.method public blacklist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9832
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9834
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9835
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9836
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 9840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9842
    nop

    .line 9843
    return-void

    .line 9840
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9842
    throw v2
.end method

.method public greylist-max-o setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7974
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7976
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7977
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7981
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7983
    nop

    .line 7984
    return-void

    .line 7981
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7983
    throw v2
.end method

.method public greylist-max-o setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11346
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11350
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11352
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11353
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11356
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11358
    nop

    .line 11359
    return-void

    .line 11356
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11358
    throw v2
.end method

.method public blacklist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8923
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8928
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8930
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8931
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8932
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8933
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8934
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 8937
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8939
    nop

    .line 8940
    return v2

    .line 8937
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8939
    throw v2
.end method

.method public blacklist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p5, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9531
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9532
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9533
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9534
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9535
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9536
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9537
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9538
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_35

    move v2, v3

    .line 9541
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9543
    nop

    .line 9544
    return v2

    .line 9541
    .end local v2    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9543
    throw v2
.end method

.method public greylist-max-o setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9085
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9088
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9090
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9091
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9092
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9093
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 9096
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9098
    nop

    .line 9099
    return-void

    .line 9096
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9098
    throw v2
.end method

.method public blacklist setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12543
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12544
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12545
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12546
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12547
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12548
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 12551
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12553
    nop

    .line 12554
    return-void

    .line 12551
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12553
    throw v2
.end method

.method public greylist-max-o setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9127
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9129
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9130
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9131
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9134
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9136
    nop

    .line 9137
    return v2

    .line 9134
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9136
    throw v2
.end method

.method public blacklist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10568
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10570
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10574
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10576
    nop

    .line 10577
    return-void

    .line 10574
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10576
    throw v2
.end method

.method public greylist-max-o setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10535
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10537
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xce

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10538
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10541
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10543
    nop

    .line 10544
    return-void

    .line 10541
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10543
    throw v2
.end method

.method public blacklist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10602
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10604
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10605
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10608
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10610
    nop

    .line 10611
    return-void

    .line 10608
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10610
    throw v2
.end method

.method public greylist-max-o setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11623
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11625
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11626
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11629
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11631
    nop

    .line 11632
    return-void

    .line 11629
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11631
    throw v2
.end method

.method public greylist-max-o setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10388
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10389
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10390
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10394
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10396
    nop

    .line 10397
    return-void

    .line 10394
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10396
    throw v2
.end method

.method public blacklist setBluetoothContactSharingEnabledForKnox(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14423
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1ab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14427
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14429
    nop

    .line 14430
    return-void

    .line 14427
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14429
    throw v2
.end method

.method public blacklist setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7797
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7799
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7800
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7801
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7804
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7806
    nop

    .line 7807
    return-void

    .line 7804
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7806
    throw v2
.end method

.method public greylist-max-o setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8893
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8895
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8896
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8899
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8901
    nop

    .line 8902
    return-void

    .line 8899
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8901
    throw v2
.end method

.method public blacklist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13152
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13154
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x160

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13155
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13158
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13160
    nop

    .line 13161
    return-void

    .line 13158
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13160
    throw v2
.end method

.method public blacklist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10089
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10091
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10092
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10095
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10097
    nop

    .line 10098
    return-void

    .line 10095
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10097
    throw v2
.end method

.method public blacklist setCrossProfileAppToIgnored(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14497
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1af

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14498
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 14501
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14503
    nop

    .line 14504
    return-void

    .line 14501
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14503
    throw v2
.end method

.method public blacklist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12838
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12842
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12844
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12845
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 12848
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12850
    nop

    .line 12851
    return-void

    .line 12848
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12850
    throw v2
.end method

.method public greylist-max-o setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10265
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10267
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10268
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10271
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10273
    nop

    .line 10274
    return-void

    .line 10271
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10273
    throw v2
.end method

.method public greylist-max-o setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10317
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10319
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10320
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10323
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10325
    nop

    .line 10326
    return-void

    .line 10323
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10325
    throw v2
.end method

.method public blacklist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12909
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12913
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12915
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x153

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12916
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 12919
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12921
    nop

    .line 12922
    return-void

    .line 12919
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12921
    throw v2
.end method

.method public blacklist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9068
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9071
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9072
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9073
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9074
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9075
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 9078
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9080
    nop

    .line 9081
    return-void

    .line 9078
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9080
    throw v2
.end method

.method public greylist-max-o setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8834
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8838
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8840
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8841
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8842
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8845
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8847
    nop

    .line 8848
    return-void

    .line 8845
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8847
    throw v2
.end method

.method public blacklist setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "setProfileOwnerOnCurrentUserIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8223
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8226
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8227
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8228
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8229
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 8232
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8234
    nop

    .line 8235
    return v2

    .line 8232
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8234
    throw v2
.end method

.method public greylist-max-o setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerInfo"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8519
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8520
    if-eqz p2, :cond_1b

    .line 8521
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8522
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 8525
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8527
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8528
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 8531
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8533
    nop

    .line 8534
    return-void

    .line 8531
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8533
    throw v2
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13423
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13425
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x170

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13429
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13431
    nop

    .line 13432
    return-void

    .line 13429
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13431
    throw v2
.end method

.method public greylist-max-o setDeviceProvisioningConfigApplied()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11594
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11595
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 11598
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    nop

    .line 11601
    return-void

    .line 11598
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    throw v2
.end method

.method public blacklist setDpcDownloaded(Z)V
    .registers 7
    .param p1, "downloaded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13708
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x181

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13709
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13712
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13714
    nop

    .line 13715
    return-void

    .line 13712
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13714
    throw v2
.end method

.method public blacklist setDrawables(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13636
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 13641
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13645
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13647
    nop

    .line 13648
    return-void

    .line 13645
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13647
    throw v2
.end method

.method public greylist-max-o setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12061
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12062
    if-eqz p2, :cond_1b

    .line 12063
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12064
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 12067
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12069
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x124

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12070
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 12073
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12075
    nop

    .line 12076
    return-void

    .line 12073
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12075
    throw v2
.end method

.method public blacklist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7602
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7603
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7604
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7605
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7608
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7610
    nop

    .line 7611
    return-void

    .line 7608
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7610
    throw v2
.end method

.method public greylist-max-o setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "forceEpehemeralUsers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10636
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10638
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10639
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10642
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10644
    nop

    .line 10645
    return-void

    .line 10642
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10644
    throw v2
.end method

.method public blacklist setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "privateDnsHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12753
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12756
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12757
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 12761
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12763
    nop

    .line 12764
    return v2

    .line 12761
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12763
    throw v2
.end method

.method public greylist-max-o setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7669
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7671
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7672
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7673
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7674
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 7677
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7679
    nop

    .line 7680
    return-object v2

    .line 7677
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7679
    throw v2
.end method

.method public greylist-max-o setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10038
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10040
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10041
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10042
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10045
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10047
    nop

    .line 10048
    return-void

    .line 10045
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10047
    throw v2
.end method

.method public greylist-max-o setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10950
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10954
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10956
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10957
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10958
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10961
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10963
    nop

    .line 10964
    return-void

    .line 10961
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10963
    throw v2
.end method

.method public blacklist setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13039
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13041
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13042
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13043
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13044
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13045
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13046
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_35

    move v2, v3

    .line 13049
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13051
    nop

    .line 13052
    return v2

    .line 13049
    .end local v2    # "_result":Z
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13051
    throw v2
.end method

.method public blacklist setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13080
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13082
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13083
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 13088
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13090
    nop

    .line 13091
    return v2

    .line 13088
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13090
    throw v2
.end method

.method public greylist-max-o setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8798
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8799
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8800
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8801
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8802
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8803
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8804
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8805
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8806
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_38

    move v2, v3

    .line 8809
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8811
    nop

    .line 8812
    return v2

    .line 8809
    .end local v2    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8811
    throw v2
.end method

.method public greylist-max-o setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10753
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10755
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10756
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10757
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10760
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10762
    nop

    .line 10763
    return v2

    .line 10760
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10762
    throw v2
.end method

.method public greylist-max-o setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7934
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7937
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7938
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7939
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7940
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7941
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7944
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7946
    nop

    .line 7947
    return-void

    .line 7944
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7946
    throw v2
.end method

.method public blacklist setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12526
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12527
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12528
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12529
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12530
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12533
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12535
    nop

    .line 12536
    return-void

    .line 12533
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12535
    throw v2
.end method

.method public blacklist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10123
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10125
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10126
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10131
    nop

    .line 10132
    return-void

    .line 10129
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10131
    throw v2
.end method

.method public greylist-max-o setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10004
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10005
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10006
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10007
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10010
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10012
    nop

    .line 10013
    return-void

    .line 10010
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10012
    throw v2
.end method

.method public greylist-max-o setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9952
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9954
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xad

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9955
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 9958
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9960
    nop

    .line 9961
    return-void

    .line 9958
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9960
    throw v2
.end method

.method public greylist-max-o setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11952
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11954
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11955
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11958
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11960
    nop

    .line 11961
    return-void

    .line 11958
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11960
    throw v2
.end method

.method public greylist-max-o setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11081
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11082
    if-eqz p2, :cond_1b

    .line 11083
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11084
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 11087
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11089
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xed

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11090
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 11093
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11095
    nop

    .line 11096
    return-void

    .line 11093
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11095
    throw v2
.end method

.method public blacklist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13238
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13239
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 13240
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x165

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13244
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13246
    nop

    .line 13247
    return-void

    .line 13244
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13246
    throw v2
.end method

.method public greylist-max-o setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10177
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10179
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xba

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10180
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10183
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10185
    nop

    .line 10186
    return-void

    .line 10183
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10185
    throw v2
.end method

.method public greylist-max-o setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7439
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7441
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7442
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7446
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7448
    nop

    .line 7449
    return-void

    .line 7446
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7448
    throw v2
.end method

.method public blacklist setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12492
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12493
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12494
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12495
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12496
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12499
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12501
    nop

    .line 12502
    return-void

    .line 12499
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12501
    throw v2
.end method

.method public greylist-max-o setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7495
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7496
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7497
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7498
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7499
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7502
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7504
    nop

    .line 7505
    return-void

    .line 7502
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7504
    throw v2
.end method

.method public blacklist setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12509
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12510
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12511
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12512
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12513
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12516
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12518
    nop

    .line 12519
    return-void

    .line 12516
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12518
    throw v2
.end method

.method public greylist-max-o setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12115
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12116
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12119
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12120
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12122
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x127

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12124
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 12127
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12129
    nop

    .line 12130
    return-object v2

    .line 12127
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12129
    throw v2
.end method

.method public blacklist setMinimumRequiredWifiSecurityLevel(I)V
    .registers 7
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13560
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x178

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13561
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13564
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13566
    nop

    .line 13567
    return-void

    .line 13564
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13566
    throw v2
.end method

.method public blacklist setNearbyAppStreamingPolicy(I)V
    .registers 7
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7905
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7909
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7911
    nop

    .line 7912
    return-void

    .line 7909
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7911
    throw v2
.end method

.method public blacklist setNearbyNotificationStreamingPolicy(I)V
    .registers 7
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7872
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7876
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7878
    nop

    .line 7879
    return-void

    .line 7876
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7878
    throw v2
.end method

.method public blacklist setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11656
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11657
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11658
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11659
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11660
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11661
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 11664
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11666
    nop

    .line 11667
    return-void

    .line 11664
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11666
    throw v2
.end method

.method public blacklist setNextOperationSafety(II)V
    .registers 8
    .param p1, "operation"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13305
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x169

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13306
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13309
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13311
    nop

    .line 13312
    return-void

    .line 13309
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13311
    throw v2
.end method

.method public greylist-max-o setOrganizationColor(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11159
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11161
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11165
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11167
    nop

    .line 11168
    return-void

    .line 11165
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11167
    throw v2
.end method

.method public greylist-max-o setOrganizationColorForUser(II)V
    .registers 8
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11177
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11178
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11181
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11183
    nop

    .line 11184
    return-void

    .line 11181
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11183
    throw v2
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13357
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13358
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13359
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 13362
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13364
    nop

    .line 13365
    return-void

    .line 13362
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13364
    throw v2
.end method

.method public greylist-max-o setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11242
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11243
    if-eqz p2, :cond_1b

    .line 11244
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11245
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 11248
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11250
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 11254
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11256
    nop

    .line 11257
    return-void

    .line 11254
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11256
    throw v2
.end method

.method public greylist-max-o setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12232
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12234
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12235
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 12238
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12240
    nop

    .line 12241
    return-void

    .line 12238
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12240
    throw v2
.end method

.method public greylist-max-o setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8559
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8561
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 8562
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8563
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8564
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8565
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move-object v2, v3

    .line 8568
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8570
    nop

    .line 8571
    return-object v2

    .line 8568
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8570
    throw v2
.end method

.method public greylist-max-o setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7180
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7181
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7182
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7183
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7184
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7187
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7189
    nop

    .line 7190
    return-void

    .line 7187
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7189
    throw v2
.end method

.method public blacklist setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12475
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12476
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12477
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12478
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12479
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12482
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12484
    nop

    .line 12485
    return-void

    .line 12482
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12484
    throw v2
.end method

.method public greylist-max-o setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7143
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7145
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7146
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7147
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7150
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7152
    nop

    .line 7153
    return-void

    .line 7150
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7152
    throw v2
.end method

.method public blacklist setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12458
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12460
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12461
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12465
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12467
    nop

    .line 12468
    return-void

    .line 12465
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12467
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6865
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6866
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6867
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6868
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 6872
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6874
    nop

    .line 6875
    return-void

    .line 6872
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6874
    throw v2
.end method

.method public blacklist setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12341
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12342
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x133

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12343
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12346
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12348
    nop

    .line 12349
    return-void

    .line 12346
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12348
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6976
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6977
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6978
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6979
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6980
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6983
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6985
    nop

    .line 6986
    return-void

    .line 6983
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6985
    throw v2
.end method

.method public blacklist setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12390
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12391
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12392
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12393
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x136

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12394
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12397
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12399
    nop

    .line 12400
    return-void

    .line 12397
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12399
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6938
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6939
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6940
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6941
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6942
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6943
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 6946
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6948
    nop

    .line 6949
    return-void

    .line 6946
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6948
    throw v2
.end method

.method public blacklist setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12373
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12375
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12376
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x135

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12377
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12380
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12382
    nop

    .line 12383
    return-void

    .line 12380
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12382
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7087
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7090
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7091
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7094
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7096
    nop

    .line 7097
    return-void

    .line 7094
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7096
    throw v2
.end method

.method public blacklist setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12441
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12444
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x139

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12445
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12448
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12450
    nop

    .line 12451
    return-void

    .line 12448
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12450
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7013
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7014
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7015
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7016
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7017
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7020
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7022
    nop

    .line 7023
    return-void

    .line 7020
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7022
    throw v2
.end method

.method public blacklist setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12407
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12409
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12410
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x137

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12411
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12414
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12416
    nop

    .line 12417
    return-void

    .line 12414
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12416
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7049
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7050
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7051
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7052
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7053
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7057
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7059
    nop

    .line 7060
    return-void

    .line 7057
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7059
    throw v2
.end method

.method public blacklist setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12424
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12427
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x138

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12428
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12431
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12433
    nop

    .line 12434
    return-void

    .line 12431
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12433
    throw v2
.end method

.method public greylist-max-o setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6902
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6905
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 6909
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6911
    nop

    .line 6912
    return-void

    .line 6909
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6911
    throw v2
.end method

.method public blacklist setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12356
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12359
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x134

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12360
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12363
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12365
    nop

    .line 12366
    return-void

    .line 12363
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12365
    throw v2
.end method

.method public greylist-max-o setPasswordQuality(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6828
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6831
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6832
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 6835
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6837
    nop

    .line 6838
    return-void

    .line 6835
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6837
    throw v2
.end method

.method public blacklist setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12322
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12325
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x132

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12329
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12331
    nop

    .line 12332
    return-void

    .line 12329
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12331
    throw v2
.end method

.method public blacklist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "grantState"    # I
    .param p6, "resultReceiver"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10875
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10878
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10879
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10880
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10881
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10882
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 10885
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10887
    nop

    .line 10888
    return-void

    .line 10885
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10887
    throw v2
.end method

.method public greylist-max-o setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10840
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10843
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10844
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10847
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10849
    nop

    .line 10850
    return-void

    .line 10847
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10849
    throw v2
.end method

.method public greylist-max-o setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9280
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9285
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9287
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9288
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9289
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9292
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9294
    nop

    .line 9295
    return v2

    .line 9292
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9294
    throw v2
.end method

.method public greylist-max-o setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9433
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9438
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9440
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9441
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9442
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9445
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9447
    nop

    .line 9448
    return v2

    .line 9445
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9447
    throw v2
.end method

.method public blacklist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9355
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9360
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9362
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9363
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9364
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9365
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 9368
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9370
    nop

    .line 9371
    return v2

    .line 9368
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9370
    throw v2
.end method

.method public blacklist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13204
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13206
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x163

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13207
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13210
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13212
    nop

    .line 13213
    return-void

    .line 13210
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13212
    throw v2
.end method

.method public blacklist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9916
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 9921
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 9925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9927
    nop

    .line 9928
    return-void

    .line 9925
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9927
    throw v2
.end method

.method public greylist-max-o setProfileEnabled(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8419
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8420
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8426
    nop

    .line 8427
    return-void

    .line 8424
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8426
    throw v2
.end method

.method public greylist-max-o setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8434
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8436
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8437
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8440
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8442
    nop

    .line 8443
    return-void

    .line 8440
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8442
    throw v2
.end method

.method public greylist-max-o setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8328
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8330
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8331
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8332
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8333
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8336
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8338
    nop

    .line 8339
    return v2

    .line 8336
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8338
    throw v2
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "isProfileOwnerOnOrganizationOwnedDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12808
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12810
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12811
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12812
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12815
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12817
    nop

    .line 12818
    return-void

    .line 12815
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12817
    throw v2
.end method

.method public greylist-max-o setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7706
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7707
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7708
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7709
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7712
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7714
    nop

    .line 7715
    return-void

    .line 7712
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7714
    throw v2
.end method

.method public blacklist setRequiredPasswordComplexity(IZ)V
    .registers 8
    .param p1, "passwordComplexity"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7312
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7313
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7316
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7318
    nop

    .line 7319
    return-void

    .line 7316
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7318
    throw v2
.end method

.method public greylist-max-o setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7532
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7533
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7534
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7535
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7536
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7539
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7541
    nop

    .line 7542
    return-void

    .line 7539
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7541
    throw v2
.end method

.method public greylist-max-o setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11825
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11827
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x117

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11828
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11829
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 11832
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11834
    nop

    .line 11835
    return v2

    .line 11832
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11834
    throw v2
.end method

.method public blacklist setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12676
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 12678
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12679
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x146

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12680
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12681
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 12684
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12686
    nop

    .line 12687
    return v2

    .line 12684
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12686
    throw v2
.end method

.method public greylist-max-o setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9181
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9182
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9183
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9184
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 9187
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9189
    nop

    .line 9190
    return-void

    .line 9187
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9189
    throw v2
.end method

.method public blacklist setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7834
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7835
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7836
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7837
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7838
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7841
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7843
    nop

    .line 7844
    return-void

    .line 7841
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7843
    throw v2
.end method

.method public blacklist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9886
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9888
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9889
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 9892
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9894
    nop

    .line 9895
    return-void

    .line 9892
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9894
    throw v2
.end method

.method public greylist-max-o setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10072
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10074
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10075
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10076
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10079
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10081
    nop

    .line 10082
    return-void

    .line 10079
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10081
    throw v2
.end method

.method public blacklist setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11419
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11421
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11422
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x100

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11423
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 11426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11428
    nop

    .line 11429
    return-void

    .line 11426
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11428
    throw v2
.end method

.method public greylist-max-o setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11038
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11041
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11042
    if-eqz p2, :cond_1b

    .line 11043
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11044
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 11047
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11049
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xeb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11050
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 11053
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11055
    nop

    .line 11056
    return-void

    .line 11053
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11055
    throw v2
.end method

.method public greylist-max-o setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12039
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12040
    if-eqz p2, :cond_1b

    .line 12041
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12042
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 12045
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12047
    :goto_1e
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x123

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12048
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 12051
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12053
    nop

    .line 12054
    return-void

    .line 12051
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12053
    throw v2
.end method

.method public greylist-max-o setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10772
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10774
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10776
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10779
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10781
    nop

    .line 10782
    return v2

    .line 10779
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10781
    throw v2
.end method

.method public greylist-max-o setStorageEncryption(Landroid/content/ComponentName;Z)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7723
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7725
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7726
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7727
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7730
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7732
    nop

    .line 7733
    return v2

    .line 7730
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7732
    throw v2
.end method

.method public blacklist setStrings(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13718
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 13723
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x182

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13724
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13727
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13729
    nop

    .line 13730
    return-void

    .line 13727
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13729
    throw v2
.end method

.method public greylist-max-o setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10055
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10058
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10059
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 10062
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10064
    nop

    .line 10065
    return-void

    .line 10062
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10064
    throw v2
.end method

.method public greylist-max-o setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10705
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10706
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10707
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10711
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10713
    nop

    .line 10714
    return-void

    .line 10711
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10713
    throw v2
.end method

.method public greylist-max-o setTime(Landroid/content/ComponentName;J)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10140
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10141
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10142
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10143
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10144
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10147
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10149
    nop

    .line 10150
    return v2

    .line 10147
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10149
    throw v2
.end method

.method public greylist-max-o setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10159
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10161
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10163
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 10166
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10168
    nop

    .line 10169
    return v2

    .line 10166
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10168
    throw v2
.end method

.method public greylist-max-o setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10440
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10441
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10442
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10443
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10444
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10445
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 10448
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10450
    nop

    .line 10451
    return-void

    .line 10448
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10450
    throw v2
.end method

.method public blacklist setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "agent"    # Landroid/content/ComponentName;
    .param p4, "args"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12696
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12697
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12698
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12699
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x147

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12700
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 12703
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12705
    nop

    .line 12706
    return-void

    .line 12703
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12705
    throw v2
.end method

.method public greylist-max-o setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10228
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10231
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10232
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10233
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 10236
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10238
    nop

    .line 10239
    return-void

    .line 10236
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10238
    throw v2
.end method

.method public blacklist setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13492
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x174

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13496
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13498
    nop

    .line 13499
    return-void

    .line 13496
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13498
    throw v2
.end method

.method public blacklist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13114
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13118
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13120
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13121
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 13124
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13126
    nop

    .line 13127
    return-void

    .line 13124
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13126
    throw v2
.end method

.method public greylist-max-o setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10689
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10690
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10691
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10692
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 10695
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10697
    nop

    .line 10698
    return-void

    .line 10695
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10697
    throw v2
.end method

.method public greylist-max-o setUserProvisioningState(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11336
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11337
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 11340
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11342
    nop

    .line 11343
    return-void

    .line 11340
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11342
    throw v2
.end method

.method public blacklist setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9215
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9218
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9219
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9220
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 9223
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9225
    nop

    .line 9226
    return-void

    .line 9223
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9225
    throw v2
.end method

.method public blacklist setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14455
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14456
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14457
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14458
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 14459
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1ad

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14460
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 14463
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14465
    nop

    .line 14466
    return-void

    .line 14463
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14465
    throw v2
.end method

.method public blacklist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .registers 7
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13591
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13592
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13593
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 13596
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13598
    nop

    .line 13599
    return-void

    .line 13596
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13598
    throw v2
.end method

.method public blacklist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13771
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x185

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13772
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13773
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 13776
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13778
    nop

    .line 13779
    return v2

    .line 13776
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13778
    throw v2
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .registers 13
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "contactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10370
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10371
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10372
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 10373
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10374
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10375
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 10378
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10380
    nop

    .line 10381
    return-void

    .line 10378
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10380
    throw v2
.end method

.method public greylist-max-o startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9634
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9635
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9636
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9637
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9641
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9643
    nop

    .line 9644
    return v2

    .line 9641
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9643
    throw v2
.end method

.method public blacklist startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "allDay"    # Z
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13012
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13017
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 13018
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 13019
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 13020
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13021
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 13022
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x159

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13023
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13024
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_38

    move v2, v3

    .line 13027
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13029
    nop

    .line 13030
    return v2

    .line 13027
    .end local v2    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13029
    throw v2
.end method

.method public greylist-max-o stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9653
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9654
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9655
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9656
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9660
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9662
    nop

    .line 9663
    return v2

    .line 9660
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9662
    throw v2
.end method

.method public greylist-max-o switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9615
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9616
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9617
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9618
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9619
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9622
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9624
    nop

    .line 9625
    return v2

    .line 9622
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9624
    throw v2
.end method

.method public greylist-max-o transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12005
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12006
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12007
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12008
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x121

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12009
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 12012
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12014
    nop

    .line 12015
    return-void

    .line 12012
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12014
    throw v2
.end method

.method public greylist-max-o uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8636
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8638
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 8639
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8640
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8643
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8645
    nop

    .line 8646
    return-void

    .line 8643
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8645
    throw v2
.end method

.method public greylist-max-o uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11546
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x107

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11547
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 11550
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11552
    nop

    .line 11553
    return-void

    .line 11550
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11552
    throw v2
.end method

.method public greylist-max-o updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12176
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12178
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12179
    iget-object v3, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12180
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12181
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 12184
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12186
    nop

    .line 12187
    return v2

    .line 12184
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12186
    throw v2
.end method

.method public blacklist wipeDataWithReason(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7587
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7588
    iget-object v2, p0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7592
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7594
    nop

    .line 7595
    return-void

    .line 7592
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7594
    throw v2
.end method
