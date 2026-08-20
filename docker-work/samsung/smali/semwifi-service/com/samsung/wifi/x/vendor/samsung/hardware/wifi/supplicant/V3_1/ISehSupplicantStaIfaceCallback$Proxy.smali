.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;
.super Ljava/lang/Object;
.source "ISehSupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;
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

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 548
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 549
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 553
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 555
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 556
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 557
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 559
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 560
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 304
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 661
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 667
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 669
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 670
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 673
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 674
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

    .line 585
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 586
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 590
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 591
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 592
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 594
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 596
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 598
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 600
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 599
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 608
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 611
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 617
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 618
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 309
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 529
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 530
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 534
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 535
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 536
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 538
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 542
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 567
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 571
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 572
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 573
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 575
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 578
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 579
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 680
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 681
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 685
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 686
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 688
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 689
    throw p0
.end method

.method public onBeaconEventAbort(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 409
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 411
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 412
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 414
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 415
    throw p0
.end method

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 385
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 389
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 390
    invoke-virtual {v0, p5, p6}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 391
    invoke-virtual {v0, p7, p8}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 393
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 395
    :try_start_21
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 396
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2f

    .line 398
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 399
    throw p0
.end method

.method public onChannelSwitchCompleted(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 500
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 502
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 503
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 505
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 506
    throw p0
.end method

.method public onConnectivityLog(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 513
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 516
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 518
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 519
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 521
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 522
    throw p0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 372
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 374
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 375
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 377
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 378
    throw p0
.end method

.method public onEapEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 352
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 355
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 357
    :try_start_18
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 358
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    .line 360
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_26
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 361
    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 320
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 322
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 325
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 326
    throw p0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 333
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 337
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 339
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 340
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 342
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 343
    throw p0
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    .line 422
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 426
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 428
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 429
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 431
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_23
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 432
    throw p0
.end method

.method public onTwtNotification(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 481
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 484
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 486
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 487
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 489
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 490
    throw p0
.end method

.method public onTwtSetup(BBBBBBJII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 440
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 442
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 443
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 444
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 445
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 446
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 447
    invoke-virtual {v0, p7, p8}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 448
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 449
    invoke-virtual {v0, p10}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 451
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 453
    :try_start_2a
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x8

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 456
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 457
    throw p0
.end method

.method public onTwtTorndown(BB)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 464
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 466
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 468
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 470
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 473
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 474
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 645
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 647
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 649
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 650
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 651
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 654
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 625
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 627
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 629
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 630
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 632
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 633
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 295
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    iget-object p0, p0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
