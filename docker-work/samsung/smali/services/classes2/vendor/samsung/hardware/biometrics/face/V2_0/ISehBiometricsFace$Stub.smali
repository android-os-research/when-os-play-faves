.class public abstract Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$IraeIDJnBGHGV8EM6Y6Pjovchj8(Landroid/os/HwParcel;)Landroid/os/HidlMemory;
    .registers 1

    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 1344
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;
    .registers 2

    .line 1742
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1744
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 1399
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1400
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1401
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1402
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

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

    .line 1373
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_28

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_50

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_28
    .array-data 1
        0x8t
        0x1ct
        0x60t
        -0x44t
        -0x65t
        -0x9t
        -0x50t
        0x5ft
        0x35t
        -0x2bt
        0x47t
        -0x75t
        -0x3et
        0x6bt
        -0x3ft
        0x6dt
        -0x5ft
        -0x80t
        -0x3t
        -0x21t
        0x77t
        -0x79t
        0x40t
        0x36t
        0x76t
        0xct
        0x4ft
        0x6ct
        -0xet
        0x7et
        -0x16t
        0x44t
    .end array-data

    :array_3c
    .array-data 1
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
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

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1409
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

    const-string p4, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_3a0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3e8

    goto/16 :goto_39e

    .line 1965
    :sswitch_10
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->notifySyspropsChanged()V

    goto/16 :goto_39e

    .line 1954
    :sswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1957
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1958
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1944
    :sswitch_2a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->ping()V

    .line 1947
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1931
    :sswitch_38
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->setHALInstrumentation()V

    goto/16 :goto_39e

    .line 1897
    :sswitch_40
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1900
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1902
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1904
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1905
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1906
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1907
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_66
    if-ge v1, p2, :cond_86

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1911
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7e

    .line 1913
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7e

    .line 1917
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 1914
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    const-wide/16 v0, 0x0

    .line 1921
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1923
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1886
    :sswitch_93
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1889
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1890
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1874
    :sswitch_a5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1878
    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1879
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1863
    :sswitch_bb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1866
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1867
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1850
    :pswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1854
    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(ILjava/util/ArrayList;)I

    move-result p0

    .line 1855
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1856
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1857
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1834
    :pswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1837
    new-instance p2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;

    invoke-direct {p2, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V

    goto/16 :goto_39e

    .line 1819
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    new-instance p1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetFaceTagList(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;)V

    goto/16 :goto_39e

    .line 1807
    :pswitch_105
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1810
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetSecurityLevel(I)I

    move-result p0

    .line 1811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1812
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1792
    :pswitch_11b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    new-instance p1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$1;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$1;-><init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    goto/16 :goto_39e

    .line 1781
    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetServicePid()I

    move-result p0

    .line 1784
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1785
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1768
    :pswitch_13a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1772
    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehConfigurePreview(ILjava/util/ArrayList;)I

    move-result p0

    .line 1773
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1774
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1756
    :pswitch_154
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1759
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehFinishTaInstallation(Ljava/util/ArrayList;)I

    move-result p0

    .line 1760
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1761
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1738
    :pswitch_16a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    new-instance p1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$$ExternalSyntheticLambda0;-><init>()V

    .line 1746
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/HidlMemory;

    .line 1747
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehInstallTaDataChunk(Landroid/os/HidlMemory;)I

    move-result p0

    .line 1748
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1749
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1727
    :pswitch_187
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPrepareTaInstallation()I

    move-result p0

    .line 1730
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1731
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1715
    :pswitch_199
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1718
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    move-result p0

    .line 1719
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1720
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1704
    :pswitch_1af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetEngineVersion()Ljava/lang/String;

    move-result-object p0

    .line 1707
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1708
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1693
    :pswitch_1c1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    move-result-object p0

    .line 1696
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1697
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1682
    :pswitch_1d3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result p0

    .line 1685
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1686
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1671
    :pswitch_1e5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result p0

    .line 1674
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1660
    :pswitch_1f7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    move-result p0

    .line 1663
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1664
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1649
    :pswitch_209
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    move-result p0

    .line 1652
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1638
    :pswitch_21b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    move-result p0

    .line 1641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1642
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1624
    :pswitch_22d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1629
    invoke-interface {p0, v2, v3, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result p0

    .line 1630
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1612
    :pswitch_24b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object p1

    .line 1615
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1616
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1617
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1600
    :pswitch_265
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1603
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    move-result p0

    .line 1604
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1605
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1589
    :pswitch_27b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()I

    move-result p0

    .line 1592
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1593
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1577
    :pswitch_28d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 1580
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p0

    .line 1581
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1582
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1565
    :pswitch_2a3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1568
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result p0

    .line 1569
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1570
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1554
    :pswitch_2b9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result p0

    .line 1557
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1558
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1543
    :pswitch_2cb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result p0

    .line 1546
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1547
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1532
    :pswitch_2dd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1535
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1536
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1519
    :pswitch_2ef
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1523
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object p0

    .line 1524
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1525
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_39e

    .line 1504
    :pswitch_309
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1509
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1510
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p0

    .line 1511
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1512
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_39e

    .line 1493
    :pswitch_32a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result p0

    .line 1496
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1497
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_39e

    .line 1479
    :pswitch_33b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1482
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1484
    invoke-interface {p0, p1, p4, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    .line 1485
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_39e

    .line 1467
    :pswitch_358
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1470
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1471
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1472
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_39e

    .line 1454
    :pswitch_36d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1458
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    move-result p0

    .line 1459
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1460
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_39e

    .line 1442
    :pswitch_386
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object p1

    .line 1445
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1446
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1447
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1448
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_39e
    return-void

    nop

    :pswitch_data_3a0
    .packed-switch 0x1
        :pswitch_386
        :pswitch_36d
        :pswitch_358
        :pswitch_33b
        :pswitch_32a
        :pswitch_309
        :pswitch_2ef
        :pswitch_2dd
        :pswitch_2cb
        :pswitch_2b9
        :pswitch_2a3
        :pswitch_28d
        :pswitch_27b
        :pswitch_265
        :pswitch_24b
        :pswitch_22d
        :pswitch_21b
        :pswitch_209
        :pswitch_1f7
        :pswitch_1e5
        :pswitch_1d3
        :pswitch_1c1
        :pswitch_1af
        :pswitch_199
        :pswitch_187
        :pswitch_16a
        :pswitch_154
        :pswitch_13a
        :pswitch_128
        :pswitch_11b
        :pswitch_105
        :pswitch_f8
        :pswitch_e7
        :pswitch_cd
    .end packed-switch

    :sswitch_data_3e8
    .sparse-switch
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    :cond_a
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

    .line 1428
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

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
