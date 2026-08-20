.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;
.super Ljava/lang/Object;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
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

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
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

    .line 967
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 968
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 970
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 972
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 974
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 975
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 976
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 978
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 979
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 513
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 768
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->writeToParcel(Landroid/os/HwParcel;)V

    .line 771
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 773
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 774
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 776
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 777
    throw p0
.end method

.method public eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 916
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->writeToParcel(Landroid/os/HwParcel;)V

    .line 919
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 921
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 922
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 924
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 925
    throw p0
.end method

.method public eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 900
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->writeToParcel(Landroid/os/HwParcel;)V

    .line 903
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 905
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 906
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 908
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 909
    throw p0
.end method

.method public eventDataPathTerminated(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 932
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 935
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 937
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 938
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 940
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 941
    throw p0
.end method

.method public eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 784
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 787
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 789
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 790
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 792
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 793
    throw p0
.end method

.method public eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 867
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->writeToParcel(Landroid/os/HwParcel;)V

    .line 870
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 872
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 873
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 875
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 876
    throw p0
.end method

.method public eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 833
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 834
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->writeToParcel(Landroid/os/HwParcel;)V

    .line 837
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 839
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 842
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 843
    throw p0
.end method

.method public eventMatchExpired(BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 850
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 852
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 854
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 856
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x14

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 857
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 859
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 860
    throw p0
.end method

.method public eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 800
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 802
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 804
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 806
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x11

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 807
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 809
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 810
    throw p0
.end method

.method public eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 817
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 819
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 821
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 823
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x12

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 824
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 826
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 827
    throw p0
.end method

.method public eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 883
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 885
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 887
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 889
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x16

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 892
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 893
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1080
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1084
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1085
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1088
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1089
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1092
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1093
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

    .line 1004
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1005
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1009
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1010
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1011
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1013
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1015
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1017
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1019
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1018
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1022
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1027
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1030
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1036
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1037
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 518
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 948
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 949
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 953
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 954
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 955
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 957
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 960
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 961
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 986
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 990
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 991
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 992
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 994
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 997
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 998
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1058
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 526
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 528
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 529
    invoke-virtual {p3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->writeToParcel(Landroid/os/HwParcel;)V

    .line 531
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 533
    :try_start_18
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    .line 536
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_25
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 537
    throw p0
.end method

.method public notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 561
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 563
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 565
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 567
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 568
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 570
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 571
    throw p0
.end method

.method public notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 682
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 684
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 686
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 688
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xa

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 689
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 691
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 692
    throw p0
.end method

.method public notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 701
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 703
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 705
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xb

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 706
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 708
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 709
    throw p0
.end method

.method public notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 578
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 580
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 582
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 584
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 587
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 588
    throw p0
.end method

.method public notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 544
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 546
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 548
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 550
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 553
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 554
    throw p0
.end method

.method public notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 716
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 718
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 719
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 721
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 723
    :try_start_18
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xc

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 724
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_27

    .line 726
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_27
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 727
    throw p0
.end method

.method public notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 734
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 736
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 738
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 740
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xd

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 741
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 743
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 744
    throw p0
.end method

.method public notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 595
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 597
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 598
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 600
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 602
    :try_start_18
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    .line 605
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_26
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 606
    throw p0
.end method

.method public notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 630
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 632
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 633
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 635
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 637
    :try_start_18
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 638
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    .line 640
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_26
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 641
    throw p0
.end method

.method public notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 613
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 615
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 617
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 619
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x6

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 620
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 622
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 623
    throw p0
.end method

.method public notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 648
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 650
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 652
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 654
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x8

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 655
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 657
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 658
    throw p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1100
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1102
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1104
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1105
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1107
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1108
    throw p0
.end method

.method public notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 751
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 753
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 755
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 757
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xe

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 760
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 761
    throw p0
.end method

.method public notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 665
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 667
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 669
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 671
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 672
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 674
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 675
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1064
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1066
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1068
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1069
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1070
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1072
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1073
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1044
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1046
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1048
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1049
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1051
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1052
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 504
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi@1.0::IWifiNanIfaceEventCallback]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
