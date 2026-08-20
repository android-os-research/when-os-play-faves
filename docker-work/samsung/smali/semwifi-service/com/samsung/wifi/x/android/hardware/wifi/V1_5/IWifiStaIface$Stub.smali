.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1179
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

    .line 1240
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1241
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1242
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1243
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

    .line 1211
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_40

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_54

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_68

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_90

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_a4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_40
    .array-data 1
        -0x4ft
        0x54t
        -0x47t
        -0x2t
        -0x75t
        -0x6ct
        -0x31t
        0x64t
        0x39t
        0x27t
        0x66t
        -0x41t
        -0x27t
        0x32t
        -0x40t
        0x23t
        -0x13t
        -0xat
        0x58t
        -0x46t
        -0x72t
        -0x34t
        0x4bt
        -0x6bt
        0x2ft
        -0x7ct
        0x24t
        0x5t
        -0x7ft
        0x20t
        -0x1bt
        -0x43t
    .end array-data

    :array_54
    .array-data 1
        0x57t
        0x51t
        -0xet
        0x30t
        -0x18t
        0x6at
        0x36t
        0x11t
        0x1et
        0x7ct
        0x5bt
        -0x67t
        0x55t
        0x77t
        -0x35t
        -0x8t
        -0x63t
        -0x73t
        -0x9t
        0x6ct
        -0x72t
        0x6ct
        0x76t
        0x41t
        0x19t
        -0x6ft
        -0x68t
        -0xdt
        -0x25t
        0x3at
        -0x6dt
        -0x9t
    .end array-data

    :array_68
    .array-data 1
        -0x1t
        0x5dt
        -0x28t
        0x21t
        -0x3et
        -0x39t
        -0x57t
        -0x39t
        -0x7at
        0x7t
        0x15t
        -0x64t
        0x4dt
        0x78t
        -0x77t
        0x60t
        -0x49t
        0x25t
        0x48t
        0x72t
        0x63t
        -0x3ct
        -0x63t
        -0x6bt
        0x6ct
        -0x5bt
        -0x6t
        0x3dt
        0x37t
        0x0t
        -0x75t
        0x45t
    .end array-data

    :array_7c
    .array-data 1
        0x3bt
        -0x80t
        -0x6dt
        -0x2dt
        -0x62t
        -0xft
        -0x1ft
        0xet
        0x43t
        -0x3bt
        0x53t
        -0x76t
        -0x5t
        -0xbt
        -0x1t
        0x6et
        0x39t
        -0x48t
        -0x28t
        0x16t
        -0x72t
        -0x45t
        -0x1ft
        -0x67t
        -0x73t
        -0x67t
        0x3et
        -0x77t
        -0x1et
        0x5ft
        0x14t
        -0x5bt
    .end array-data

    :array_90
    .array-data 1
        0x6bt
        -0x66t
        -0x2ct
        0x3at
        0x5et
        -0x5t
        -0x1at
        -0x36t
        0x21t
        0x4ft
        0x75t
        0x1et
        0x22t
        -0x32t
        0x43t
        -0x31t
        0x5ct
        -0x2ct
        -0x2bt
        -0x2bt
        -0xet
        -0x35t
        -0x58t
        0xft
        0x24t
        -0x34t
        -0x2dt
        0x75t
        0x5at
        0x72t
        0x40t
        0x1ct
    .end array-data

    :array_a4
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1187
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.5::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.3::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v4, "android.hardware.wifi@1.0::IWifiIface"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.5::IWifiStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1250
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hardware.wifi@1.5::IWifiStaIface"

    const-string v0, "android.hardware.wifi@1.3::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

    const-wide/16 v3, 0x6

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const-string v8, "android.hardware.wifi@1.0::IWifiStaIface"

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_340

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_382

    goto/16 :goto_33f

    .line 1855
    :sswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_33f

    .line 1844
    :sswitch_22
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1847
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1848
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1834
    :sswitch_34
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->ping()V

    .line 1837
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1821
    :sswitch_42
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_33f

    .line 1787
    :sswitch_4a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1790
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1792
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1794
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1795
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1796
    invoke-virtual {p1, v0, v1, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1797
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_70
    if-ge v9, p2, :cond_90

    mul-int/lit8 v0, v9, 0x20

    int-to-long v0, v0

    .line 1801
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_88

    .line 1803
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_88

    .line 1807
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    .line 1804
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1811
    :cond_90
    invoke-virtual {p1, v5, v6, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1813
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1815
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1776
    :sswitch_9b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1779
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1780
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1764
    :sswitch_ad
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1768
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1769
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1753
    :sswitch_c3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1756
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1757
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1741
    :pswitch_d5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1744
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->setScanMode(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1745
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1746
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1726
    :pswitch_eb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->getLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;)V

    goto/16 :goto_33f

    .line 1697
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getFactoryMacAddressCallback;)V

    goto/16 :goto_33f

    .line 1682
    :pswitch_105
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V

    goto/16 :goto_33f

    .line 1662
    :pswitch_112
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1666
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1669
    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1673
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1674
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1647
    :pswitch_12d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    goto/16 :goto_33f

    .line 1632
    :pswitch_13a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    goto/16 :goto_33f

    .line 1617
    :pswitch_147
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    goto/16 :goto_33f

    .line 1606
    :pswitch_154
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1609
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1610
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1586
    :pswitch_166
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p4, p1, [B

    const-wide/16 v0, 0x3

    .line 1590
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1593
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1597
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1598
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1599
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1600
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1574
    :pswitch_184
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1577
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1578
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1541
    :pswitch_19a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    new-array p4, v7, [B

    .line 1548
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1551
    invoke-virtual {v0, v5, v6, p4, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v8, v7, [B

    .line 1557
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1560
    invoke-virtual {v0, v5, v6, v8, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move v3, p1

    move-object v4, p4

    move-object v5, v8

    .line 1565
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1566
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1567
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1529
    :pswitch_1d2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1532
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1533
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1534
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1517
    :pswitch_1e8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1520
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1521
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1522
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1523
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1504
    :pswitch_1fe
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1507
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1508
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1509
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1510
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1489
    :pswitch_218
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    goto/16 :goto_33f

    .line 1477
    :pswitch_225
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1480
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1481
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1482
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1463
    :pswitch_23b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1468
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1469
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1470
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1471
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1448
    :pswitch_259
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    goto/16 :goto_33f

    .line 1437
    :pswitch_266
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1440
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1441
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1425
    :pswitch_278
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1428
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1429
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1413
    :pswitch_28e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1416
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1417
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1399
    :pswitch_2a4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1402
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1403
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1404
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1405
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1406
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33f

    .line 1383
    :pswitch_2c2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1386
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$6;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    goto :goto_33f

    .line 1368
    :pswitch_2d2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    goto :goto_33f

    .line 1355
    :pswitch_2de
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1359
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1360
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_33f

    .line 1340
    :pswitch_2f7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    goto :goto_33f

    .line 1325
    :pswitch_303
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    goto :goto_33f

    .line 1313
    :pswitch_30f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object p1

    .line 1316
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1317
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1318
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1319
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_33f

    .line 1298
    :pswitch_328
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_33f

    .line 1283
    :pswitch_334
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_33f
    return-void

    :pswitch_data_340
    .packed-switch 0x1
        :pswitch_334
        :pswitch_328
        :pswitch_30f
        :pswitch_303
        :pswitch_2f7
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2c2
        :pswitch_2a4
        :pswitch_28e
        :pswitch_278
        :pswitch_266
        :pswitch_259
        :pswitch_23b
        :pswitch_225
        :pswitch_218
        :pswitch_1fe
        :pswitch_1e8
        :pswitch_1d2
        :pswitch_19a
        :pswitch_184
        :pswitch_166
        :pswitch_154
        :pswitch_147
        :pswitch_13a
        :pswitch_12d
        :pswitch_112
        :pswitch_105
        :pswitch_f8
        :pswitch_eb
        :pswitch_d5
    .end packed-switch

    :sswitch_data_382
    .sparse-switch
        0xf43484e -> :sswitch_c3
        0xf444247 -> :sswitch_ad
        0xf445343 -> :sswitch_9b
        0xf485348 -> :sswitch_4a
        0xf494e54 -> :sswitch_42
        0xf504e47 -> :sswitch_34
        0xf524546 -> :sswitch_22
        0xf535953 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.5::IWifiStaIface"

    .line 1262
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

    .line 1269
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
