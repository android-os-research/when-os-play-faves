.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;
.super Landroid/os/HwBinder;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 799
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

    .line 852
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 853
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 854
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 855
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

    .line 827
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
        -0x29t
        0x4t
        0x64t
        -0x3bt
        0x17t
        -0x5ct
        -0x5ft
        -0x4bt
        0x16t
        0x77t
        0x30t
        -0x7ct
        0x37t
        0x75t
        -0x57t
        0x7ft
        0x45t
        0x51t
        0x2t
        -0x6ft
        -0x62t
        -0x6ct
        0x5bt
        0x4t
        -0x9t
        0x17t
        -0x47t
        -0x26t
        0x39t
        0xct
        0xft
        0x39t
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

    .line 807
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

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

    const-string p0, "android.hardware.broadcastradio@2.0::ITunerSession"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 862
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

    const-string p4, "android.hardware.broadcastradio@2.0::ITunerSession"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1aa

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1c4

    goto/16 :goto_1a8

    .line 1131
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a8

    .line 1120
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1123
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1110
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->ping()V

    .line 1113
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1097
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a8

    .line 1063
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1066
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1070
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1071
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1072
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1073
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1077
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1079
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1083
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1080
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1087
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1089
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1052
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1055
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1056
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1040
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1044
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1045
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1029
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1019
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-interface {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V

    .line 1022
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 1007
    :pswitch_d8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1010
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1011
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-static {p3, p0}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 995
    :pswitch_ee
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 998
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 999
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-static {p3, p0}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 982
    :pswitch_104
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 986
    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result p0

    .line 987
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a8

    .line 966
    :pswitch_11e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 969
    new-instance p2, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V

    goto/16 :goto_1a8

    .line 956
    :pswitch_12f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-interface {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V

    .line 959
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a8

    .line 943
    :pswitch_13c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 946
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readFromParcel(Landroid/os/HwParcel;)V

    .line 947
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result p0

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a8

    .line 933
    :pswitch_155
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-interface {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->cancel()V

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a8

    .line 921
    :pswitch_162
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 924
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result p0

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 927
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a8

    .line 908
    :pswitch_177
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 912
    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result p0

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a8

    .line 895
    :pswitch_190
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 898
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 899
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p0

    .line 900
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 901
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1a8
    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_190
        :pswitch_177
        :pswitch_162
        :pswitch_155
        :pswitch_13c
        :pswitch_12f
        :pswitch_11e
        :pswitch_104
        :pswitch_ee
        :pswitch_d8
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1c4
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

    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 874
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

    .line 881
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

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
