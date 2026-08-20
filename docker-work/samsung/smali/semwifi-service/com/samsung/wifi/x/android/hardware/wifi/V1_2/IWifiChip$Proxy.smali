.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;
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

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 570
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 573
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 575
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 576
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 579
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 580
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 583
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 584
    throw p0
.end method

.method public createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 676
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 680
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 681
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 684
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 685
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 686
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v0

    .line 687
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 689
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 690
    throw p0
.end method

.method public createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 761
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 765
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 766
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 767
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 769
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 770
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 771
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 772
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 774
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw p0
.end method

.method public createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 846
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 851
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 852
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 854
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 855
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 856
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    .line 857
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 859
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 860
    throw p0
.end method

.method public createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1016
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 1017
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1019
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1021
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1022
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1025
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1026
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1027
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v0

    .line 1028
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;)V
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3f

    .line 1030
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1031
    throw p0
.end method

.method public createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 931
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 935
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 936
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 937
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 939
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 940
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 941
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 942
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 944
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 945
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

    .line 1271
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1272
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1274
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1276
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1278
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1279
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1282
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1283
    throw p0
.end method

.method public enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1146
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1149
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1151
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1152
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1155
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1156
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1159
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1160
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 473
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1083
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1086
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1088
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1089
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1092
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1093
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1096
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1097
    throw p0
.end method

.method public getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 721
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 723
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 724
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 725
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 727
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 728
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v0

    .line 730
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 732
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 733
    throw p0
.end method

.method public getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 697
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 701
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 702
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 703
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 705
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 706
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 707
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 708
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 710
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 711
    throw p0
.end method

.method public getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 549
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 551
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 553
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 554
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 555
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 557
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 558
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 559
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 560
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 562
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 563
    throw p0
.end method

.method public getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 528
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 532
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 536
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 537
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 538
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 539
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 542
    throw p0
.end method

.method public getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1124
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1128
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1129
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1132
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1133
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1134
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;-><init>()V

    .line 1135
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1136
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 1138
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1139
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1384
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1388
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1389
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1392
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1393
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1397
    throw p0
.end method

.method public getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1038
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1040
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1042
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1043
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1046
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1047
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1048
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1049
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1051
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1052
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

    .line 1308
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1309
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1313
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1314
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1317
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1319
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1321
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1323
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1322
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1326
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1331
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1334
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1340
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1341
    throw p0
.end method

.method public getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 486
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 490
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 491
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 492
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 494
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 495
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 496
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 497
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 499
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 500
    throw p0
.end method

.method public getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 591
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 595
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 596
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 597
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 599
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 600
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 601
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 602
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 605
    throw p0
.end method

.method public getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 803
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 806
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 808
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 809
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 812
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 813
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 814
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    .line 815
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 817
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 818
    throw p0
.end method

.method public getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 782
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 786
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 787
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 788
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 790
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 791
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 792
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 793
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 795
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 796
    throw p0
.end method

.method public getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 888
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 891
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 893
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 894
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 895
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 897
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 898
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 899
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object v0

    .line 900
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 902
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 903
    throw p0
.end method

.method public getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 867
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 869
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 871
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 872
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 873
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 875
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 876
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 877
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 878
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 880
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 881
    throw p0
.end method

.method public getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 973
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 976
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 978
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 979
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 980
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 982
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 983
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 984
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 985
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_37

    .line 987
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 988
    throw p0
.end method

.method public getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 952
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 954
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 956
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 957
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 958
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 960
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 961
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 962
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 963
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 965
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 966
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 478
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 1252
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1253
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1257
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1258
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1261
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1264
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1265
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1290
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1294
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1295
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1301
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1302
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1362
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1404
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1406
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1408
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1409
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1411
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1412
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1368
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1370
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1372
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1373
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1376
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1377
    throw p0
.end method

.method public registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 508
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 510
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 512
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 513
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 514
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 516
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 517
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_33

    .line 520
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 521
    throw p0
.end method

.method public registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    .line 1231
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 1232
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1234
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1236
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1237
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1240
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1241
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 1244
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1245
    throw p0
.end method

.method public removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 743
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 745
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 746
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 747
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 749
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 750
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 753
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 754
    throw p0
.end method

.method public removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 825
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 828
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 830
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 831
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 832
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 834
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 835
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 838
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 839
    throw p0
.end method

.method public removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 910
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 913
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 915
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 916
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 917
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 919
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 920
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 923
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 924
    throw p0
.end method

.method public removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 995
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 998
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1000
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1001
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1004
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1005
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1008
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1009
    throw p0
.end method

.method public requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 612
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 616
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 617
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 618
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 620
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 621
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 622
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;-><init>()V

    .line 623
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 624
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 626
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 627
    throw p0
.end method

.method public requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 634
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 636
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 638
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 639
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 642
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 643
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 644
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 645
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 648
    throw p0
.end method

.method public requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 655
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 657
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 659
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 660
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 661
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 663
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 664
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 665
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 666
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    throw p0
.end method

.method public resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    .line 1189
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1193
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1194
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1197
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1198
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1201
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1202
    throw p0
.end method

.method public selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1167
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    .line 1168
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1171
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1173
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1174
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1177
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1178
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1181
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1182
    throw p0
.end method

.method public selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    .line 1210
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1213
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1215
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1216
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1219
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1220
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1223
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1224
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1347
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1348
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1350
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1352
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1353
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1355
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1356
    throw p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1058
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1059
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1062
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1063
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1065
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1067
    :try_start_1b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1c

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1068
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1071
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1072
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_35

    .line 1075
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1076
    throw p0
.end method

.method public stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 1104
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1108
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1109
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1112
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 1113
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1116
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1117
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 464
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi@1.2::IWifiChip]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
