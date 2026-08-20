.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 575
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 578
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 580
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 581
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 582
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 584
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 585
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 588
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 589
    throw p0
.end method

.method public createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 681
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 685
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 686
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 689
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 690
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 691
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v0

    .line 692
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 694
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 695
    throw p0
.end method

.method public createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 766
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 768
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 770
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 771
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 774
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 775
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 776
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 777
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 779
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 780
    throw p0
.end method

.method public createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 851
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 855
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 856
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 857
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 859
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 860
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 861
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    .line 862
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 864
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 865
    throw p0
.end method

.method public createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1021
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 1022
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1024
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1026
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1027
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1030
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1031
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1032
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v0

    .line 1033
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;)V
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3f

    .line 1035
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1036
    throw p0
.end method

.method public createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 936
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 938
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 940
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 941
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 942
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 944
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 945
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 946
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 947
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 949
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 950
    throw p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1339
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1340
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1342
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1344
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1346
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1347
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1350
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1351
    throw p0
.end method

.method public enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1151
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1154
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1156
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1157
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1160
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1161
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1164
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1165
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 478
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.3::IWifiChip"

    .line 1300
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1304
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1305
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1306
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1308
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1309
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1312
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1313
    throw p0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1088
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1091
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1093
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1094
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1095
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1097
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1098
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1101
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1102
    throw p0
.end method

.method public getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 723
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 726
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 728
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 729
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 730
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 732
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 733
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 734
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v0

    .line 735
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 737
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 738
    throw p0
.end method

.method public getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 702
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 706
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 707
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 708
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 710
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 711
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 712
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 713
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 715
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 716
    throw p0
.end method

.method public getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 554
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 558
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 559
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 562
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 563
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 564
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 565
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 567
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 568
    throw p0
.end method

.method public getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 533
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 537
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 538
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 541
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 542
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 543
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 544
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 546
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    throw p0
.end method

.method public getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.3::IWifiChip"

    .line 1258
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1262
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1263
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1266
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1267
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1268
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1269
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1271
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1272
    throw p0
.end method

.method public getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1129
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1133
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1134
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1137
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1138
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1139
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;-><init>()V

    .line 1140
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1141
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 1143
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1144
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1452
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1456
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1457
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1460
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1461
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1464
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1465
    throw p0
.end method

.method public getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1043
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1047
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1048
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1051
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1052
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1053
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1054
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1056
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1057
    throw p0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1376
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1377
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1379
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1381
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1382
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1385
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1387
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1389
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1391
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1390
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1394
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1399
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1402
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1408
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1409
    throw p0
.end method

.method public getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 491
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 495
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 496
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 497
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 499
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 500
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 501
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 502
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 504
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    throw p0
.end method

.method public getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 596
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 600
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 601
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 602
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 604
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 605
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 606
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 607
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 609
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 610
    throw p0
.end method

.method public getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 808
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 811
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 813
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 814
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 815
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 817
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 818
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 819
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 820
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 822
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 823
    throw p0
.end method

.method public getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 787
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 791
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 792
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 795
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 796
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 797
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 800
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 801
    throw p0
.end method

.method public getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 893
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 896
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 898
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 899
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 900
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 902
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 903
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 904
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    .line 905
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 907
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 908
    throw p0
.end method

.method public getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 872
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 876
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 877
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 878
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 880
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 881
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 882
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 883
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 885
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 886
    throw p0
.end method

.method public getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 978
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 981
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 983
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 984
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 985
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 987
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 988
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 989
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 990
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 992
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 993
    throw p0
.end method

.method public getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 957
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 961
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 962
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 963
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 965
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 966
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 967
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 968
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 970
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 971
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 483
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1321
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1323
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1325
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1326
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1327
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1329
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1332
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1333
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1358
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1360
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1362
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1363
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1366
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1369
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1370
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1472
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1476
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1477
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1479
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1480
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1436
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1438
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1440
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1441
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1442
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1444
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1445
    throw p0
.end method

.method public registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 512
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 513
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 515
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 517
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 518
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 519
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 521
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 522
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_33

    .line 525
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 526
    throw p0
.end method

.method public registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    .line 1236
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 1237
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1239
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1241
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1242
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1245
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1246
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 1249
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1250
    throw p0
.end method

.method public removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 745
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 748
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 750
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 751
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 752
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 754
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 755
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 758
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    throw p0
.end method

.method public removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 830
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 833
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 835
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 836
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 837
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 839
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 840
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 843
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 844
    throw p0
.end method

.method public removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 915
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 918
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 920
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 921
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 922
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 924
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 925
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 928
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 929
    throw p0
.end method

.method public removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1000
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1003
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1005
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1006
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1007
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1009
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1010
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1013
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1014
    throw p0
.end method

.method public requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 617
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 621
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 622
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 625
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 626
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 627
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;-><init>()V

    .line 628
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 629
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 632
    throw p0
.end method

.method public requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 639
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 643
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 644
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 645
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 647
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 648
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 649
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 652
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 653
    throw p0
.end method

.method public requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 660
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 664
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 665
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 668
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 669
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 670
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 671
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 673
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 674
    throw p0
.end method

.method public resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    .line 1194
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1196
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1198
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1199
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1202
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1203
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1206
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1207
    throw p0
.end method

.method public selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    .line 1173
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1176
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1178
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1179
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1182
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1183
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1186
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1187
    throw p0
.end method

.method public selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    .line 1215
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1218
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1220
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1221
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1222
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1224
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1225
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1228
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1229
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1415
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1416
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1418
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1420
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1421
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1423
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1424
    throw p0
.end method

.method public setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.3::IWifiChip"

    .line 1279
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1284
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1285
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1288
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1289
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1292
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1293
    throw p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1064
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1067
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1068
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1070
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1072
    :try_start_1b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1c

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1073
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1076
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1077
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_35

    .line 1080
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1081
    throw p0
.end method

.method public stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1109
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1113
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1114
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1117
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1118
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1121
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1122
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 469
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    const-string p0, "[class or subclass of android.hardware.wifi@1.3::IWifiChip]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
