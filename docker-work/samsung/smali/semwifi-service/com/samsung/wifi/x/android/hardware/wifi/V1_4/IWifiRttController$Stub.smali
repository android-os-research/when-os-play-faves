.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttController.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 846
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

    .line 901
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 902
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 903
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 904
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

    .line 875
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
        0x10t
        -0x43t
        0x6ft
        0x19t
        0x19t
        -0x74t
        0x28t
        0x1et
        -0x1et
        0x5t
        0x26t
        0x41t
        0x4t
        -0x72t
        -0x69t
        0xat
        -0x2at
        0x6bt
        0x73t
        0x2et
        0x4ft
        0x6ft
        -0x2t
        0x79t
        -0x60t
        -0xat
        -0x69t
        -0x16t
        0x15t
        0x76t
        0x1et
        0xft
    .end array-data

    :array_3c
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

    .line 854
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.4::IWifiRttController"

    const-string v1, "android.hardware.wifi@1.0::IWifiRttController"

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

    const-string p0, "android.hardware.wifi@1.4::IWifiRttController"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 911
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

    const-string v4, "android.hardware.wifi@1.4::IWifiRttController"

    const-string v5, "android.hardware.wifi@1.0::IWifiRttController"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_266

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_288

    goto/16 :goto_265

    .line 1278
    :sswitch_16
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->notifySyspropsChanged()V

    goto/16 :goto_265

    .line 1267
    :sswitch_1e
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1270
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1257
    :sswitch_30
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->ping()V

    .line 1260
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1244
    :sswitch_3e
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->setHALInstrumentation()V

    goto/16 :goto_265

    .line 1210
    :sswitch_46
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1213
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1215
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1218
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1219
    invoke-virtual {v1, v2, v3, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1220
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6a
    if-ge v10, v4, :cond_8a

    mul-int/lit8 v3, v10, 0x20

    int-to-long v5, v3

    .line 1224
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_82

    .line 1226
    array-length v7, v3

    const/16 v8, 0x20

    if-ne v7, v8, :cond_82

    .line 1230
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 1227
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    const-wide/16 v3, 0x0

    .line 1234
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1236
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1199
    :sswitch_97
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1203
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1187
    :sswitch_a9
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1191
    invoke-virtual {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1192
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1176
    :sswitch_bf
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1179
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1180
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1159
    :pswitch_d1
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1162
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 1163
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1165
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;-><init>()V

    .line 1166
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1167
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->enableResponder_1_4(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1168
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1144
    :pswitch_fb
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$5;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->getResponderInfo_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$getResponderInfo_1_4Callback;)V

    goto/16 :goto_265

    .line 1129
    :pswitch_108
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$4;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->getCapabilities_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$getCapabilities_1_4Callback;)V

    goto/16 :goto_265

    .line 1116
    :pswitch_115
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1119
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1120
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->rangeRequest_1_4(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1121
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1104
    :pswitch_12f
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 1107
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1108
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1092
    :pswitch_149
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1095
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1096
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1075
    :pswitch_15f
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1078
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 1079
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1081
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 1082
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1083
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1084
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1060
    :pswitch_189
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$3;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    goto/16 :goto_265

    .line 1046
    :pswitch_196
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1049
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    .line 1050
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1051
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLcr(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1052
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1032
    :pswitch_1b4
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1035
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 1036
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1037
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLci(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1038
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_265

    .line 1017
    :pswitch_1d2
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$2;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    goto/16 :goto_265

    .line 984
    :pswitch_1df
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 987
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x10

    .line 989
    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 991
    invoke-virtual {v4, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v2, v13, 0x6

    int-to-long v2, v2

    .line 993
    invoke-virtual {v4}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p2

    .line 992
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 996
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v2, v10

    :goto_209
    if-ge v2, v13, :cond_21a

    const/4 v3, 0x6

    new-array v4, v3, [B

    mul-int/lit8 v5, v2, 0x6

    int-to-long v5, v5

    .line 1001
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1004
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_209

    .line 1008
    :cond_21a
    invoke-interface {p0, v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1009
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_265

    .line 971
    :pswitch_228
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 974
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 975
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 976
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_265

    .line 959
    :pswitch_241
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 962
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 963
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_265

    .line 944
    :pswitch_25a
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$1;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getBoundIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    :goto_265
    return-void

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_25a
        :pswitch_241
        :pswitch_228
        :pswitch_1df
        :pswitch_1d2
        :pswitch_1b4
        :pswitch_196
        :pswitch_189
        :pswitch_15f
        :pswitch_149
        :pswitch_12f
        :pswitch_115
        :pswitch_108
        :pswitch_fb
        :pswitch_d1
    .end packed-switch

    :sswitch_data_288
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf504e47 -> :sswitch_30
        0xf524546 -> :sswitch_1e
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.4::IWifiRttController"

    .line 923
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

    .line 930
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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
