.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;
.super Landroid/os/HwBinder;
.source "ISehHostapd.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 890
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

    .line 949
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 950
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 951
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 952
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

    .line 921
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_38

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_60

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_74

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_38
    .array-data 1
        0x73t
        -0x4dt
        0x45t
        0x8t
        -0x52t
        -0x16t
        0x2t
        -0x36t
        -0x1et
        0x33t
        0x4bt
        0x2et
        0x59t
        0x47t
        0x34t
        -0x55t
        0x10t
        0x13t
        -0xdt
        0x1t
        0x42t
        -0x27t
        -0x4ft
        -0x46t
        0x1ct
        0x22t
        0x22t
        0x2t
        -0x1dt
        -0x40t
        0x2dt
        0x12t
    .end array-data

    :array_4c
    .array-data 1
        -0x3at
        0x7at
        -0x51t
        0x26t
        -0x59t
        -0x5ct
        0xdt
        0x14t
        -0x16t
        0x61t
        -0x19t
        0xet
        0x20t
        -0x51t
        -0x54t
        -0x43t
        0xbt
        -0x47t
        0x6t
        -0x21t
        0x17t
        0x4t
        -0x2bt
        -0x7bt
        -0x54t
        -0x7bt
        -0x67t
        -0x5t
        -0x4at
        -0x63t
        -0x2ct
        0x4bt
    .end array-data

    :array_60
    .array-data 1
        0x2ft
        -0x52t
        0x61t
        -0x17t
        0x62t
        -0xat
        -0x80t
        -0x6ft
        0x33t
        0x5ft
        0x7ft
        -0xct
        0x58t
        0x1ft
        -0x31t
        -0x1et
        -0x1et
        -0x74t
        -0x19t
        -0xat
        0x13t
        0x2dt
        0x7at
        0x71t
        0x2ft
        -0x5ft
        0x3dt
        0x79t
        0x65t
        0x54t
        0x3et
        0x4dt
    .end array-data

    :array_74
    .array-data 1
        -0x12t
        0x8t
        0x28t
        0xdt
        -0x1et
        0x1ct
        -0x4ct
        0x1et
        0x3et
        -0x3et
        0x6dt
        0x6et
        -0x2at
        0x36t
        -0x39t
        0x1t
        -0x49t
        -0x9t
        0x5t
        0x16t
        -0x19t
        0x1ft
        -0x4et
        0x2ft
        0x4ft
        -0x1at
        0xat
        0x13t
        -0x1at
        0x3t
        -0xct
        0x6t
    .end array-data

    :array_88
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 898
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    const-string v1, "android.hardware.wifi.hostapd@1.2::IHostapd"

    const-string v2, "android.hardware.wifi.hostapd@1.1::IHostapd"

    const-string v3, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 959
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-string p4, "android.hardware.wifi.hostapd@1.1::IHostapd"

    const-string v2, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    const-string v3, "android.hardware.wifi.hostapd@1.2::IHostapd"

    const-string v4, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_200

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_21a

    goto/16 :goto_1fe

    .line 1246
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1fe

    .line 1235
    :sswitch_1d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1238
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1239
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1240
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1225
    :sswitch_2f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->ping()V

    .line 1228
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1212
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->setHALInstrumentation()V

    goto/16 :goto_1fe

    .line 1178
    :sswitch_45
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1181
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1183
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1185
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1186
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1187
    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1188
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6b
    if-ge v5, p2, :cond_8b

    mul-int/lit8 v2, v5, 0x20

    int-to-long v2, v2

    .line 1192
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_83

    .line 1194
    array-length v6, v4

    const/16 v7, 0x20

    if-ne v6, v7, :cond_83

    .line 1198
    invoke-virtual {p4, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 1195
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1202
    :cond_8b
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1204
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1167
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1170
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1155
    :sswitch_a8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1160
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1161
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1144
    :sswitch_be
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1147
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1148
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1149
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1132
    :pswitch_d0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1135
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1136
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1137
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1115
    :pswitch_e6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;-><init>()V

    .line 1118
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1119
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;-><init>()V

    .line 1120
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1121
    new-instance v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$SehParams;

    invoke-direct {v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$SehParams;-><init>()V

    .line 1122
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$SehParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehAddAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$SehParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1124
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1103
    :pswitch_110
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;

    move-result-object p1

    .line 1106
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1107
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1108
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1091
    :pswitch_12a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1094
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->setDebugParams(I)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1095
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1069
    :pswitch_140
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x6

    new-array v2, p4, [B

    const-wide/16 v3, 0x6

    .line 1074
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1077
    invoke-virtual {v3, v0, v1, v2, p4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1081
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p2

    .line 1082
    invoke-interface {p0, p1, v2, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->forceClientDisconnect(Ljava/lang/String;[BS)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1083
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1054
    :pswitch_166
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;-><init>()V

    .line 1057
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1058
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;-><init>()V

    .line 1059
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1060
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->addAccessPoint_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0

    .line 1061
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1fe

    .line 1042
    :pswitch_188
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;

    move-result-object p1

    .line 1045
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1046
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1fe

    .line 1027
    :pswitch_1a1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;-><init>()V

    .line 1030
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1031
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 1032
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1033
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->addAccessPoint_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1034
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1fe

    .line 1019
    :pswitch_1c2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V

    goto :goto_1fe

    .line 1007
    :pswitch_1c9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1011
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1fe

    .line 992
    :pswitch_1de
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 995
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 996
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 997
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 998
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 999
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1fe
    return-void

    nop

    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_1de
        :pswitch_1c9
        :pswitch_1c2
        :pswitch_1a1
        :pswitch_188
        :pswitch_166
        :pswitch_140
        :pswitch_12a
        :pswitch_110
        :pswitch_e6
        :pswitch_d0
    .end packed-switch

    :sswitch_data_21a
    .sparse-switch
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_45
        0xf494e54 -> :sswitch_3d
        0xf504e47 -> :sswitch_2f
        0xf524546 -> :sswitch_1d
        0xf535953 -> :sswitch_15
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    .line 971
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

    .line 978
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

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
