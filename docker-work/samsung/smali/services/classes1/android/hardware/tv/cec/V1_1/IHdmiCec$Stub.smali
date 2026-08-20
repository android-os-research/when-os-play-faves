.class public abstract Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;
.super Landroid/os/HwBinder;
.source "IHdmiCec.java"

# interfaces
.implements Landroid/hardware/tv/cec/V1_1/IHdmiCec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/cec/V1_1/IHdmiCec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 731
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

    .line 786
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 787
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 788
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 789
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

    .line 760
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
        0x63t
        -0x21t
        -0x25t
        0x43t
        0x3at
        -0x39t
        0x3ft
        -0x4et
        -0x41t
        0x4at
        0x44t
        -0x2et
        -0x53t
        -0x19t
        -0x49t
        -0x1et
        -0x77t
        -0x1ft
        0x55t
        -0x7dt
        0x52t
        0x6t
        -0x2ft
        -0x6dt
        -0x6at
        0x40t
        -0x2at
        -0x38t
        -0x73t
        0x20t
        -0x77t
        -0x6ct
    .end array-data

    :array_3c
    .array-data 1
        -0x6dt
        -0x78t
        0x50t
        0x62t
        0x1ct
        0x3ct
        0x5et
        -0xct
        0x26t
        -0x5ct
        -0x48t
        -0x72t
        0x75t
        0x2bt
        -0x57t
        -0x65t
        0x35t
        0x59t
        0x3t
        0x7et
        0x78t
        0x2at
        0x3dt
        -0x6dt
        -0x7at
        0x4t
        -0xdt
        -0x52t
        -0xbt
        -0x34t
        0xft
        0x1bt
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

    .line 739
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.tv.cec@1.1::IHdmiCec"

    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

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

    const-string p0, "android.hardware.tv.cec@1.1::IHdmiCec"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 796
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

    const-string p4, "android.hardware.tv.cec@1.1::IHdmiCec"

    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1f6

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_218

    goto/16 :goto_1f5

    .line 1108
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1f5

    .line 1097
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1100
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 1087
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->ping()V

    .line 1090
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 1074
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->setHALInstrumentation()V

    goto/16 :goto_1f5

    .line 1040
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1043
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1047
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1048
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1049
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1050
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1054
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 1056
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 1060
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1057
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 1064
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1066
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 1029
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1032
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 1017
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1021
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1022
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 1006
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1009
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 995
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback;

    move-result-object p1

    .line 998
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->setCallback_1_1(Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback;)V

    .line 999
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 982
    :pswitch_e2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    new-instance p1, Landroid/hardware/tv/cec/V1_1/CecMessage;

    invoke-direct {p1}, Landroid/hardware/tv/cec/V1_1/CecMessage;-><init>()V

    .line 985
    invoke-virtual {p1, p2}, Landroid/hardware/tv/cec/V1_1/CecMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 986
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->sendMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)I

    move-result p0

    .line 987
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 970
    :pswitch_fc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 973
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->addLogicalAddress_1_1(I)I

    move-result p0

    .line 974
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 958
    :pswitch_112
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 961
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->isConnected(I)Z

    move-result p0

    .line 962
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 964
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 946
    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 950
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->enableAudioReturnChannel(IZ)V

    .line 951
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 935
    :pswitch_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setLanguage(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 923
    :pswitch_150
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 927
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setOption(IZ)V

    .line 928
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 912
    :pswitch_166
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    move-result-object p0

    .line 915
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-static {p3, p0}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f5

    .line 901
    :pswitch_178
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getVendorId()I

    move-result p0

    .line 904
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f5

    .line 890
    :pswitch_189
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getCecVersion()I

    move-result p0

    .line 893
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f5

    .line 879
    :pswitch_19a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;

    move-result-object p1

    .line 882
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setCallback(Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;)V

    .line 883
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f5

    .line 866
    :pswitch_1af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    new-instance p1, Landroid/hardware/tv/cec/V1_0/CecMessage;

    invoke-direct {p1}, Landroid/hardware/tv/cec/V1_0/CecMessage;-><init>()V

    .line 869
    invoke-virtual {p1, p2}, Landroid/hardware/tv/cec/V1_0/CecMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 870
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I

    move-result p0

    .line 871
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 872
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f5

    .line 851
    :pswitch_1c8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    new-instance p1, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub$1;-><init>(Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    goto :goto_1f5

    .line 841
    :pswitch_1d4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->clearLogicalAddress()V

    .line 844
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f5

    .line 829
    :pswitch_1e1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 832
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->addLogicalAddress(I)I

    move-result p0

    .line 833
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1f5
    return-void

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1e1
        :pswitch_1d4
        :pswitch_1c8
        :pswitch_1af
        :pswitch_19a
        :pswitch_189
        :pswitch_178
        :pswitch_166
        :pswitch_150
        :pswitch_13e
        :pswitch_128
        :pswitch_112
        :pswitch_fc
        :pswitch_e2
        :pswitch_cc
    .end packed-switch

    :sswitch_data_218
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.tv.cec@1.1::IHdmiCec"

    .line 808
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

    .line 815
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Stub;->interfaceDescriptor()Ljava/lang/String;

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
