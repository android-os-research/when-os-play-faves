.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISehSupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;
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
        0x7dt
        0x40t
        -0x6ct
        -0x6at
        0x19t
        -0x36t
        -0x35t
        -0x65t
        -0x3t
        -0x7et
        -0x2at
        -0x3ft
        0x7dt
        -0x17t
        -0x12t
        0x51t
        -0x23t
        0x64t
        0x72t
        0x62t
        -0x60t
        -0x3ct
        0x60t
        0x43t
        -0x6ct
        0x11t
        -0xct
        0x9t
        -0x16t
        0x23t
        -0x74t
        -0x18t
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

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIfaceCallback"

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

    const-string p0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIfaceCallback"

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
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x8

    const/16 v5, 0x20

    const-wide/16 v6, 0x6

    const-string v8, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIfaceCallback"

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    packed-switch p1, :pswitch_data_1ca

    const/4 v6, 0x0

    const-string v7, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1dc

    goto/16 :goto_1c8

    .line 1160
    :sswitch_1c
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1c8

    .line 1149
    :sswitch_24
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1152
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1153
    invoke-virtual {v0, v2}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1139
    :sswitch_36
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->ping()V

    .line 1142
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1126
    :sswitch_44
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_1c8

    .line 1092
    :sswitch_4c
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1095
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    new-instance v1, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v1, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 1099
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1100
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 1101
    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1102
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v7, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_70
    if-ge v6, v7, :cond_8e

    mul-int/lit8 v4, v6, 0x20

    int-to-long v11, v4

    .line 1106
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_86

    .line 1108
    array-length v8, v4

    if-ne v8, v5, :cond_86

    .line 1112
    invoke-virtual {v3, v11, v12, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 1109
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_8e
    invoke-virtual {v1, v9, v10, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1118
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1081
    :sswitch_99
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1069
    :sswitch_ab
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1073
    invoke-virtual {v0, v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1074
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1058
    :sswitch_c1
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1061
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 1040
    :pswitch_d3
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 1044
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1047
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onApplicationDataReceived([BLjava/lang/String;)V

    goto/16 :goto_1c8

    .line 1031
    :pswitch_e8
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onGoPs(Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 1022
    :pswitch_f4
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onBigDataLogging(Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 1012
    :pswitch_100
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 990
    :pswitch_110
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 994
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 997
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v5

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 1006
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 957
    :pswitch_13d
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-array v12, v5, [B

    const-wide/16 v13, 0x20

    .line 965
    invoke-virtual {v1, v13, v14}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v13

    .line 968
    invoke-virtual {v13, v9, v10, v12, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v11, [B

    .line 975
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 978
    invoke-virtual {v5, v9, v10, v14, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v8

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move v8, v9

    move-object v9, v10

    .line 984
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZLjava/lang/String;)V

    goto :goto_1c8

    .line 908
    :pswitch_17f
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v11, [B

    .line 912
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 915
    invoke-virtual {v5, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v5, v11, [B

    .line 921
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    .line 924
    invoke-virtual {v8, v9, v10, v5, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const/16 v8, 0x8

    new-array v12, v8, [B

    .line 930
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 933
    invoke-virtual {v3, v9, v10, v12, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v8

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    new-array v15, v11, [B

    .line 943
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 946
    invoke-virtual {v3, v9, v10, v15, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v12

    move v5, v8

    move v6, v13

    move v7, v14

    move-object v8, v15

    .line 951
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;SBI[BLjava/lang/String;)V

    :goto_1c8
    return-void

    nop

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_13d
        :pswitch_110
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_d3
    .end packed-switch

    :sswitch_data_1dc
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_4c
        0xf494e54 -> :sswitch_44
        0xf504e47 -> :sswitch_36
        0xf524546 -> :sswitch_24
        0xf535953 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIfaceCallback"

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
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
