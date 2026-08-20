.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
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

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 776
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1484
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1485
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1487
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1489
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1491
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1492
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1495
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1496
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 791
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

    .line 1596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1597
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1599
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1601
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1602
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1605
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1606
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1609
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1610
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

    .line 1521
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1522
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1524
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1526
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1527
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1530
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1532
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1534
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1536
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1535
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1539
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1544
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1547
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1553
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1554
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 796
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 1465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1466
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1470
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1471
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1474
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1477
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1478
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1503
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1507
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1508
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1509
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1511
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1514
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1515
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1616
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1617
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1621
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1622
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1624
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1625
    throw p0
.end method

.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 869
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3b

    .line 876
    array-length v3, p1

    if-ne v3, v2, :cond_3b

    const-wide/16 v2, 0x0

    .line 880
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 883
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 885
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 886
    invoke-virtual {p3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 888
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 890
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 891
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 893
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 894
    throw p0

    .line 877
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAssociationRejected([BIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1030
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1032
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 1037
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 1041
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1044
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1046
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1047
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1049
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1051
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1052
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 1054
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1055
    throw p0

    .line 1038
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1062
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_36

    .line 1069
    array-length v3, p1

    if-ne v3, v2, :cond_36

    const-wide/16 v2, 0x0

    .line 1073
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1076
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1079
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1081
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1082
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 1084
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_31
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1085
    throw p0

    .line 1070
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1399
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1402
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1404
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1407
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1408
    throw p0
.end method

.method public onBssidChanged(B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1106
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1107
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 1110
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_39

    .line 1115
    array-length v2, p2

    if-ne v2, v1, :cond_39

    const-wide/16 v1, 0x0

    .line 1119
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1122
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1125
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1127
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xc

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1128
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 1130
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1131
    throw p0

    .line 1116
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDisconnected([BZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 998
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1000
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 1005
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 1009
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1012
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1014
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1015
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1017
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1019
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x8

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1020
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 1022
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1023
    throw p0

    .line 1006
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDppFailure(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 1314
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1317
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1319
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1320
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1322
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1323
    throw p0
.end method

.method public onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1380
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1382
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt16Vector(Ljava/util/ArrayList;)V

    .line 1386
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1388
    :try_start_1b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1a

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 1391
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2a
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1392
    throw p0
.end method

.method public onDppProgress(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 1298
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1301
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1303
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1306
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1307
    throw p0
.end method

.method public onDppProgress_1_3(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1364
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1367
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1369
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1370
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1372
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1373
    throw p0
.end method

.method public onDppSuccess(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1347
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1348
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1351
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1353
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1354
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1356
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1357
    throw p0
.end method

.method public onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 1250
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1252
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1254
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p3, :cond_40

    .line 1259
    array-length v1, p3

    if-ne v1, p2, :cond_40

    const-wide/16 v1, 0x0

    .line 1263
    invoke-virtual {p1, v1, v2, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1268
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1270
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1272
    :try_start_2c
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x13

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    .line 1275
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1276
    throw p0

    .line 1260
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDppSuccessConfigSent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 1283
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1287
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1288
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 1290
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1291
    throw p0
.end method

.method public onEapFailure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1092
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1094
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1096
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1097
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 1099
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1100
    throw p0
.end method

.method public onEapFailure_1_1(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 1233
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1236
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1238
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1239
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1241
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1242
    throw p0
.end method

.method public onEapFailure_1_3(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1415
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1418
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1420
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1421
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1423
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1424
    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1200
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1203
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1205
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1206
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1208
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1209
    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1216
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1219
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1221
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1222
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 1224
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1225
    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 965
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3e

    .line 972
    array-length v3, p1

    if-ne v3, v2, :cond_3e

    const-wide/16 v2, 0x0

    .line 976
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 979
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 981
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 982
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 983
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 985
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 987
    :try_start_2b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 988
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    .line 990
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 991
    throw p0

    .line 973
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 901
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3b

    .line 908
    array-length v3, p1

    if-ne v3, v2, :cond_3b

    const-wide/16 v2, 0x0

    .line 912
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 915
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 917
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 920
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 922
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 923
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 925
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 926
    throw p0

    .line 909
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 933
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 935
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3a

    .line 940
    array-length v3, p1

    if-ne v3, v2, :cond_3a

    const-wide/16 v3, 0x0

    .line 944
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 947
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 949
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 950
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 952
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 954
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x1

    invoke-interface {p0, v2, v0, p1, p2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 955
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 957
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 958
    throw p0

    .line 941
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 804
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 807
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 809
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 812
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 813
    throw p0
.end method

.method public onNetworkRemoved(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 820
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 823
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 825
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 828
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 829
    throw p0
.end method

.method public onPmkCacheAdded(JLjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1331
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1333
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1335
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1337
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x17

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    .line 1340
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1341
    throw p0
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 836
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 839
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_3e

    .line 844
    array-length v2, p2

    if-ne v2, v1, :cond_3e

    const-wide/16 v1, 0x0

    .line 848
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 853
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 854
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 856
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 858
    :try_start_2b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    .line 861
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 862
    throw p0

    .line 845
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1431
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1434
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_42

    .line 1439
    array-length v2, p2

    if-ne v2, v1, :cond_42

    const-wide/16 v1, 0x0

    .line 1443
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1448
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1449
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1450
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1452
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1454
    :try_start_2e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1d

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1455
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3d

    .line 1457
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1458
    throw p0

    .line 1440
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWpsEventFail([BSS)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1153
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1155
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 1160
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 1164
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1167
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1169
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 1170
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 1172
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1174
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xe

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 1177
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1178
    throw p0

    .line 1161
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1185
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1189
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1190
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 1192
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1193
    throw p0
.end method

.method public onWpsEventSuccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 1138
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1142
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1143
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 1145
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1146
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1581
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1585
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1586
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1589
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1590
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1561
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1565
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1569
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 782
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1631
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
