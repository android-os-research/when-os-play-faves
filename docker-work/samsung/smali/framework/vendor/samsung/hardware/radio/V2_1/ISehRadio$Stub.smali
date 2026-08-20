.class public abstract Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;
.super Landroid/os/HwBinder;
.source "ISehRadio.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_1/ISehRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/V2_1/ISehRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1188
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1191
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1205
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1243
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1244
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1245
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1246
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1247
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        0x6t
        -0x59t
        0x68t
        0x7et
        0x2t
        0xft
        -0x7et
        0x8t
        -0x1at
        -0xet
        0x9t
        -0x9t
        -0x61t
        -0x3et
        -0x3ct
        -0x5t
        0x69t
        -0x15t
        0x12t
        0xet
        -0x7ft
        -0x1at
        -0x53t
        -0x6t
        -0x15t
        0x1at
        -0x45t
        -0x6et
        -0x54t
        0x2dt
        -0x53t
        -0x71t
    .end array-data

    :array_3c
    .array-data 1
        0x68t
        0x4bt
        -0x5at
        0x4ft
        0x7bt
        -0x6ct
        0xct
        0x3et
        0x4ct
        -0xdt
        0x6dt
        -0x34t
        0x5et
        0x6ct
        0x11t
        -0x80t
        -0x46t
        -0x5dt
        0x5bt
        -0x6ct
        -0x22t
        -0x64t
        -0x30t
        -0x3ft
        -0x1ct
        -0x78t
        0x5dt
        0xft
        0x20t
        -0x2et
        0x7dt
        0x6bt
    .end array-data

    :array_50
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

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    const-string/jumbo v2, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1211
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1231
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1253
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1255
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 21
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string/jumbo v3, "vendor.samsung.hardware.radio@2.0::ISehRadio"

    sparse-switch p1, :sswitch_data_3be

    goto/16 :goto_3bc

    .line 1836
    :sswitch_14
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->notifySyspropsChanged()V

    .line 1839
    goto/16 :goto_3bc

    .line 1825
    :sswitch_1c
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1828
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1829
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1831
    goto/16 :goto_3bc

    .line 1815
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->ping()V

    .line 1818
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1820
    goto/16 :goto_3bc

    .line 1810
    :sswitch_3c
    goto/16 :goto_3bc

    .line 1802
    :sswitch_3e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setHALInstrumentation()V

    .line 1805
    goto/16 :goto_3bc

    .line 1768
    :sswitch_46
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1771
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1773
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1775
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1776
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1777
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1778
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1779
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_6d
    if-ge v4, v3, :cond_8e

    .line 1781
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1782
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1784
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_86

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_86

    .line 1788
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1789
    nop

    .line 1779
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    .line 1785
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_86
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1792
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_8e
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1794
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1796
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1797
    goto/16 :goto_3bc

    .line 1757
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_9b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1760
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1761
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1763
    goto/16 :goto_3bc

    .line 1745
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ad
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1748
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1749
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1750
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1752
    goto/16 :goto_3bc

    .line 1734
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1737
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1738
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1740
    goto/16 :goto_3bc

    .line 1725
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d5
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1728
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getNrIconType(I)V

    .line 1729
    goto/16 :goto_3bc

    .line 1716
    .end local v0    # "serial":I
    :sswitch_e1
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1719
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getNrMode(I)V

    .line 1720
    goto/16 :goto_3bc

    .line 1706
    .end local v0    # "serial":I
    :sswitch_ed
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1709
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1710
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setNrMode(II)V

    .line 1711
    goto/16 :goto_3bc

    .line 1696
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_fd
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1699
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1700
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 1701
    goto/16 :goto_3bc

    .line 1686
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_10d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1689
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1690
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 1691
    goto/16 :goto_3bc

    .line 1675
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_11d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1679
    .local v1, "enabled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1680
    .local v2, "roamingEnabled":Z
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setMobileDataSetting(IZZ)V

    .line 1681
    goto/16 :goto_3bc

    .line 1663
    .end local v0    # "serial":I
    .end local v1    # "enabled":Z
    .end local v2    # "roamingEnabled":Z
    :sswitch_131
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1666
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1667
    .local v1, "allow":Z
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;-><init>()V

    .line 1668
    .local v2, "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    invoke-virtual {v2, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1669
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setDataAllowed(IZLvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;)V

    .line 1670
    goto/16 :goto_3bc

    .line 1652
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    .end local v2    # "param":Lvendor/samsung/hardware/radio/V2_0/SehAllowDataParam;
    :sswitch_149
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1655
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;-><init>()V

    .line 1656
    .local v1, "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1657
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/V2_0/SehCsgInfo;)V

    .line 1658
    goto/16 :goto_3bc

    .line 1643
    .end local v0    # "serial":I
    .end local v1    # "csgInfo":Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;
    :sswitch_15d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1646
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getCsgList(I)V

    .line 1647
    goto/16 :goto_3bc

    .line 1632
    .end local v0    # "serial":I
    :sswitch_169
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1635
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;-><init>()V

    .line 1636
    .local v1, "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1637
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->writeSmsToSim(ILvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V

    .line 1638
    goto/16 :goto_3bc

    .line 1622
    .end local v0    # "serial":I
    .end local v1    # "arg":Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;
    :sswitch_17d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1625
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1626
    .local v1, "index":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->readSmsFromSim(II)V

    .line 1627
    goto/16 :goto_3bc

    .line 1613
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_18d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1616
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getStoredMsgCountFromSim(I)V

    .line 1617
    goto/16 :goto_3bc

    .line 1602
    .end local v0    # "serial":I
    :sswitch_199
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1605
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 1606
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1607
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 1608
    goto/16 :goto_3bc

    .line 1591
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_1ad
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1594
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1595
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1596
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1597
    goto/16 :goto_3bc

    .line 1580
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_1c1
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1583
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1584
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1585
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1586
    goto/16 :goto_3bc

    .line 1569
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1d5
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1572
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 1573
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1574
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 1575
    goto/16 :goto_3bc

    .line 1560
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_1e9
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1563
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getAtr(I)V

    .line 1564
    goto/16 :goto_3bc

    .line 1550
    .end local v0    # "serial":I
    :sswitch_1f5
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1553
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1554
    .local v1, "command":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->emergencyControl(II)V

    .line 1555
    goto/16 :goto_3bc

    .line 1541
    .end local v0    # "serial":I
    .end local v1    # "command":I
    :sswitch_205
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1544
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->emergencySearch(I)V

    .line 1545
    goto/16 :goto_3bc

    .line 1532
    .end local v0    # "serial":I
    :sswitch_211
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1535
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getCellBroadcastConfig(I)V

    .line 1536
    goto/16 :goto_3bc

    .line 1517
    .end local v0    # "serial":I
    :sswitch_21d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1520
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1521
    .local v11, "command":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1522
    .local v12, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1523
    .local v13, "index":I
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    move-object v14, v0

    .line 1524
    .local v14, "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    invoke-virtual {v14, v8}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1526
    .local v15, "pin2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    .line 1527
    goto/16 :goto_3bc

    .line 1506
    .end local v10    # "serial":I
    .end local v11    # "command":I
    .end local v12    # "fileId":I
    .end local v13    # "index":I
    .end local v14    # "adnRecord":Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;
    .end local v15    # "pin2":Ljava/lang/String;
    :sswitch_24a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1509
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1510
    .local v1, "fileId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1511
    .local v2, "index":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getPhonebookEntry(III)V

    .line 1512
    goto/16 :goto_3bc

    .line 1495
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    .end local v2    # "index":I
    :sswitch_25e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1498
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1499
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1500
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1501
    goto/16 :goto_3bc

    .line 1484
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_272
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1487
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "oldPass":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, "newPass":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    .line 1490
    goto/16 :goto_3bc

    .line 1474
    .end local v0    # "serial":I
    .end local v1    # "oldPass":Ljava/lang/String;
    .end local v2    # "newPass":Ljava/lang/String;
    :sswitch_286
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1477
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->supplyIccPersonalization(ILjava/lang/String;)V

    .line 1479
    goto/16 :goto_3bc

    .line 1463
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    :sswitch_296
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1466
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1467
    .local v1, "numOfLockType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1468
    .local v2, "lockType":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getSimLockInfo(III)V

    .line 1469
    goto/16 :goto_3bc

    .line 1454
    .end local v0    # "serial":I
    .end local v1    # "numOfLockType":I
    .end local v2    # "lockType":I
    :sswitch_2aa
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1457
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setSimInitEvent(I)V

    .line 1458
    goto/16 :goto_3bc

    .line 1444
    .end local v0    # "serial":I
    :sswitch_2b6
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1447
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1448
    .local v1, "mode":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setSimOnOff(II)V

    .line 1449
    goto/16 :goto_3bc

    .line 1435
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_2c6
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1438
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getUsimPhonebookCapability(I)V

    .line 1439
    goto/16 :goto_3bc

    .line 1425
    .end local v0    # "serial":I
    :sswitch_2d2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1428
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1429
    .local v1, "fileId":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getPhonebookStorageInfo(II)V

    .line 1430
    goto/16 :goto_3bc

    .line 1416
    .end local v0    # "serial":I
    .end local v1    # "fileId":I
    :sswitch_2e2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1419
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getCnap(I)V

    .line 1420
    goto/16 :goto_3bc

    .line 1406
    .end local v0    # "serial":I
    :sswitch_2ee
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1409
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1410
    .local v1, "on":I
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setDisable2g(II)V

    .line 1411
    goto/16 :goto_3bc

    .line 1397
    .end local v0    # "serial":I
    .end local v1    # "on":I
    :sswitch_2fe
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1400
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getDisable2g(I)V

    .line 1401
    goto/16 :goto_3bc

    .line 1386
    .end local v0    # "serial":I
    :sswitch_30a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1389
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;-><init>()V

    .line 1390
    .local v1, "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1391
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;)V

    .line 1392
    goto/16 :goto_3bc

    .line 1375
    .end local v0    # "serial":I
    .end local v1    # "encodedUssd":Lvendor/samsung/hardware/radio/V2_0/SehEncodedUssd;
    :sswitch_31e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1378
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;-><init>()V

    .line 1379
    .local v1, "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1380
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;)V

    .line 1381
    goto/16 :goto_3bc

    .line 1366
    .end local v0    # "serial":I
    .end local v1    # "info":Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;
    :sswitch_332
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1369
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getPreferredNetworkList(I)V

    .line 1370
    goto/16 :goto_3bc

    .line 1356
    .end local v0    # "serial":I
    :sswitch_33e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1359
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Lvendor/samsung/hardware/radio/V2_0/SehImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1360
    .local v1, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setImsCallList(ILjava/util/ArrayList;)V

    .line 1361
    goto :goto_3bc

    .line 1347
    .end local v0    # "serial":I
    .end local v1    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/radio/V2_0/SehImsCall;>;"
    :sswitch_34d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1350
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getAvailableNetworks(I)V

    .line 1351
    goto :goto_3bc

    .line 1338
    .end local v0    # "serial":I
    :sswitch_358
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1341
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getImsRegistrationState(I)V

    .line 1342
    goto :goto_3bc

    .line 1329
    .end local v0    # "serial":I
    :sswitch_363
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1332
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getCurrentCalls(I)V

    .line 1333
    goto :goto_3bc

    .line 1318
    .end local v0    # "serial":I
    :sswitch_36e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1321
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/samsung/hardware/radio/V2_0/SehDial;

    invoke-direct {v1}, Lvendor/samsung/hardware/radio/V2_0/SehDial;-><init>()V

    .line 1322
    .local v1, "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    invoke-virtual {v1, v8}, Lvendor/samsung/hardware/radio/V2_0/SehDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1323
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->dial(ILvendor/samsung/hardware/radio/V2_0/SehDial;)V

    .line 1324
    goto :goto_3bc

    .line 1307
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Lvendor/samsung/hardware/radio/V2_0/SehDial;
    :sswitch_381
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1310
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1312
    .local v2, "subState":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    .line 1313
    goto :goto_3bc

    .line 1298
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "subState":I
    :sswitch_394
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1301
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->getIccCardStatus(I)V

    .line 1302
    goto :goto_3bc

    .line 1286
    .end local v0    # "serial":I
    :sswitch_39f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    .line 1289
    .local v0, "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;

    move-result-object v1

    .line 1290
    .local v1, "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    invoke-virtual {v7, v0, v1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;)V

    .line 1291
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1293
    nop

    .line 1848
    .end local v0    # "radioResponse":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .end local v1    # "radioIndication":Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication;
    :goto_3bc
    return-void

    nop

    :sswitch_data_3be
    .sparse-switch
        0x1 -> :sswitch_39f
        0x2 -> :sswitch_394
        0x3 -> :sswitch_381
        0x4 -> :sswitch_36e
        0x5 -> :sswitch_363
        0x6 -> :sswitch_358
        0x7 -> :sswitch_34d
        0x8 -> :sswitch_33e
        0x9 -> :sswitch_332
        0xa -> :sswitch_31e
        0xb -> :sswitch_30a
        0xc -> :sswitch_2fe
        0xd -> :sswitch_2ee
        0xe -> :sswitch_2e2
        0xf -> :sswitch_2d2
        0x10 -> :sswitch_2c6
        0x11 -> :sswitch_2b6
        0x12 -> :sswitch_2aa
        0x13 -> :sswitch_296
        0x14 -> :sswitch_286
        0x15 -> :sswitch_272
        0x16 -> :sswitch_25e
        0x17 -> :sswitch_24a
        0x18 -> :sswitch_21d
        0x19 -> :sswitch_211
        0x1a -> :sswitch_205
        0x1b -> :sswitch_1f5
        0x1c -> :sswitch_1e9
        0x1d -> :sswitch_1d5
        0x1e -> :sswitch_1c1
        0x1f -> :sswitch_1ad
        0x20 -> :sswitch_199
        0x21 -> :sswitch_18d
        0x22 -> :sswitch_17d
        0x23 -> :sswitch_169
        0x24 -> :sswitch_15d
        0x25 -> :sswitch_149
        0x26 -> :sswitch_131
        0x27 -> :sswitch_11d
        0x28 -> :sswitch_10d
        0x29 -> :sswitch_fd
        0x2a -> :sswitch_ed
        0x2b -> :sswitch_e1
        0x2c -> :sswitch_d5
        0xf43484e -> :sswitch_c3
        0xf444247 -> :sswitch_ad
        0xf445343 -> :sswitch_9b
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf4c5444 -> :sswitch_3c
        0xf504e47 -> :sswitch_2e
        0xf524546 -> :sswitch_1c
        0xf535953 -> :sswitch_14
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1237
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1265
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.1::ISehRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1266
    return-object p0

    .line 1268
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1227
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/V2_1/ISehRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1259
    const/4 v0, 0x1

    return v0
.end method
