.class public abstract Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;
.super Landroid/os/HwBinder;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 750
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

    .line 803
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 804
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 805
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 806
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

    .line 778
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

    .line 758
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

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

    const-string p0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 813
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

    packed-switch p1, :pswitch_data_19c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1b8

    goto/16 :goto_19a

    .line 1080
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->notifySyspropsChanged()V

    goto/16 :goto_19a

    .line 1069
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 1059
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->ping()V

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 1046
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->setHALInstrumentation()V

    goto/16 :goto_19a

    .line 1012
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1015
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1019
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1020
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1021
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1022
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1026
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1028
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1032
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1029
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1036
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 1001
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1004
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 989
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 992
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 993
    invoke-virtual {p0, p1, p2}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 994
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 995
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 978
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 981
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 982
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 983
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 967
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 956
    :pswitch_dc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 959
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 945
    :pswitch_ee
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 934
    :pswitch_100
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 937
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 938
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 923
    :pswitch_112
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;

    move-result-object p0

    .line 926
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 927
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_19a

    .line 912
    :pswitch_124
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 915
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 901
    :pswitch_135
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 904
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 890
    :pswitch_146
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 893
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 879
    :pswitch_157
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 882
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 868
    :pswitch_168
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p0

    .line 871
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 872
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 857
    :pswitch_179
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 860
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_19a

    .line 846
    :pswitch_18a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-interface {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p0

    .line 849
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    invoke-virtual {p0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_19a
    return-void

    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_179
        :pswitch_168
        :pswitch_157
        :pswitch_146
        :pswitch_135
        :pswitch_124
        :pswitch_112
        :pswitch_100
        :pswitch_ee
        :pswitch_dc
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1b8
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

    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    .line 825
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

    .line 832
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

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
