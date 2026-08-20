.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1372
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 1425
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1426
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1427
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1428
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1400
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_20
    .array-data 1
        -0x75t
        0x63t
        -0xbt
        -0x11t
        -0x5et
        -0x1dt
        -0x42t
        0x3at
        0x7ct
        -0x48t
        -0x5ct
        0x28t
        0x76t
        0xdt
        -0x7et
        0x28t
        0x5at
        0x4at
        -0x49t
        -0x65t
        -0x35t
        -0x22t
        -0x5at
        -0x11t
        -0x70t
        -0x56t
        0x54t
        0x75t
        0x55t
        -0x1bt
        -0x7et
        -0x2ct
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1380
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1435
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x8

    const/16 v5, 0x20

    const-wide/16 v6, 0x6

    const-string v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    packed-switch p1, :pswitch_data_286

    const/4 v6, 0x0

    const-string v7, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2ac

    goto/16 :goto_285

    .line 1894
    :sswitch_1c
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_285

    .line 1883
    :sswitch_24
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1886
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1887
    invoke-virtual {v0, v2}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1873
    :sswitch_36
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->ping()V

    .line 1876
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1860
    :sswitch_44
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_285

    .line 1826
    :sswitch_4c
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1829
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1831
    new-instance v1, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v1, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 1833
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1834
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 1835
    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1836
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v7, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_70
    if-ge v6, v7, :cond_8e

    mul-int/lit8 v4, v6, 0x20

    int-to-long v11, v4

    .line 1840
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_86

    .line 1842
    array-length v8, v4

    if-ne v8, v5, :cond_86

    .line 1846
    invoke-virtual {v3, v11, v12, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 1843
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1850
    :cond_8e
    invoke-virtual {v1, v9, v10, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1852
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1815
    :sswitch_99
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1818
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1819
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1803
    :sswitch_ab
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1807
    invoke-virtual {v0, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1808
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1792
    :sswitch_c1
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1795
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1796
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_285

    .line 1766
    :pswitch_d3
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1770
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1773
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v11, [B

    .line 1779
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1782
    invoke-virtual {v1, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1786
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    goto/16 :goto_285

    .line 1740
    :pswitch_ed
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1744
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1747
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v11, [B

    .line 1753
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1756
    invoke-virtual {v1, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1760
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    goto/16 :goto_285

    .line 1721
    :pswitch_107
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1725
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1728
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v3

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1734
    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    goto/16 :goto_285

    .line 1700
    :pswitch_120
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1704
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1707
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v5

    .line 1714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 1715
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    goto/16 :goto_285

    .line 1682
    :pswitch_148
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1686
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1689
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1694
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    goto/16 :goto_285

    .line 1645
    :pswitch_15d
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1649
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1652
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v11, [B

    .line 1658
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1661
    invoke-virtual {v4, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v4, v11, [B

    .line 1667
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 1670
    invoke-virtual {v5, v9, v10, v4, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 1676
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    goto/16 :goto_285

    .line 1635
    :pswitch_18f
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1639
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    goto/16 :goto_285

    .line 1603
    :pswitch_19f
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-array v12, v5, [B

    const-wide/16 v13, 0x20

    .line 1611
    invoke-virtual {v1, v13, v14}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v13

    .line 1614
    invoke-virtual {v13, v9, v10, v12, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v11, [B

    .line 1621
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 1624
    invoke-virtual {v5, v9, v10, v14, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v8

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move v8, v9

    .line 1629
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    goto/16 :goto_285

    .line 1594
    :pswitch_1dd
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1597
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    goto/16 :goto_285

    .line 1586
    :pswitch_1e9
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-interface/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    goto/16 :goto_285

    .line 1577
    :pswitch_1f1
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1580
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    goto/16 :goto_285

    .line 1559
    :pswitch_1fd
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1563
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1566
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1571
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BS)V

    goto/16 :goto_285

    .line 1551
    :pswitch_212
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-interface/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onFindStopped()V

    goto/16 :goto_285

    .line 1534
    :pswitch_21a
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1538
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1541
    invoke-virtual {v1, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1545
    invoke-interface {v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    goto :goto_285

    .line 1486
    :pswitch_22a
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1490
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 1493
    invoke-virtual {v5, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v5, v11, [B

    .line 1499
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    .line 1502
    invoke-virtual {v8, v9, v10, v5, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const/16 v8, 0x8

    new-array v12, v8, [B

    .line 1508
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1511
    invoke-virtual {v3, v9, v10, v12, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v8

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    new-array v15, v11, [B

    .line 1521
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1524
    invoke-virtual {v1, v9, v10, v15, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v12

    move v5, v8

    move v6, v13

    move v7, v14

    move-object v8, v15

    .line 1528
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    goto :goto_285

    .line 1477
    :pswitch_270
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1480
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_285

    .line 1468
    :pswitch_27b
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1471
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkAdded(I)V

    :goto_285
    return-void

    :pswitch_data_286
    .packed-switch 0x1
        :pswitch_27b
        :pswitch_270
        :pswitch_22a
        :pswitch_21a
        :pswitch_212
        :pswitch_1fd
        :pswitch_1f1
        :pswitch_1e9
        :pswitch_1dd
        :pswitch_19f
        :pswitch_18f
        :pswitch_15d
        :pswitch_148
        :pswitch_120
        :pswitch_107
        :pswitch_ed
        :pswitch_d3
    .end packed-switch

    :sswitch_data_2ac
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_4c
        0xf494e54 -> :sswitch_44
        0xf504e47 -> :sswitch_36
        0xf524546 -> :sswitch_24
        0xf535953 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 1447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1454
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
