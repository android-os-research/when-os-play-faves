.class public abstract Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;
.super Landroid/os/HwBinder;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 674
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

    .line 729
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 730
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 731
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 732
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

    .line 703
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
        -0x8t
        0x58t
        0x9t
        0x1bt
        0x10t
        -0x9t
        -0x2bt
        -0x6et
        0x7bt
        -0x1at
        0x5t
        0x73t
        -0x40t
        0x6dt
        -0xct
        -0x80t
        0x52t
        0x75t
        -0x2dt
        0x72t
        0x26t
        -0x45t
        -0x4ct
        0x1at
        0x73t
        0x21t
        -0x70t
        -0x41t
        -0x48t
        0x14t
        0x57t
        -0x14t
    .end array-data

    :array_3c
    .array-data 1
        -0x26t
        0x33t
        0x23t
        0x44t
        0x3t
        -0x1t
        0x5dt
        0x60t
        -0xdt
        0x47t
        0x37t
        0x11t
        -0x6ft
        0x7bt
        -0x67t
        0x48t
        -0x1at
        0x48t
        0x4at
        0x42t
        0x60t
        -0x4bt
        0x24t
        0x7at
        -0x33t
        -0x51t
        -0x4ft
        0x11t
        0x19t
        0x3at
        -0x63t
        -0x1et
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

    .line 682
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    const-string v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

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

    const-string p0, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 739
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

    const-string p4, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1b0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1ce

    goto/16 :goto_1ae

    .line 1017
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1ae

    .line 1006
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1009
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 996
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->ping()V

    .line 999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 983
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->setHALInstrumentation()V

    goto/16 :goto_1ae

    .line 949
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 954
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 956
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 957
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 958
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 959
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 963
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 965
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 969
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 966
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 973
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 975
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 938
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 941
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 942
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 926
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 930
    invoke-virtual {p0, p1, p2}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 931
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 915
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 918
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    :pswitch_ca
    const-string p1, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    .line 904
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-interface {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;->primaryDisplayOrientation()Landroid/hardware/configstore/V1_1/OptionalDisplayOrientation;

    move-result-object p0

    .line 907
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_1/OptionalDisplayOrientation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 893
    :pswitch_de
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 896
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 882
    :pswitch_f0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 885
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 871
    :pswitch_102
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 874
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 860
    :pswitch_114
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 849
    :pswitch_126
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;

    move-result-object p0

    .line 852
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ae

    .line 838
    :pswitch_138
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 841
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 827
    :pswitch_149
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 830
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 816
    :pswitch_15a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 805
    :pswitch_16b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 808
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 794
    :pswitch_17c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 797
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 783
    :pswitch_18d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 786
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 787
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ae

    .line 772
    :pswitch_19e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 775
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1ae
    return-void

    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_19e
        :pswitch_18d
        :pswitch_17c
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_126
        :pswitch_114
        :pswitch_102
        :pswitch_f0
        :pswitch_de
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1ce
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

    const-string v0, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    .line 751
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

    .line 758
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

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
