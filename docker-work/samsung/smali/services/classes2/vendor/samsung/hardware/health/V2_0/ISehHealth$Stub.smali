.class public abstract Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;
.super Landroid/os/HwBinder;
.source "ISehHealth.java"

# interfaces
.implements Lvendor/samsung/hardware/health/V2_0/ISehHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/health/V2_0/ISehHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 802
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

    .line 859
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 860
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 861
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 862
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

    .line 832
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_30

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_44

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_58

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_6c

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_30
    .array-data 1
        -0x41t
        -0x11t
        -0x7ft
        -0x24t
        -0x38t
        0x6ft
        0x63t
        0x18t
        0x72t
        -0x2ct
        0x44t
        0x6bt
        0x50t
        -0x7et
        0x37t
        -0x20t
        0x41t
        -0x20t
        -0x53t
        -0x7dt
        0x6ct
        -0x4bt
        -0x5t
        -0x72t
        0xdt
        0x18t
        0x27t
        0x37t
        -0x58t
        -0x18t
        0x3t
        0x27t
    .end array-data

    :array_44
    .array-data 1
        -0x32t
        -0x73t
        -0x42t
        0x76t
        -0x15t
        -0x62t
        -0x17t
        0x4bt
        0x46t
        -0x11t
        -0x68t
        -0x9t
        0x25t
        -0x42t
        -0x67t
        0x2et
        0x76t
        0xat
        0x57t
        0x51t
        0x7t
        0x3dt
        0x4ft
        0x49t
        0x12t
        0x48t
        0x40t
        0x26t
        0x54t
        0x13t
        0x71t
        -0xdt
    .end array-data

    :array_58
    .array-data 1
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
    .end array-data

    :array_6c
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealth"

    const-string v1, "android.hardware.health@2.1::IHealth"

    const-string v2, "android.hardware.health@2.0::IHealth"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealth"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 869
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

    const-string/jumbo p4, "vendor.samsung.hardware.health@2.0::ISehHealth"

    const-string v0, "android.hardware.health@2.1::IHealth"

    const/4 v1, 0x0

    const-string v2, "android.hardware.health@2.0::IHealth"

    packed-switch p1, :pswitch_data_1d2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1f8

    goto/16 :goto_1d0

    .line 1247
    :sswitch_12
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1d0

    .line 1236
    :sswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1239
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1240
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1241
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1226
    :sswitch_2c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->ping()V

    .line 1229
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1213
    :sswitch_3a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->setHALInstrumentation()V

    goto/16 :goto_1d0

    .line 1179
    :sswitch_42
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1182
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1186
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1187
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1188
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1189
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_68
    if-ge v1, p2, :cond_88

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1193
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_80

    .line 1195
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_80

    .line 1199
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1196
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    const-wide/16 v0, 0x0

    .line 1203
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1205
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1207
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1168
    :sswitch_95
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1171
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1156
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1160
    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1161
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1145
    :sswitch_bd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1148
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1132
    :pswitch_cf
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1136
    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result p0

    .line 1137
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1d0

    .line 1117
    :pswitch_e9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$13;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$13;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehGetHealthInfo_2_1(Lvendor/samsung/hardware/health/V2_0/ISehHealth$sehGetHealthInfo_2_1Callback;)V

    goto/16 :goto_1d0

    .line 1102
    :pswitch_f6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$12;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$12;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->shouldKeepScreenOn(Landroid/hardware/health/V2_1/IHealth$shouldKeepScreenOnCallback;)V

    goto/16 :goto_1d0

    .line 1087
    :pswitch_103
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->getHealthInfo_2_1(Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;)V

    goto/16 :goto_1d0

    .line 1072
    :pswitch_110
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$10;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$10;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->getHealthConfig(Landroid/hardware/health/V2_1/IHealth$getHealthConfigCallback;)V

    goto/16 :goto_1d0

    .line 1057
    :pswitch_11d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$9;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$9;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    goto/16 :goto_1d0

    .line 1042
    :pswitch_12a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$8;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$8;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    goto/16 :goto_1d0

    .line 1027
    :pswitch_137
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$7;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$7;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    goto/16 :goto_1d0

    .line 1012
    :pswitch_144
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$6;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto/16 :goto_1d0

    .line 997
    :pswitch_151
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$5;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$5;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto/16 :goto_1d0

    .line 982
    :pswitch_15e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$4;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$4;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_1d0

    .line 967
    :pswitch_16a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$3;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$3;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_1d0

    .line 952
    :pswitch_176
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$2;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_1d0

    .line 937
    :pswitch_182
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$1;

    invoke-direct {p1, p0, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$1;-><init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    goto :goto_1d0

    .line 926
    :pswitch_18e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I

    move-result p0

    .line 929
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1d0

    .line 914
    :pswitch_19f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 917
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 918
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1d0

    .line 902
    :pswitch_1b8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 905
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 906
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1d0
    return-void

    nop

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_1b8
        :pswitch_19f
        :pswitch_18e
        :pswitch_182
        :pswitch_176
        :pswitch_16a
        :pswitch_15e
        :pswitch_151
        :pswitch_144
        :pswitch_137
        :pswitch_12a
        :pswitch_11d
        :pswitch_110
        :pswitch_103
        :pswitch_f6
        :pswitch_e9
        :pswitch_cf
    .end packed-switch

    :sswitch_data_1f8
    .sparse-switch
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealth"

    .line 881
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    :cond_a
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

    .line 888
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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
