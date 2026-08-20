.class Landroid/content/pm/IPackageManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 4971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4972
    iput-object p1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 4973
    return-void
.end method

.method static synthetic blacklist lambda$notifyDexLoad$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "_data"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 7009
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7010
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7011
    return-void
.end method


# virtual methods
.method public greylist-max-o activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5199
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5200
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5202
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5203
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5204
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 5207
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5209
    nop

    .line 5210
    return v2

    .line 5207
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5209
    throw v2
.end method

.method public greylist-max-o addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .registers 11
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6189
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6191
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6192
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6193
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6194
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6195
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 6198
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6200
    nop

    .line 6201
    return-void

    .line 6198
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6200
    throw v2
.end method

.method public greylist-max-o addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8724
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8725
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8726
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8727
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8730
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8732
    nop

    .line 8733
    return v2

    .line 8730
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8732
    throw v2
.end method

.method public greylist-max-o addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8742
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8743
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8745
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8748
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8750
    nop

    .line 8751
    return v2

    .line 8748
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8750
    throw v2
.end method

.method public greylist-max-o addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6156
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6157
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6158
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6159
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6160
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6163
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6165
    nop

    .line 6166
    return-void

    .line 6163
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6165
    throw v2
.end method

.method public blacklist addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    .registers 12
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "removeExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6079
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6082
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6084
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6085
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6086
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6087
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6088
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6089
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 6092
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    nop

    .line 6095
    return-void

    .line 6092
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    throw v2
.end method

.method public blacklist applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 8
    .param p1, "permState"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9308
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9309
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9310
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9313
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9315
    nop

    .line 9316
    return v2

    .line 9313
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9315
    throw v2
.end method

.method public blacklist applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9280
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9287
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9288
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9289
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9291
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 9294
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9296
    nop

    .line 9297
    return v2

    .line 9294
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9296
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 4976
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5518
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5520
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5521
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5522
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5523
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5524
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 5527
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5529
    nop

    .line 5530
    return v2

    .line 5527
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5529
    throw v2
.end method

.method public blacklist canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9046
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9047
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9048
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9049
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9050
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 9053
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9055
    nop

    .line 9056
    return v2

    .line 9053
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9055
    throw v2
.end method

.method public greylist-max-o canRequestPackageInstalls(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8092
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8093
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8094
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8095
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8098
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8100
    nop

    .line 8101
    return v2

    .line 8098
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8100
    throw v2
.end method

.method public blacklist cancelEMPHandlerSendPendingBroadcast()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8569
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8572
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8573
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 8576
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8578
    nop

    .line 8579
    return-void

    .line 8576
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8578
    throw v2
.end method

.method public greylist-max-o canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5123
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5124
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5125
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 5128
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5130
    nop

    .line 5131
    return-object v2

    .line 5128
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5130
    throw v2
.end method

.method public blacklist changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9505
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9506
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 9509
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9511
    nop

    .line 9512
    return-void

    .line 9509
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9511
    throw v2
.end method

.method public blacklist checkASKSTarget(I)[Ljava/lang/String;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9214
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9215
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9216
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9219
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9221
    nop

    .line 9222
    return-object v2

    .line 9219
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9221
    throw v2
.end method

.method public blacklist checkDeletableListForASKS()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9167
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9168
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 9171
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9173
    nop

    .line 9174
    return-void

    .line 9171
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9173
    throw v2
.end method

.method public greylist-max-o checkPackageStartable(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4990
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 4994
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    nop

    .line 4997
    return-void

    .line 4994
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    throw v2
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8777
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8778
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8783
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8785
    nop

    .line 8786
    return v2

    .line 8783
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8785
    throw v2
.end method

.method public greylist-max-o checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5299
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5300
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 5304
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5306
    nop

    .line 5307
    return v2

    .line 5304
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5306
    throw v2
.end method

.method public greylist checkUidPermission(Ljava/lang/String;I)I
    .registers 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8818
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8819
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8820
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8824
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8826
    nop

    .line 8827
    return v2

    .line 8824
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8826
    throw v2
.end method

.method public greylist-max-o checkUidSignatures(II)I
    .registers 8
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5318
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5319
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 5323
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5325
    nop

    .line 5326
    return v2

    .line 5323
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5325
    throw v2
.end method

.method public greylist-max-o clearApplicationProfileData(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6826
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6830
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6831
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 6834
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6836
    nop

    .line 6837
    return-void

    .line 6834
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6836
    throw v2
.end method

.method public greylist-max-o clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6808
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6809
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6810
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6814
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6816
    nop

    .line 6817
    return-void

    .line 6814
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6816
    throw v2
.end method

.method public greylist-max-o clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .registers 8
    .param p1, "sourceUserId"    # I
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6210
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6211
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6214
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6216
    nop

    .line 6217
    return-void

    .line 6214
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6216
    throw v2
.end method

.method public greylist-max-o clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6175
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6176
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6179
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6181
    nop

    .line 6182
    return-void

    .line 6179
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6181
    throw v2
.end method

.method public greylist-max-o clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6122
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 6126
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6128
    nop

    .line 6129
    return-void

    .line 6126
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6128
    throw v2
.end method

.method public blacklist clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9269
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9270
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9271
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

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
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9276
    throw v2
.end method

.method public blacklist createEncAppData(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9388
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9389
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9390
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9393
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9395
    nop

    .line 9396
    return v2

    .line 9393
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9395
    throw v2
.end method

.method public greylist-max-o currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5105
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5107
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move-object v2, v3

    .line 5110
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5112
    nop

    .line 5113
    return-object v2

    .line 5110
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5112
    throw v2
.end method

.method public greylist-max-o deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6763
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6764
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6767
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6769
    nop

    .line 6770
    return-void

    .line 6767
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6769
    throw v2
.end method

.method public greylist-max-o deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6786
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6787
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6788
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6791
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6793
    nop

    .line 6794
    return-void

    .line 6791
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6793
    throw v2
.end method

.method public blacklist deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 9
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5974
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5976
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5977
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 5981
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    nop

    .line 5984
    return-void

    .line 5981
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    throw v2
.end method

.method public greylist-max-o deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5923
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5924
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5925
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5926
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5927
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5928
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 5931
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5933
    nop

    .line 5934
    return-void

    .line 5931
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5933
    throw v2
.end method

.method public greylist-max-o deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 10
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5946
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5949
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5951
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5952
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5953
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5954
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 5957
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5959
    nop

    .line 5960
    return-void

    .line 5957
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5959
    throw v2
.end method

.method public greylist-max-o deletePreloadsFileCache()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8109
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 8113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8115
    nop

    .line 8116
    return-void

    .line 8113
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8115
    throw v2
.end method

.method public blacklist dumpProfiles(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dumpClassesAndMethods"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7158
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7159
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7162
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7164
    nop

    .line 7165
    return-void

    .line 7162
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7164
    throw v2
.end method

.method public greylist-max-o enterSafeMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6930
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6931
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 6934
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6936
    nop

    .line 6937
    return-void

    .line 6934
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6936
    throw v2
.end method

.method public greylist-max-o extendVerificationTimeout(IIJ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7389
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7390
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7394
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7396
    nop

    .line 7397
    return-void

    .line 7394
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7396
    throw v2
.end method

.method public greylist-max-o findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5499
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5501
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5502
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5503
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 5506
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5508
    nop

    .line 5509
    return-object v2

    .line 5506
    .end local v2    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5508
    throw v2
.end method

.method public greylist-max-o finishPackageInstall(IZ)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5874
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 5878
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5880
    nop

    .line 5881
    return-void

    .line 5878
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5880
    throw v2
.end method

.method public greylist-max-o flushPackageRestrictionsAsUser(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6643
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6644
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 6647
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6649
    nop

    .line 6650
    return-void

    .line 6647
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6649
    throw v2
.end method

.method public greylist-max-o forceDexOpt(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7173
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7174
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7177
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7179
    nop

    .line 7180
    return-void

    .line 7177
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7179
    throw v2
.end method

.method public greylist-max-o freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "storageFlags"    # I
    .param p5, "pi"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6738
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6739
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6740
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6741
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 6745
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6747
    nop

    .line 6748
    return-void

    .line 6745
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6747
    throw v2
.end method

.method public greylist-max-o freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "storageFlags"    # I
    .param p5, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6699
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6700
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6701
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6702
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6703
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 6706
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6708
    nop

    .line 6709
    return-void

    .line 6706
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6708
    throw v2
.end method

.method public blacklist getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5179
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5180
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5181
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5182
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5183
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5184
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5187
    .local v2, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5189
    nop

    .line 5190
    return-object v2

    .line 5187
    .end local v2    # "_result":Landroid/content/pm/ActivityInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5189
    throw v2
.end method

.method public greylist-max-o getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7484
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7485
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7486
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7489
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7491
    nop

    .line 7492
    return-object v2

    .line 7489
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7491
    throw v2
.end method

.method public greylist-max-o getAllPackages()Ljava/util/List;
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

    .line 5330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5335
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 5340
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5342
    nop

    .line 5343
    return-object v2

    .line 5340
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5342
    throw v2
.end method

.method public greylist getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8688
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8689
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8690
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 8693
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8695
    nop

    .line 8696
    return-object v2

    .line 8693
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8695
    throw v2
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8378
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8380
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8383
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    nop

    .line 8386
    return-object v2

    .line 8383
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    throw v2
.end method

.method public greylist-max-o getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6604
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6605
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6606
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 6609
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6611
    nop

    .line 6612
    return v2

    .line 6609
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6611
    throw v2
.end method

.method public greylist-max-o getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7609
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7610
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7611
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7614
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7616
    nop

    .line 7617
    return v2

    .line 7614
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7616
    throw v2
.end method

.method public blacklist getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5141
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5142
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5145
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5148
    .local v2, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5150
    nop

    .line 5151
    return-object v2

    .line 5148
    .end local v2    # "_result":Landroid/content/pm/ApplicationInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5150
    throw v2
.end method

.method public greylist-max-o getArtManager()Landroid/content/pm/dex/IArtManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8194
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8195
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8196
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/dex/IArtManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/IArtManager;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 8199
    .local v2, "_result":Landroid/content/pm/dex/IArtManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8201
    nop

    .line 8202
    return-object v2

    .line 8199
    .end local v2    # "_result":Landroid/content/pm/dex/IArtManager;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8201
    throw v2
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8327
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8328
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8329
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8332
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8334
    nop

    .line 8335
    return-object v2

    .line 8332
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8334
    throw v2
.end method

.method public greylist-max-o getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7701
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7702
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7703
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7706
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7708
    nop

    .line 7709
    return v2

    .line 7706
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7708
    throw v2
.end method

.method public greylist-max-o getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .registers 8
    .param p1, "sequenceNumber"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7996
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7997
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7998
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7999
    sget-object v3, Landroid/content/pm/ChangedPackages;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ChangedPackages;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 8002
    .local v2, "_result":Landroid/content/pm/ChangedPackages;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8004
    nop

    .line 8005
    return-object v2

    .line 8002
    .end local v2    # "_result":Landroid/content/pm/ChangedPackages;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8004
    throw v2
.end method

.method public greylist-max-o getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6562
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6564
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6565
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 6569
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6571
    nop

    .line 6572
    return v2

    .line 6569
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6571
    throw v2
.end method

.method public blacklist getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "metadata"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9109
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9111
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 9114
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9116
    nop

    .line 9117
    return v2

    .line 9114
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9116
    throw v2
.end method

.method public blacklist getContentCaptureServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8446
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8448
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8451
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8453
    nop

    .line 8454
    return-object v2

    .line 8451
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8453
    throw v2
.end method

.method public blacklist getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8072
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 8073
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8074
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8075
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8076
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 8079
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8081
    nop

    .line 8082
    return-object v2

    .line 8079
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8081
    throw v2
.end method

.method public greylist-max-o getDefaultAppsBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6362
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6363
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6364
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 6367
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6369
    nop

    .line 6370
    return-object v2

    .line 6367
    .end local v2    # "_result":[B
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6369
    throw v2
.end method

.method public blacklist getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8293
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8294
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8295
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8298
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8300
    nop

    .line 8301
    return-object v2

    .line 8298
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8300
    throw v2
.end method

.method public blacklist getDomainVerificationBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6396
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6398
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 6401
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6403
    nop

    .line 6404
    return-object v2

    .line 6401
    .end local v2    # "_result":[B
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6403
    throw v2
.end method

.method public greylist-max-o getFlagsForUid(I)I
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5425
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5430
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5432
    nop

    .line 5433
    return v2

    .line 5430
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5432
    throw v2
.end method

.method public blacklist getGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 9246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9252
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9253
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9254
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9257
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9259
    nop

    .line 9260
    return-object v2

    .line 9257
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9259
    throw v2
.end method

.method public greylist-max-o getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8236
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8237
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8238
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 8241
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8243
    nop

    .line 8244
    return-object v2

    .line 8241
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8243
    throw v2
.end method

.method public blacklist getHoldLockToken()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8958
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8959
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8960
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8963
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    nop

    .line 8966
    return-object v2

    .line 8963
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8965
    throw v2
.end method

.method public greylist-max-o getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6428
    .local p1, "outHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6433
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6435
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 6436
    .local v3, "_result":Landroid/content/ComponentName;
    sget-object v4, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2e

    .line 6439
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    nop

    .line 6442
    return-object v3

    .line 6439
    .end local v3    # "_result":Landroid/content/ComponentName;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    throw v2
.end method

.method public blacklist getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8429
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8430
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8431
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8434
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8436
    nop

    .line 8437
    return-object v2

    .line 8434
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8436
    throw v2
.end method

.method public greylist getInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7333
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7334
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7338
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7340
    nop

    .line 7341
    return v2

    .line 7338
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7340
    throw v2
.end method

.method public greylist-max-o getInstallReason(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8034
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8035
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8039
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8041
    nop

    .line 8042
    return v2

    .line 8039
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8041
    throw v2
.end method

.method public blacklist getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6006
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6009
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6010
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6011
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6012
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6013
    sget-object v3, Landroid/content/pm/InstallSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/InstallSourceInfo;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 6016
    .local v2, "_result":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6018
    nop

    .line 6019
    return-object v2

    .line 6016
    .end local v2    # "_result":Landroid/content/pm/InstallSourceInfo;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6018
    throw v2
.end method

.method public blacklist getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5725
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5726
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5727
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5728
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5729
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 5732
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5734
    nop

    .line 5735
    return-object v2

    .line 5732
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5734
    throw v2
.end method

.method public blacklist getInstalledModules(I)Ljava/util/List;
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8495
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8497
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8498
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8499
    sget-object v3, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 8502
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8504
    nop

    .line 8505
    return-object v2

    .line 8502
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8504
    throw v2
.end method

.method public blacklist getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5674
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5675
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5676
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5678
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 5681
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5683
    nop

    .line 5684
    return-object v2

    .line 5681
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5683
    throw v2
.end method

.method public greylist-max-o getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5993
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5994
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5995
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 5998
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6000
    nop

    .line 6001
    return-object v2

    .line 5998
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6000
    throw v2
.end method

.method public greylist-max-o getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8177
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8178
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8179
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 8182
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8184
    nop

    .line 8185
    return-object v2

    .line 8182
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8184
    throw v2
.end method

.method public greylist-max-o getInstantAppCookie(Ljava/lang/String;I)[B
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7847
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7848
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7849
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 7852
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7854
    nop

    .line 7855
    return-object v2

    .line 7852
    .end local v2    # "_result":[B
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7854
    throw v2
.end method

.method public greylist-max-o getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7886
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7888
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 7891
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7893
    nop

    .line 7894
    return-object v2

    .line 7891
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7893
    throw v2
.end method

.method public greylist-max-o getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8158
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8159
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8160
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 8163
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8165
    nop

    .line 8166
    return-object v2

    .line 8163
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8165
    throw v2
.end method

.method public greylist-max-o getInstantAppResolverComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8124
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8126
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 8129
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8131
    nop

    .line 8132
    return-object v2

    .line 8129
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8131
    throw v2
.end method

.method public greylist-max-o getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8141
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8142
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8143
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 8146
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8148
    nop

    .line 8149
    return-object v2

    .line 8146
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8148
    throw v2
.end method

.method public greylist-max-o getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7828
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7829
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7830
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7833
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    nop

    .line 7836
    return-object v2

    .line 7833
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    throw v2
.end method

.method public greylist-max-o getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5835
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5836
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5837
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5838
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5839
    sget-object v3, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/InstrumentationInfo;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 5842
    .local v2, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5844
    nop

    .line 5845
    return-object v2

    .line 5842
    .end local v2    # "_result":Landroid/content/pm/InstrumentationInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5844
    throw v2
.end method

.method public greylist-max-o getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7466
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7468
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7471
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7473
    nop

    .line 7474
    return-object v2

    .line 7471
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7473
    throw v2
.end method

.method public greylist-max-o getIntentVerificationStatus(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7426
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7427
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7431
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7433
    nop

    .line 7434
    return v2

    .line 7431
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7433
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4980
    const-string v0, "android.content.pm.IPackageManager"

    return-object v0
.end method

.method public greylist-max-o getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7720
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7721
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7722
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 7725
    .local v2, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7727
    nop

    .line 7728
    return-object v2

    .line 7725
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7727
    throw v2
.end method

.method public greylist getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6042
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6043
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6045
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6046
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6047
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6048
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 6051
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6053
    nop

    .line 6054
    return-object v2

    .line 6051
    .end local v2    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6053
    throw v2
.end method

.method public blacklist getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8660
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8661
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8662
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8663
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8664
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 8667
    .local v2, "_result":Landroid/content/IntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8669
    nop

    .line 8670
    return-object v2

    .line 8667
    .end local v2    # "_result":Landroid/content/IntentSender;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8669
    throw v2
.end method

.method public blacklist getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metadata"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
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

    .line 9079
    .local p4, "feature":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9085
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9086
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9087
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 9090
    .local v3, "_result":Z
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_31

    .line 9093
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9095
    nop

    .line 9096
    return v3

    .line 9093
    .end local v3    # "_result":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9095
    throw v2
.end method

.method public blacklist getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 8884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8891
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8892
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8893
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 8896
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8898
    nop

    .line 8899
    return-object v2

    .line 8896
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8898
    throw v2
.end method

.method public blacklist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8515
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8516
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8517
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8518
    sget-object v3, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ModuleInfo;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 8521
    .local v2, "_result":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8523
    nop

    .line 8524
    return-object v2

    .line 8521
    .end local v2    # "_result":Landroid/content/pm/ModuleInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8523
    throw v2
.end method

.method public greylist-max-o getMoveStatus(I)I
    .registers 7
    .param p1, "moveId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7209
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7210
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7214
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7216
    nop

    .line 7217
    return v2

    .line 7214
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7216
    throw v2
.end method

.method public greylist-max-o getNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5371
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5372
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5373
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 5376
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5378
    nop

    .line 5379
    return-object v2

    .line 5376
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5378
    throw v2
.end method

.method public greylist-max-o getNamesForUids([I)[Ljava/lang/String;
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5389
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5390
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5391
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 5394
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5396
    nop

    .line 5397
    return-object v2

    .line 5394
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5396
    throw v2
.end method

.method public blacklist getPackageGids(Ljava/lang/String;JI)[I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5086
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5087
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5088
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5089
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move-object v2, v3

    .line 5092
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    nop

    .line 5095
    return-object v2

    .line 5092
    .end local v2    # "_result":[I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5094
    throw v2
.end method

.method public blacklist getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 9227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9233
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9234
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9235
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9238
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9240
    nop

    .line 9241
    return-object v2

    .line 9238
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9240
    throw v2
.end method

.method public blacklist getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5025
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5026
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5027
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5028
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5029
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move-object v2, v3

    .line 5032
    .local v2, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5034
    nop

    .line 5035
    return-object v2

    .line 5032
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5034
    throw v2
.end method

.method public blacklist getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;
    .registers 10
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5040
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5044
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5045
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5046
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5047
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5048
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5049
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move-object v2, v3

    .line 5052
    .local v2, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5054
    nop

    .line 5055
    return-object v2

    .line 5052
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5054
    throw v2
.end method

.method public greylist-max-o getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7662
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7663
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7664
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 7667
    .local v2, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7669
    nop

    .line 7670
    return-object v2

    .line 7667
    .end local v2    # "_result":Landroid/content/pm/IPackageInstaller;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7669
    throw v2
.end method

.method public blacklist getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 9361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9367
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9368
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9369
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9372
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9374
    nop

    .line 9375
    return-object v2

    .line 9372
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9374
    throw v2
.end method

.method public greylist-max-o getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6854
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6855
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6856
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6859
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6861
    nop

    .line 6862
    return-void

    .line 6859
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6861
    throw v2
.end method

.method public blacklist getPackageUid(Ljava/lang/String;JI)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5066
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5067
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 5072
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5074
    nop

    .line 5075
    return v2

    .line 5072
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5074
    throw v2
.end method

.method public greylist getPackagesForUid(I)[Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5353
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5354
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5355
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 5358
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5360
    nop

    .line 5361
    return-object v2

    .line 5358
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5360
    throw v2
.end method

.method public blacklist getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5700
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5701
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5702
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5703
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5704
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5707
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5709
    nop

    .line 5710
    return-object v2

    .line 5707
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5709
    throw v2
.end method

.method public greylist-max-o getPermissionControllerPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7793
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7795
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 7798
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7800
    nop

    .line 7801
    return-object v2

    .line 7798
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7800
    throw v2
.end method

.method public greylist-max-o getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8706
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8707
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8709
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 8712
    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8714
    nop

    .line 8715
    return-object v2

    .line 8712
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8714
    throw v2
.end method

.method public greylist-max-o getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5751
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5752
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5753
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 5756
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5758
    nop

    .line 5759
    return-object v2

    .line 5756
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5758
    throw v2
.end method

.method public greylist-max-o getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6132
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6137
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6138
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6139
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6141
    .local v3, "_result":I
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 6142
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_32

    .line 6145
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6147
    nop

    .line 6148
    return v3

    .line 6145
    .end local v3    # "_result":I
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6147
    throw v2
.end method

.method public greylist-max-o getPreferredActivityBackup(I)[B
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6328
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6329
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6330
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 6333
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6335
    nop

    .line 6336
    return-object v2

    .line 6333
    .end local v2    # "_result":[B
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6335
    throw v2
.end method

.method public greylist-max-o getPrivateFlagsForUid(I)I
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5443
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5444
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5448
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5450
    nop

    .line 5451
    return v2

    .line 5448
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5450
    throw v2
.end method

.method public blacklist getProgressionOfPackageChanged()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8556
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8557
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8558
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 8561
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8563
    nop

    .line 8564
    return v2

    .line 8561
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8563
    throw v2
.end method

.method public blacklist getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 9
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8993
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8994
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8995
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8996
    sget-object v3, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$Property;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 8999
    .local v2, "_result":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9001
    nop

    .line 9002
    return-object v2

    .line 8999
    .end local v2    # "_result":Landroid/content/pm/PackageManager$Property;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9001
    throw v2
.end method

.method public blacklist getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5259
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5260
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5261
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5262
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5263
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5264
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5267
    .local v2, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5269
    nop

    .line 5270
    return-object v2

    .line 5267
    .end local v2    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5269
    throw v2
.end method

.method public blacklist getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5219
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5220
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5221
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5222
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5223
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5224
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5227
    .local v2, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5229
    nop

    .line 5230
    return-object v2

    .line 5227
    .end local v2    # "_result":Landroid/content/pm/ActivityInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5229
    throw v2
.end method

.method public blacklist getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 9320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9326
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9327
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9328
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 9331
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9333
    nop

    .line 9334
    return-object v2

    .line 9331
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9333
    throw v2
.end method

.method public blacklist getRotationResolverPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8344
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8345
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8346
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8349
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8351
    nop

    .line 8352
    return-object v2

    .line 8349
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8351
    throw v2
.end method

.method public blacklist getRuntimePermissionsVersion(I)I
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8589
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8590
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8594
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8596
    nop

    .line 8597
    return v2

    .line 8594
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8596
    throw v2
.end method

.method public blacklist getSdkSandboxPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7810
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7812
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 7815
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7817
    nop

    .line 7818
    return-object v2

    .line 7815
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7817
    throw v2
.end method

.method public blacklist getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5239
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5240
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5241
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5242
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5243
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5244
    sget-object v3, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5247
    .local v2, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5249
    nop

    .line 5250
    return-object v2

    .line 5247
    .end local v2    # "_result":Landroid/content/pm/ServiceInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5249
    throw v2
.end method

.method public greylist-max-o getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7961
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7962
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7963
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 7966
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7968
    nop

    .line 7969
    return-object v2

    .line 7966
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7968
    throw v2
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8412
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8414
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8417
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8419
    nop

    .line 8420
    return-object v2

    .line 8417
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8419
    throw v2
.end method

.method public blacklist getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8052
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 8053
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8054
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8055
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8056
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 8059
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8061
    nop

    .line 8062
    return-object v2

    .line 8059
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8061
    throw v2
.end method

.method public greylist-max-o getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7977
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7978
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7979
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7980
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 7983
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7985
    nop

    .line 7986
    return-object v2

    .line 7983
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7985
    throw v2
.end method

.method public greylist-max-o getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7738
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7739
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7740
    sget-object v3, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 7743
    .local v2, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7745
    nop

    .line 7746
    return-object v2

    .line 7743
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7745
    throw v2
.end method

.method public blacklist getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8855
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8856
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8857
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 8860
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8862
    nop

    .line 8863
    return-object v2

    .line 8860
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8862
    throw v2
.end method

.method public blacklist getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6309
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6310
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6311
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 6314
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6316
    nop

    .line 6317
    return-object v2

    .line 6314
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6316
    throw v2
.end method

.method public greylist-max-o getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6895
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6896
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6897
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 6900
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6902
    nop

    .line 6903
    return-object v2

    .line 6900
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6902
    throw v2
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8395
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8396
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8397
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8400
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8402
    nop

    .line 8403
    return-object v2

    .line 8400
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8402
    throw v2
.end method

.method public greylist getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6874
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6876
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 6879
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6881
    nop

    .line 6882
    return-object v2

    .line 6879
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6881
    throw v2
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8310
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8311
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8312
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8315
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8317
    nop

    .line 8318
    return-object v2

    .line 8315
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8317
    throw v2
.end method

.method public blacklist getTargetSdkVersion(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5157
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5162
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5163
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5167
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5169
    nop

    .line 5170
    return v2

    .line 5167
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5169
    throw v2
.end method

.method public blacklist getUNvalueForASKS()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9196
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9197
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9198
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 9201
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9203
    nop

    .line 9204
    return-object v2

    .line 9201
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9203
    throw v2
.end method

.method public greylist-max-o getUidForSharedUser(Ljava/lang/String;)I
    .registers 7
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5407
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5408
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5412
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5414
    nop

    .line 5415
    return v2

    .line 5412
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5414
    throw v2
.end method

.method public blacklist getUnknownSourcePackagesAsUser(JI)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9483
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9484
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9485
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9486
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9487
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 9490
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9492
    nop

    .line 9493
    return-object v2

    .line 9490
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9492
    throw v2
.end method

.method public blacklist getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6271
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6272
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6273
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 6276
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6278
    nop

    .line 6279
    return-object v2

    .line 6276
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6278
    throw v2
.end method

.method public greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7501
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7502
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7503
    sget-object v3, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    move-object v2, v3

    .line 7506
    .local v2, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7508
    nop

    .line 7509
    return-object v2

    .line 7506
    .end local v2    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7508
    throw v2
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8357
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8361
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8363
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 8366
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8368
    nop

    .line 8369
    return-object v2

    .line 8366
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8368
    throw v2
.end method

.method public greylist-max-o grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8796
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8797
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8798
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8801
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8803
    nop

    .line 8804
    return-void

    .line 8801
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8803
    throw v2
.end method

.method public greylist-max-o hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signingCertificate"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8254
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8255
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8256
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8257
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8258
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8261
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8263
    nop

    .line 8264
    return v2

    .line 8261
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8263
    throw v2
.end method

.method public greylist-max-o hasSystemFeature(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6913
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6914
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6915
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6916
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 6919
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6921
    nop

    .line 6922
    return v2

    .line 6919
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6921
    throw v2
.end method

.method public greylist-max-o hasSystemUidErrors()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6962
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6963
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6964
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 6967
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6969
    nop

    .line 6970
    return v2

    .line 6967
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6969
    throw v2
.end method

.method public greylist-max-o hasUidSigningCertificate(I[BI)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "signingCertificate"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8276
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8277
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8278
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 8281
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8283
    nop

    .line 8284
    return v2

    .line 8281
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8283
    throw v2
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8976
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8977
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8980
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8982
    nop

    .line 8983
    return-void

    .line 8980
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8982
    throw v2
.end method

.method public blacklist installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installFlags"    # I
    .param p4, "installReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7345
    .local p5, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7346
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7352
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7353
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7354
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7355
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7357
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_35

    move v2, v3

    .line 7360
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7362
    nop

    .line 7363
    return v2

    .line 7360
    .end local v2    # "_result":I
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7362
    throw v2
.end method

.method public blacklist isAppLockEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9576
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9577
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9578
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 9581
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9583
    nop

    .line 9584
    return v2

    .line 9581
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9583
    throw v2
.end method

.method public blacklist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8909
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8910
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8911
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8914
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8916
    nop

    .line 8917
    return v2

    .line 8914
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8916
    throw v2
.end method

.method public blacklist isDeviceUpgrading()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7552
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7553
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7554
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7557
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7559
    nop

    .line 7560
    return v2

    .line 7557
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7559
    throw v2
.end method

.method public greylist-max-o isFirstBoot()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7518
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7519
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7520
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7523
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7525
    nop

    .line 7526
    return v2

    .line 7523
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7525
    throw v2
.end method

.method public blacklist isHiddenBySprotect(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9541
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9542
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9543
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9546
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9548
    nop

    .line 9549
    return v2

    .line 9546
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9548
    throw v2
.end method

.method public greylist-max-o isInstantApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7905
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7907
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7910
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7912
    nop

    .line 7913
    return v2

    .line 7910
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7912
    throw v2
.end method

.method public blacklist isLockedBySprotect(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9559
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9561
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9564
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9566
    nop

    .line 9567
    return v2

    .line 9564
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9566
    throw v2
.end method

.method public greylist-max-o isOnlyCoreApps()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7535
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7536
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7537
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7540
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7542
    nop

    .line 7543
    return v2

    .line 7540
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7542
    throw v2
.end method

.method public blacklist isPackageAutoDisabled(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9446
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9447
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9448
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9451
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9453
    nop

    .line 9454
    return v2

    .line 9451
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9453
    throw v2
.end method

.method public greylist-max-o isPackageAvailable(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5007
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5008
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5009
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move v2, v3

    .line 5012
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5014
    nop

    .line 5015
    return v2

    .line 5012
    .end local v2    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5014
    throw v2
.end method

.method public greylist-max-o isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8013
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8015
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8016
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8017
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 8020
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8022
    nop

    .line 8023
    return v2

    .line 8020
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8022
    throw v2
.end method

.method public greylist-max-o isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7756
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7757
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7759
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7762
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7764
    nop

    .line 7765
    return v2

    .line 7762
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7764
    throw v2
.end method

.method public greylist-max-o isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7775
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7776
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7777
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7778
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7781
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7783
    nop

    .line 7784
    return v2

    .line 7781
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7783
    throw v2
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8464
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8465
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8466
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8467
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 8470
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8472
    nop

    .line 8473
    return v2

    .line 8470
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8472
    throw v2
.end method

.method public greylist-max-o isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6290
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6291
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6292
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 6295
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6297
    nop

    .line 6298
    return v2

    .line 6295
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6297
    throw v2
.end method

.method public greylist-max-o isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 7
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5280
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5282
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5285
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5287
    nop

    .line 5288
    return v2

    .line 5285
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5287
    throw v2
.end method

.method public greylist-max-o isSafeMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6945
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6946
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6947
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 6950
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6952
    nop

    .line 6953
    return v2

    .line 6950
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6952
    throw v2
.end method

.method public greylist-max-o isStorageLow()Z
    .registers 6
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

    .line 7569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7570
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7572
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 7575
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7577
    nop

    .line 7578
    return v2

    .line 7575
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7577
    throw v2
.end method

.method public greylist-max-o isUidPrivileged(I)Z
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5461
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 5466
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5468
    nop

    .line 5469
    return v2

    .line 5466
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5468
    throw v2
.end method

.method public blacklist isUnknownSourcePackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9466
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9468
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9471
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9473
    nop

    .line 9474
    return v2

    .line 9471
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9473
    throw v2
.end method

.method public blacklist logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "apkFile"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6622
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6623
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6624
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6625
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6626
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6627
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6628
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 6631
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6633
    nop

    .line 6634
    return-void

    .line 6631
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6633
    throw v2
.end method

.method public blacklist makeProviderVisible(ILjava/lang/String;)V
    .registers 8
    .param p1, "recipientAppId"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8926
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8927
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8928
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8931
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8933
    nop

    .line 8934
    return-void

    .line 8931
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8933
    throw v2
.end method

.method public blacklist makeUidVisible(II)V
    .registers 8
    .param p1, "recipientAppId"    # I
    .param p2, "visibleUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8943
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8944
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8947
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8949
    nop

    .line 8950
    return-void

    .line 8947
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8949
    throw v2
.end method

.method public greylist-max-o movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7257
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7258
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7263
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7265
    nop

    .line 7266
    return v2

    .line 7263
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7265
    throw v2
.end method

.method public blacklist movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/content/pm/IMemorySaverPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7279
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7284
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7286
    nop

    .line 7287
    return v2

    .line 7284
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7286
    throw v2
.end method

.method public greylist-max-o movePrimaryStorage(Ljava/lang/String;)I
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7298
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7303
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7305
    nop

    .line 7306
    return v2

    .line 7303
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7305
    throw v2
.end method

.method public blacklist notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 9
    .param p1, "loadingPackageName"    # Ljava/lang/String;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7000
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7002
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7004
    if-nez p2, :cond_13

    .line 7005
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 7007
    :cond_13
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7008
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/content/pm/IPackageManager$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 7013
    :goto_22
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7014
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_33

    .line 7017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7018
    nop

    .line 7019
    return-void

    .line 7017
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7018
    throw v1
.end method

.method public greylist-max-o notifyPackageUse(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6981
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6982
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6983
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6984
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 6987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6988
    nop

    .line 6989
    return-void

    .line 6987
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6988
    throw v1
.end method

.method public blacklist notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .registers 7
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 8622
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8626
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8628
    nop

    .line 8629
    return-void

    .line 8626
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8628
    throw v2
.end method

.method public blacklist overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6480
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6482
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6483
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6484
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6485
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 6488
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6490
    nop

    .line 6491
    return-void

    .line 6488
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6490
    throw v2
.end method

.method public blacklist performDexOptForADCP(Ljava/lang/String;Z)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7130
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7131
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7135
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7137
    nop

    .line 7138
    return v2

    .line 7135
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7137
    throw v2
.end method

.method public greylist-max-o performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkProfiles"    # Z
    .param p3, "targetCompilerFilter"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .param p5, "bootComplete"    # Z
    .param p6, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7073
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7076
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7078
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7079
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7080
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7081
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7082
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7083
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_38

    move v2, v3

    .line 7088
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7090
    nop

    .line 7091
    return v2

    .line 7088
    .end local v2    # "_result":Z
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7090
    throw v2
.end method

.method public greylist-max-o performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7110
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7111
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7112
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7115
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7117
    nop

    .line 7118
    return v2

    .line 7115
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7117
    throw v2
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # J
    .param p5, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5816
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5817
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5818
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5819
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5820
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5823
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5825
    nop

    .line 5826
    return-object v2

    .line 5823
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5825
    throw v2
.end method

.method public greylist-max-o queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5853
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5855
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5856
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5857
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5858
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 5861
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5863
    nop

    .line 5864
    return-object v2

    .line 5861
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5863
    throw v2
.end method

.method public blacklist queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5539
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5541
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5542
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5543
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5544
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5545
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5548
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5550
    nop

    .line 5551
    return-object v2

    .line 5548
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5550
    throw v2
.end method

.method public blacklist queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "specificTypes"    # [Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "flags"    # J
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5560
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5561
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5562
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5563
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5564
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5565
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 5566
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5567
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5568
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5569
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 5572
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5574
    nop

    .line 5575
    return-object v2

    .line 5572
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5574
    throw v2
.end method

.method public blacklist queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5647
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5649
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5650
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5651
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5652
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5653
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5656
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5658
    nop

    .line 5659
    return-object v2

    .line 5656
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5658
    throw v2
.end method

.method public blacklist queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5584
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5586
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5587
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5588
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5590
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5593
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5595
    nop

    .line 5596
    return-object v2

    .line 5593
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5595
    throw v2
.end method

.method public blacklist queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5626
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5627
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5628
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5629
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5630
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5631
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5632
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5635
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    nop

    .line 5638
    return-object v2

    .line 5635
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    throw v2
.end method

.method public blacklist queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "componentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9013
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9014
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9015
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_30

    move-object v2, v3

    .line 9018
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9020
    nop

    .line 9021
    return-object v2

    .line 9018
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9020
    throw v2
.end method

.method public greylist-max-o querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5791
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5792
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5797
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5798
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5799
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 5800
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2f

    .line 5803
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5805
    nop

    .line 5806
    return-void

    .line 5803
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5805
    throw v2
.end method

.method public greylist-max-o reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7193
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7199
    nop

    .line 7200
    return-void

    .line 7197
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7199
    throw v2
.end method

.method public greylist-max-o registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexModulePath"    # Ljava/lang/String;
    .param p3, "isSharedModule"    # Z
    .param p4, "callback"    # Landroid/content/pm/IDexModuleRegisterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7053
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7056
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7057
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7058
    iget-object v1, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    .line 7061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7062
    nop

    .line 7063
    return-void

    .line 7061
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7062
    throw v1
.end method

.method public greylist-max-o registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7226
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7232
    nop

    .line 7233
    return-void

    .line 7230
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7232
    throw v2
.end method

.method public blacklist removeEncPkgDir(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9425
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9427
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9430
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9432
    nop

    .line 9433
    return v2

    .line 9430
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9432
    throw v2
.end method

.method public blacklist removeEncUserDir(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9406
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9408
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9411
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9413
    nop

    .line 9414
    return v2

    .line 9411
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9413
    throw v2
.end method

.method public greylist-max-o removePermission(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8760
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8761
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 8764
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8766
    nop

    .line 8767
    return-void

    .line 8764
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8766
    throw v2
.end method

.method public greylist-max-o replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6102
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6104
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6105
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6106
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6107
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6108
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 6111
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6113
    nop

    .line 6114
    return-void

    .line 6111
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6113
    throw v2
.end method

.method public blacklist requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p7, "userId"    # I
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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8638
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8639
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8640
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 8641
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8642
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 8643
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8644
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_36

    .line 8647
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8649
    nop

    .line 8650
    return-void

    .line 8647
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8649
    throw v2
.end method

.method public greylist-max-o resetApplicationPreferences(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6028
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6029
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 6032
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6034
    nop

    .line 6035
    return-void

    .line 6032
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6034
    throw v2
.end method

.method public blacklist resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5769
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5770
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5771
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5772
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5773
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_33

    move-object v2, v3

    .line 5776
    .local v2, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5778
    nop

    .line 5779
    return-object v2

    .line 5776
    .end local v2    # "_result":Landroid/content/pm/ProviderInfo;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5778
    throw v2
.end method

.method public blacklist resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5478
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5480
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5481
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5482
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5483
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5484
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5487
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5489
    nop

    .line 5490
    return-object v2

    .line 5487
    .end local v2    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5489
    throw v2
.end method

.method public blacklist resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5605
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5607
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5608
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5609
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5610
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5611
    sget-object v3, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_36

    move-object v2, v3

    .line 5614
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5616
    nop

    .line 5617
    return-object v2

    .line 5614
    .end local v2    # "_result":Landroid/content/pm/ResolveInfo;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5616
    throw v2
.end method

.method public greylist-max-o restoreDefaultApps([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6380
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6381
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6384
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    nop

    .line 6387
    return-void

    .line 6384
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    throw v2
.end method

.method public blacklist restoreDomainVerification([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6414
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6415
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6418
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6420
    nop

    .line 6421
    return-void

    .line 6418
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6420
    throw v2
.end method

.method public blacklist restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6508
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6509
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6510
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6511
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6514
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6516
    nop

    .line 6517
    return-void

    .line 6514
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6516
    throw v2
.end method

.method public greylist-max-o restorePreferredActivities([BI)V
    .registers 8
    .param p1, "backup"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6345
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6346
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6347
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6350
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6352
    nop

    .line 6353
    return-void

    .line 6350
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6352
    throw v2
.end method

.method public blacklist semGetSystemFeatureLevel(Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9067
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9072
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9074
    nop

    .line 9075
    return v2

    .line 9072
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9074
    throw v2
.end method

.method public blacklist semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9128
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9129
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9130
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9131
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

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
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9136
    throw v2
.end method

.method public blacklist sendDeviceCustomizationReadyBroadcast()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8481
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 8485
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8487
    nop

    .line 8488
    return-void

    .line 8485
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8487
    throw v2
.end method

.method public greylist-max-o setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "categoryHint"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5905
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5906
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5907
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 5911
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5913
    nop

    .line 5914
    return-void

    .line 5911
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5913
    throw v2
.end method

.method public greylist-max-o setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6582
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6583
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6584
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6585
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6586
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6587
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 6590
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6592
    nop

    .line 6593
    return-void

    .line 6590
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6592
    throw v2
.end method

.method public blacklist setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .registers 13
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "usePending"    # Z
    .param p5, "startNow"    # Z
    .param p6, "userId"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8530
    .local p1, "listPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8535
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8536
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8537
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8538
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8539
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8540
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8541
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8542
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_36

    .line 8545
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8547
    nop

    .line 8548
    return-void

    .line 8545
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8547
    throw v2
.end method

.method public greylist-max-o setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7588
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7589
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7590
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7591
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7592
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7595
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7597
    nop

    .line 7598
    return v2

    .line 7595
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7597
    throw v2
.end method

.method public greylist-max-o setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "blockUninstall"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7681
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7682
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7683
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7684
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7687
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7689
    nop

    .line 7690
    return v2

    .line 7687
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7689
    throw v2
.end method

.method public greylist-max-o setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6525
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6527
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6528
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6529
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6530
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 6533
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6535
    nop

    .line 6536
    return-void

    .line 6533
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6535
    throw v2
.end method

.method public blacklist setComponentEnabledSettings(Ljava/util/List;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6540
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6546
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6547
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6550
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6552
    nop

    .line 6553
    return-void

    .line 6550
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6552
    throw v2
.end method

.method public blacklist setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "restrictionFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6228
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6229
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6230
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 6233
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6235
    nop

    .line 6236
    return-object v2

    .line 6233
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6235
    throw v2
.end method

.method public greylist-max-o setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8207
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8211
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 8212
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8213
    invoke-static {p2, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 8216
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8218
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8219
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8220
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_34

    .line 8223
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    nop

    .line 8226
    return-void

    .line 8223
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8225
    throw v2
.end method

.method public greylist-max-o setHomeActivity(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6450
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6452
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6453
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 6456
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6458
    nop

    .line 6459
    return-void

    .line 6456
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6458
    throw v2
.end method

.method public greylist-max-o setInstallLocation(I)Z
    .registers 7
    .param p1, "loc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7316
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7317
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7318
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 7321
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7323
    nop

    .line 7324
    return v2

    .line 7321
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7323
    throw v2
.end method

.method public greylist-max-o setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5890
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5891
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 5894
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5896
    nop

    .line 5897
    return-void

    .line 5894
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5896
    throw v2
.end method

.method public greylist-max-o setInstantAppCookie(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7866
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7867
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7868
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7869
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7872
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7874
    nop

    .line 7875
    return v2

    .line 7872
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7874
    throw v2
.end method

.method public blacklist setKeepUninstalledPackages(Ljava/util/List;)V
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

    .line 9025
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9030
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9031
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 9034
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9036
    nop

    .line 9037
    return-void

    .line 9034
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9036
    throw v2
.end method

.method public greylist-max-o setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "match"    # I
    .param p6, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6059
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6062
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6064
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6065
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6066
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6067
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6068
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6069
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 6072
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6074
    nop

    .line 6075
    return-void

    .line 6072
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6074
    throw v2
.end method

.method public blacklist setLicensePermissionsForMDM(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9149
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9150
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9154
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9156
    nop

    .line 9157
    return v2

    .line 9154
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9156
    throw v2
.end method

.method public blacklist setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 8831
    .local p3, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8836
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8837
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8838
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8839
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8842
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8844
    nop

    .line 8845
    return-void

    .line 8842
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8844
    throw v2
.end method

.method public greylist-max-o setPackageStoppedState(Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6663
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6664
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6665
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 6668
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6670
    nop

    .line 6671
    return-void

    .line 6668
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6670
    throw v2
.end method

.method public blacklist setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 13
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6246
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6247
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6248
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6249
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6250
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6251
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6252
    iget-object v3, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6253
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6254
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3b

    move-object v2, v3

    .line 6257
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6259
    nop

    .line 6260
    return-object v2

    .line 6257
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6259
    throw v2
.end method

.method public greylist-max-o setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemUserApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7923
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7924
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7925
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7926
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 7929
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7931
    nop

    .line 7932
    return v2

    .line 7929
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7931
    throw v2
.end method

.method public blacklist setRuntimePermissionsVersion(II)V
    .registers 8
    .param p1, "version"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8607
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8608
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 8611
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8613
    nop

    .line 8614
    return-void

    .line 8611
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8613
    throw v2
.end method

.method public blacklist setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "themeName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8874
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 8878
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8880
    nop

    .line 8881
    return-void

    .line 8878
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8880
    throw v2
.end method

.method public blacklist setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7626
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7627
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7628
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7631
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7633
    nop

    .line 7634
    return-void

    .line 7631
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7633
    throw v2
.end method

.method public blacklist setSystemAppInstallState(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installed"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7644
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7645
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7646
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7647
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7650
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7652
    nop

    .line 7653
    return v2

    .line 7650
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7652
    throw v2
.end method

.method public blacklist setTrustTimebyStatusChanged()V
    .registers 6
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
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9181
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9182
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 9185
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9187
    nop

    .line 9188
    return-void

    .line 9185
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9187
    throw v2
.end method

.method public greylist-max-o setUpdateAvailable(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateAvaialble"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7946
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7947
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7950
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7952
    nop

    .line 7953
    return-void

    .line 7950
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7952
    throw v2
.end method

.method public blacklist shouldAppSupportBadgeIcon(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9516
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9519
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9521
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9522
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9523
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 9526
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9528
    nop

    .line 9529
    return v2

    .line 9526
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9528
    throw v2
.end method

.method public greylist-max-o unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7241
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7242
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 7245
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    nop

    .line 7248
    return-void

    .line 7245
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    throw v2
.end method

.method public blacklist updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newSeInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9347
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9348
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9349
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 9352
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9354
    nop

    .line 9355
    return v2

    .line 9352
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9354
    throw v2
.end method

.method public greylist-max-o updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7446
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7447
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7448
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7449
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 7452
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7454
    nop

    .line 7455
    return v2

    .line 7452
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7454
    throw v2
.end method

.method public greylist-max-o verifyIntentFilter(IILjava/util/List;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 7401
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7408
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7409
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 7412
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7414
    nop

    .line 7415
    return-void

    .line 7412
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7414
    throw v2
.end method

.method public greylist-max-o verifyPendingInstall(II)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.content.pm.IPackageManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7373
    iget-object v2, p0, Landroid/content/pm/IPackageManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7374
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 7377
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7379
    nop

    .line 7380
    return-void

    .line 7377
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7379
    throw v2
.end method
