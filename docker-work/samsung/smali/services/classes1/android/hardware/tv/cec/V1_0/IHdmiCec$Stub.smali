.class public abstract Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;
.super Landroid/os/HwBinder;
.source "IHdmiCec.java"

# interfaces
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/cec/V1_0/IHdmiCec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 765
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

    .line 818
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 819
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 820
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 821
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

    .line 793
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

    .line 773
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

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

    const-string p0, "android.hardware.tv.cec@1.0::IHdmiCec"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 828
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

    const-string p4, "android.hardware.tv.cec@1.0::IHdmiCec"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1ae

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1ca

    goto/16 :goto_1ad

    .line 1104
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1ad

    .line 1093
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1096
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 1083
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->ping()V

    .line 1086
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 1070
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->setHALInstrumentation()V

    goto/16 :goto_1ad

    .line 1036
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1043
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1044
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1045
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1046
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1050
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1052
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1056
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1053
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1060
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1062
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 1025
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1028
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 1013
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1017
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1018
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 1002
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 990
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 993
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->isConnected(I)Z

    move-result p0

    .line 994
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 995
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 978
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 982
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->enableAudioReturnChannel(IZ)V

    .line 983
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 967
    :pswitch_f6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 970
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setLanguage(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 955
    :pswitch_108
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 959
    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setOption(IZ)V

    .line 960
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 944
    :pswitch_11e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    move-result-object p0

    .line 947
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-static {p3, p0}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1ad

    .line 933
    :pswitch_130
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getVendorId()I

    move-result p0

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 938
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ad

    .line 922
    :pswitch_141
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getCecVersion()I

    move-result p0

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 927
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ad

    .line 911
    :pswitch_152
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;

    move-result-object p1

    .line 914
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setCallback(Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;)V

    .line 915
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ad

    .line 898
    :pswitch_167
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    new-instance p1, Landroid/hardware/tv/cec/V1_0/CecMessage;

    invoke-direct {p1}, Landroid/hardware/tv/cec/V1_0/CecMessage;-><init>()V

    .line 901
    invoke-virtual {p1, p2}, Landroid/hardware/tv/cec/V1_0/CecMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 902
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I

    move-result p0

    .line 903
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 905
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ad

    .line 883
    :pswitch_180
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    new-instance p1, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub$1;-><init>(Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    goto :goto_1ad

    .line 873
    :pswitch_18c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->clearLogicalAddress()V

    .line 876
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 877
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1ad

    .line 861
    :pswitch_199
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 864
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->addLogicalAddress(I)I

    move-result p0

    .line 865
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 867
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1ad
    return-void

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_199
        :pswitch_18c
        :pswitch_180
        :pswitch_167
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11e
        :pswitch_108
        :pswitch_f6
        :pswitch_e0
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1ca
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

    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 840
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

    .line 847
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Stub;->interfaceDescriptor()Ljava/lang/String;

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
