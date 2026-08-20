.class Landroid/permission/IPermissionManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPermissionManager.java"

# interfaces
.implements Landroid/permission/IPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionManager$Stub;
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

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 649
    return-void
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 881
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 887
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 891
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    nop

    .line 894
    return v2

    .line 891
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 832
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 833
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 836
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    nop

    .line 839
    return-void

    .line 836
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    throw v2
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 8
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 743
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move v2, v3

    .line 748
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    nop

    .line 751
    return v2

    .line 748
    .end local v2    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 652
    iget-object v0, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 667
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 668
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 671
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 674
    return-object v2

    .line 671
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v2
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
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

    .line 857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 866
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 870
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-object v2

    .line 870
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v2
.end method

.method public blacklist getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
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

    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1086
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 1090
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    nop

    .line 1093
    return-object v2

    .line 1090
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    throw v2
.end method

.method public blacklist getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
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

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 1072
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    nop

    .line 1075
    return-object v2

    .line 1072
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 656
    const-string v0, "android.permission.IPermissionManager"

    return-object v0
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 783
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    nop

    .line 786
    return v2

    .line 783
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v2
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 686
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 687
    sget-object v3, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 690
    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    nop

    .line 693
    return-object v2

    .line 690
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw v2
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 706
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 707
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move-object v2, v3

    .line 710
    .local v2, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    nop

    .line 713
    return-object v2

    .line 710
    .end local v2    # "_result":Landroid/content/pm/PermissionInfo;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    throw v2
.end method

.method public blacklist getSplitPermissions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1016
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1017
    sget-object v3, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move-object v2, v3

    .line 1020
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1022
    nop

    .line 1023
    return-object v2

    .line 1020
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1022
    throw v2
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 927
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 930
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    nop

    .line 933
    return-void

    .line 930
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    throw v2
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 1129
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    nop

    .line 1132
    return v2

    .line 1129
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw v2
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 999
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 1003
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    nop

    .line 1006
    return v2

    .line 1003
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    throw v2
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z
    .registers 7
    .param p1, "source"    # Landroid/content/AttributionSourceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1156
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1157
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1158
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 1162
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    nop

    .line 1165
    return v2

    .line 1162
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    throw v2
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 725
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 726
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-object v2, v3

    .line 729
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    nop

    .line 732
    return-object v2

    .line 729
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v2
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSourceState;)V
    .registers 7
    .param p1, "source"    # Landroid/content/AttributionSourceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1141
    iget-object v3, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1142
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 1145
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    nop

    .line 1148
    return-void

    .line 1145
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    throw v2
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 912
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    nop

    .line 915
    return v2

    .line 912
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    throw v2
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 847
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 848
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 851
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    nop

    .line 854
    return-void

    .line 851
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    throw v2
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 761
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 764
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    throw v2
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 961
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 964
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    nop

    .line 967
    return-void

    .line 964
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    throw v2
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 945
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 948
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    nop

    .line 951
    return-void

    .line 948
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw v2
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1104
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1106
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 1110
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    nop

    .line 1113
    return v2

    .line 1110
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    throw v2
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 979
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 983
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    nop

    .line 986
    return v2

    .line 983
    .end local v2    # "_result":Z
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    throw v2
.end method

.method public blacklist startOneTimePermissionSession(Ljava/lang/String;IJJ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeout"    # J
    .param p5, "revokeAfterKilledDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1028
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1034
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1035
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1036
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 1039
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    nop

    .line 1042
    return-void

    .line 1039
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    throw v2
.end method

.method public blacklist stopOneTimePermissionSession(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1052
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 1055
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    nop

    .line 1058
    return-void

    .line 1055
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    throw v2
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 799
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 801
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 804
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    nop

    .line 807
    return-void

    .line 804
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw v2
.end method

.method public blacklist updatePermissionFlagsForAllApps(III)V
    .registers 9
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.permission.IPermissionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v2, p0, Landroid/permission/IPermissionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 818
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 821
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    nop

    .line 824
    return-void

    .line 821
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    throw v2
.end method
