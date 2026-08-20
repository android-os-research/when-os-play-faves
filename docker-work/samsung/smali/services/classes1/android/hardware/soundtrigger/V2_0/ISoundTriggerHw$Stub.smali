.class public abstract Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1622
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

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 1675
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1676
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1677
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1678
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

    .line 1650
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
        0x5bt
        -0x11t
        -0x40t
        0x19t
        -0x35t
        -0x17t
        0x49t
        0x53t
        0x66t
        0x1et
        0x2ct
        -0x25t
        -0x6bt
        -0x1dt
        -0x31t
        0x64t
        -0xbt
        -0x1bt
        0x65t
        -0x3et
        -0x6ct
        0x3t
        -0x1ft
        -0x3et
        -0x26t
        -0x14t
        -0x3et
        -0x42t
        0x44t
        -0x20t
        -0x5bt
        0x5ct
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

    .line 1630
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

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

    const-string p0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1685
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

    const-string p4, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_17c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_18e

    goto/16 :goto_17b

    .line 1924
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->notifySyspropsChanged()V

    goto/16 :goto_17b

    .line 1913
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1916
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1917
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1918
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1903
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->ping()V

    .line 1906
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1890
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->setHALInstrumentation()V

    goto/16 :goto_17b

    .line 1856
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1859
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1861
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1863
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1864
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1865
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1866
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1870
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1872
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1876
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1873
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1880
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1882
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1845
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1848
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1849
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1833
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1837
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1838
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1822
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1825
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1826
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1811
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopAllRecognitions()I

    move-result p0

    .line 1814
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1815
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1799
    :pswitch_dc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1802
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    .line 1803
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1804
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17b

    .line 1783
    :pswitch_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1786
    new-instance p4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1787
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v1

    .line 1789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1790
    invoke-interface {p0, p1, p4, v1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 1791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1792
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_17b

    .line 1771
    :pswitch_11b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1774
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    .line 1775
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1776
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_17b

    .line 1752
    :pswitch_130
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1755
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 1757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1758
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$3;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    goto :goto_17b

    .line 1733
    :pswitch_150
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 1736
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 1738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1739
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$2;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    goto :goto_17b

    .line 1718
    :pswitch_170
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub$1;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    :goto_17b
    return-void

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_170
        :pswitch_150
        :pswitch_130
        :pswitch_11b
        :pswitch_f2
        :pswitch_dc
        :pswitch_ca
    .end packed-switch

    :sswitch_data_18e
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_35
        0xf504e47 -> :sswitch_27
        0xf524546 -> :sswitch_15
        0xf535953 -> :sswitch_d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 1697
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

    .line 1704
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

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
