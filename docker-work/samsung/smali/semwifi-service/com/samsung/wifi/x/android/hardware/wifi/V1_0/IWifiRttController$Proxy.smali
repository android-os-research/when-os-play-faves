.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;
.super Ljava/lang/Object;
.source "IWifiRttController.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;
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

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 662
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 664
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 666
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 668
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 669
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 670
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 672
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 673
    throw p0
.end method

.method public disableResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 621
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 624
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 626
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 627
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 628
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 630
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 631
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 634
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 635
    throw p0
.end method

.method public enableResponder(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 597
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 599
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 600
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 601
    invoke-virtual {p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->writeToParcel(Landroid/os/HwParcel;)V

    .line 603
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 605
    :try_start_1b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 606
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 607
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 609
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 610
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_35

    .line 613
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 614
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 387
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBoundIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 404
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 405
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 406
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 408
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 409
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 410
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    .line 411
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;)V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 413
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 414
    throw p0
.end method

.method public getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 509
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 513
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 514
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 517
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 518
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 519
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttCapabilities;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttCapabilities;-><init>()V

    .line 520
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 521
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttCapabilities;)V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 523
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 524
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 774
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 776
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 778
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 779
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 780
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 782
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 783
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 786
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 787
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

    .line 698
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 703
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 704
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 705
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 707
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 709
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 711
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 713
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 712
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 721
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 724
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 730
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 731
    throw p0
.end method

.method public getResponderInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 575
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 579
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 580
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 581
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 583
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 584
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 585
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 586
    invoke-virtual {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 587
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 589
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 590
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 392
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 643
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 647
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 648
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 651
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 654
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 655
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 680
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 682
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 684
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 685
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 686
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 688
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 691
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 692
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 794
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 798
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 799
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 801
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 802
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 758
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 762
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 763
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 764
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 766
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 767
    throw p0
.end method

.method public rangeCancel(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 464
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 467
    new-instance p1, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 469
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 470
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 471
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 472
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x6

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    move v3, v4

    :goto_2b
    if-ge v3, v1, :cond_4a

    mul-int/lit8 v5, v3, 0x6

    int-to-long v5, v5

    .line 476
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_42

    .line 478
    array-length v8, v7

    const/4 v9, 0x6

    if-ne v8, v9, :cond_42

    .line 482
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 479
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    const-wide/16 v5, 0x0

    .line 486
    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 488
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 491
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 493
    :try_start_57
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    invoke-interface {p0, p2, v0, p1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 494
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 495
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 497
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 498
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_6f

    .line 501
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_6f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 502
    throw p0
.end method

.method public rangeRequest(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 444
    invoke-static {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 446
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 448
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 449
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 450
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 452
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 453
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2e

    .line 456
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2e
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 457
    throw p0
.end method

.method public registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 421
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 422
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 424
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 426
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 427
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 428
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 430
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 431
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_33

    .line 434
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 435
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 738
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 740
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 742
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 743
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 745
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 746
    throw p0
.end method

.method public setLci(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 531
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 533
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 535
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 537
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x6

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 538
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 541
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 542
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2e

    .line 545
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2e
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 546
    throw p0
.end method

.method public setLcr(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

    .line 553
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 555
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 557
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 563
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 564
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2e

    .line 567
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2e
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 568
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 378
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi@1.0::IWifiRttController]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
