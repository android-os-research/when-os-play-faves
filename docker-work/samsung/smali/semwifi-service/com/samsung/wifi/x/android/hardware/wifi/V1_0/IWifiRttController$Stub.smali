.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttController.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 812
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

    .line 865
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 866
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 867
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 868
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

    .line 840
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
        0x76t
        0x6et
        -0x69t
        0x65t
        -0xbt
        -0x37t
        -0x39t
        0x59t
        -0x4et
        -0x59t
        0x63t
        -0x3et
        0x28t
        -0x7dt
        0x53t
        -0x5t
        0x5dt
        -0x11t
        -0xdt
        0x38t
        -0x64t
        0x2ct
        -0x3et
        -0x71t
        -0x7ft
        -0x29t
        -0x64t
        -0x6dt
        -0x69t
        0x4t
        -0x32t
        -0x75t
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

    .line 820
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

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

    const-string p0, "android.hardware.wifi@1.0::IWifiRttController"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 875
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    const-wide/16 v2, 0x8

    const-string v4, "android.hardware.wifi@1.0::IWifiRttController"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_1ec

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_204

    goto/16 :goto_1eb

    .line 1170
    :sswitch_14
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1eb

    .line 1159
    :sswitch_1c
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1162
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1149
    :sswitch_2e
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->ping()V

    .line 1152
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1136
    :sswitch_3c
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->setHALInstrumentation()V

    goto/16 :goto_1eb

    .line 1102
    :sswitch_44
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1105
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1110
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1111
    invoke-virtual {v1, v2, v3, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1112
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_68
    if-ge v10, v4, :cond_88

    mul-int/lit8 v3, v10, 0x20

    int-to-long v5, v3

    .line 1116
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_80

    .line 1118
    array-length v7, v3

    const/16 v8, 0x20

    if-ne v7, v8, :cond_80

    .line 1122
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_68

    .line 1119
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    const-wide/16 v3, 0x0

    .line 1126
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1128
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1091
    :sswitch_95
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1095
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1079
    :sswitch_a7
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1083
    invoke-virtual {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1084
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1068
    :sswitch_bd
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1071
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1056
    :pswitch_cf
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1059
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1060
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1039
    :pswitch_e5
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1042
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 1043
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1045
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 1046
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1047
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1048
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 1024
    :pswitch_10f
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$3;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    goto/16 :goto_1eb

    .line 1010
    :pswitch_11c
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1013
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    .line 1014
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1015
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLcr(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1016
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 996
    :pswitch_13a
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 999
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 1000
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1001
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLci(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1002
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1003
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1eb

    .line 981
    :pswitch_158
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$2;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    goto/16 :goto_1eb

    .line 948
    :pswitch_165
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 951
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x10

    .line 953
    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 955
    invoke-virtual {v4, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v2, v13, 0x6

    int-to-long v2, v2

    .line 957
    invoke-virtual {v4}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p2

    .line 956
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 960
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v2, v10

    :goto_18f
    if-ge v2, v13, :cond_1a0

    const/4 v3, 0x6

    new-array v4, v3, [B

    mul-int/lit8 v5, v2, 0x6

    int-to-long v5, v5

    .line 965
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 968
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18f

    .line 972
    :cond_1a0
    invoke-interface {p0, v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 973
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 974
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1eb

    .line 935
    :pswitch_1ae
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 938
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 939
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 940
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1eb

    .line 923
    :pswitch_1c7
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 926
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 927
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1eb

    .line 908
    :pswitch_1e0
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$1;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getBoundIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    :goto_1eb
    return-void

    :pswitch_data_1ec
    .packed-switch 0x1
        :pswitch_1e0
        :pswitch_1c7
        :pswitch_1ae
        :pswitch_165
        :pswitch_158
        :pswitch_13a
        :pswitch_11c
        :pswitch_10f
        :pswitch_e5
        :pswitch_cf
    .end packed-switch

    :sswitch_data_204
    .sparse-switch
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf504e47 -> :sswitch_2e
        0xf524546 -> :sswitch_1c
        0xf535953 -> :sswitch_14
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

    .line 887
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

    .line 894
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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
