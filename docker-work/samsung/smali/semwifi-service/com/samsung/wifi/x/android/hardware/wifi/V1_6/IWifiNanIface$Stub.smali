.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1233
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

    .line 1296
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1297
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1298
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1299
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

    .line 1266
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_48

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_70

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_84

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_98

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_ac

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_c0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_48
    .array-data 1
        -0x20t
        0x5ct
        0x4t
        0x7dt
        -0x20t
        -0x59t
        -0xet
        -0x34t
        -0x71t
        0x16t
        0x6at
        0x1ct
        -0x80t
        -0x75t
        0x78t
        -0x18t
        0x56t
        0x5ft
        -0x8t
        0x66t
        -0x5t
        0x69t
        -0x67t
        0x1ft
        -0x3dt
        -0x45t
        -0x6t
        -0x6ft
        0x41t
        -0x79t
        0x1dt
        0x5bt
    .end array-data

    :array_5c
    .array-data 1
        0x45t
        -0x55t
        -0x6dt
        0x37t
        -0x71t
        0x2t
        -0x58t
        -0x44t
        0x3at
        0x65t
        -0x78t
        0x53t
        -0x32t
        0x4dt
        0x3ft
        -0x24t
        0x1et
        -0x61t
        -0x5et
        -0x3ft
        -0x2ft
        -0x3bt
        0x45t
        -0x7et
        0x1dt
        0x49t
        0xbt
        -0x10t
        -0xct
        -0x27t
        0x6ct
        -0x14t
    .end array-data

    :array_70
    .array-data 1
        -0x1t
        0x66t
        0x37t
        0x1at
        0x46t
        0x7dt
        0x1ft
        0x3ct
        -0x56t
        -0x32t
        -0x5ft
        0x5dt
        -0x6dt
        -0xdt
        -0x65t
        0x7bt
        0x76t
        0x7bt
        0xdt
        0x6bt
        -0x74t
        -0x2ct
        0x1dt
        0x4t
        0x3t
        0x37t
        -0x33t
        -0x55t
        -0xet
        0x51t
        0x4bt
        -0x79t
    .end array-data

    :array_84
    .array-data 1
        -0x74t
        0x7et
        -0xdt
        0x2ft
        -0x39t
        -0x73t
        0x5et
        -0x3at
        -0x1at
        -0x6bt
        0x6dt
        -0x1dt
        0x78t
        0x4ct
        -0x3et
        -0x3at
        -0xct
        0x26t
        0x14t
        -0x4bt
        0x27t
        0x2dt
        0x2et
        0x46t
        0x1ft
        0x6dt
        0x60t
        0x53t
        0x4bt
        -0x5dt
        -0x72t
        -0x3et
    .end array-data

    :array_98
    .array-data 1
        -0x46t
        0x5at
        -0x59t
        0x4ft
        0x1bt
        -0x59t
        0x14t
        -0x10t
        0x9t
        0x38t
        0x64t
        0x22t
        0x79t
        0x23t
        0x49t
        0x28t
        0x8t
        0x79t
        0x5bt
        -0x26t
        0x61t
        -0x67t
        -0x3ct
        -0x16t
        0x8t
        -0x6ft
        0x32t
        0x2dt
        0x27t
        -0x8t
        -0x37t
        0x31t
    .end array-data

    :array_ac
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

    :array_c0
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1241
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.6::IWifiNanIface"

    const-string v1, "android.hardware.wifi@1.5::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.4::IWifiNanIface"

    const-string v3, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v4, "android.hardware.wifi@1.0::IWifiNanIface"

    const-string v5, "android.hardware.wifi@1.0::IWifiIface"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.6::IWifiNanIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1306
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hardware.wifi@1.4::IWifiNanIface"

    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.5::IWifiNanIface"

    const-string v3, "android.hardware.wifi@1.6::IWifiNanIface"

    const-string v4, "android.hardware.wifi@1.0::IWifiNanIface"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_470

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_4b4

    goto/16 :goto_46f

    .line 1888
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_46f

    .line 1877
    :sswitch_1f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1880
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1881
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1882
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1867
    :sswitch_31
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->ping()V

    .line 1870
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1854
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_46f

    .line 1820
    :sswitch_47
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1823
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1825
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1827
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1828
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1829
    invoke-virtual {p1, v0, v1, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1830
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6d
    if-ge v5, p2, :cond_8d

    mul-int/lit8 v0, v5, 0x20

    int-to-long v0, v0

    .line 1834
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_85

    .line 1836
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_85

    .line 1840
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 1837
    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    const-wide/16 v0, 0x0

    .line 1844
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1846
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1809
    :sswitch_9a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1812
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1813
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1797
    :sswitch_ac
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1801
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1802
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1786
    :sswitch_c2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1789
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1790
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1772
    :pswitch_d4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1775
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;-><init>()V

    .line 1776
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1777
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->startPublishRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1778
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1756
    :pswitch_f2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1759
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1760
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1761
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;-><init>()V

    .line 1762
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1763
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->configRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1764
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1765
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1740
    :pswitch_118
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1743
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1744
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1745
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;-><init>()V

    .line 1746
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1747
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->enableRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1748
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1749
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1726
    :pswitch_13e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1729
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1730
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1731
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->respondToDataPathIndicationRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1732
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1712
    :pswitch_15c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1715
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;-><init>()V

    .line 1716
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1717
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->initiateDataPathRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1718
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1719
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1700
    :pswitch_17a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1703
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->registerEventCallback_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1704
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1705
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1688
    :pswitch_194
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1691
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->getCapabilitiesRequest_1_5(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1692
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1693
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1676
    :pswitch_1aa
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1679
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1680
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1681
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1660
    :pswitch_1c4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1663
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1664
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1665
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 1666
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1667
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->configRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1668
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1669
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1644
    :pswitch_1ea
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1647
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1648
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1649
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 1650
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1651
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->enableRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1652
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1628
    :pswitch_210
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1631
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1632
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1633
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1634
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1635
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->configRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1636
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1637
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1612
    :pswitch_236
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1615
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1616
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1617
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1618
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1619
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->enableRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1620
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1621
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1622
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1596
    :pswitch_25c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1599
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1600
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1601
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1602
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1603
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1604
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1605
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1580
    :pswitch_282
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1583
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1584
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1585
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1586
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1587
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1588
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1568
    :pswitch_2a8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1571
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1572
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1573
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1555
    :pswitch_2c2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1559
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1560
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1561
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1541
    :pswitch_2dc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1544
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1545
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1546
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1547
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1548
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1527
    :pswitch_2fa
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1530
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1531
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1532
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1533
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1534
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1514
    :pswitch_318
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1518
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1519
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1501
    :pswitch_332
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1505
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1506
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1507
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1487
    :pswitch_34c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1490
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1491
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1492
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1493
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1494
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1474
    :pswitch_36a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1478
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1479
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1460
    :pswitch_384
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1463
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1464
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1465
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1466
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1447
    :pswitch_3a2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1451
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1452
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1453
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1433
    :pswitch_3bc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1436
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 1437
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1438
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1439
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1421
    :pswitch_3da
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1424
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1425
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1426
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_46f

    .line 1407
    :pswitch_3f0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1410
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1411
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1412
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1413
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1414
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_46f

    .line 1393
    :pswitch_40d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1396
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1397
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1398
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1399
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_46f

    .line 1381
    :pswitch_42a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1384
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1385
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_46f

    .line 1369
    :pswitch_43f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1372
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1373
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_46f

    .line 1354
    :pswitch_458
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_46f

    .line 1339
    :pswitch_464
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_46f
    return-void

    :pswitch_data_470
    .packed-switch 0x1
        :pswitch_464
        :pswitch_458
        :pswitch_43f
        :pswitch_42a
        :pswitch_40d
        :pswitch_3f0
        :pswitch_3da
        :pswitch_3bc
        :pswitch_3a2
        :pswitch_384
        :pswitch_36a
        :pswitch_34c
        :pswitch_332
        :pswitch_318
        :pswitch_2fa
        :pswitch_2dc
        :pswitch_2c2
        :pswitch_2a8
        :pswitch_282
        :pswitch_25c
        :pswitch_236
        :pswitch_210
        :pswitch_1ea
        :pswitch_1c4
        :pswitch_1aa
        :pswitch_194
        :pswitch_17a
        :pswitch_15c
        :pswitch_13e
        :pswitch_118
        :pswitch_f2
        :pswitch_d4
    .end packed-switch

    :sswitch_data_4b4
    .sparse-switch
        0xf43484e -> :sswitch_c2
        0xf444247 -> :sswitch_ac
        0xf445343 -> :sswitch_9a
        0xf485348 -> :sswitch_47
        0xf494e54 -> :sswitch_3f
        0xf504e47 -> :sswitch_31
        0xf524546 -> :sswitch_1f
        0xf535953 -> :sswitch_17
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.6::IWifiNanIface"

    .line 1318
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

    .line 1325
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
