.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;
.super Landroid/os/HwBinder;
.source "ISehWifi.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 914
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

    .line 973
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 974
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 975
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 976
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

    .line 945
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
        -0x2ct
        0x27t
        0x46t
        -0x27t
        0x60t
        0x2dt
        -0x2t
        -0x45t
        0x6et
        0x4ft
        -0x7et
        -0x70t
        -0x3at
        -0x3bt
        0x54t
        -0x20t
        0x5dt
        -0x3ft
        0x20t
        -0x50t
        0x4et
        0x57t
        -0x59t
        -0x3ft
        -0x1t
        0x27t
        -0x23t
        -0x63t
        -0x75t
        0x61t
        -0x3at
        -0x2bt
    .end array-data

    :array_4c
    .array-data 1
        0x55t
        0x38t
        -0x75t
        -0x56t
        -0x55t
        0x74t
        -0x16t
        0x24t
        0x34t
        0x26t
        0x6ct
        -0x1at
        0xft
        0x1at
        -0x10t
        -0x7ft
        0x47t
        0x38t
        -0x60t
        0x58t
        -0x25t
        -0x59t
        0x53t
        -0x74t
        0x7ct
        -0x39t
        0x2t
        -0x6at
        0x3bt
        -0x52t
        -0xft
        0x65t
    .end array-data

    :array_60
    .array-data 1
        -0xdt
        -0x1et
        0x52t
        -0x5ct
        -0x1et
        0x37t
        -0x63t
        -0x9t
        0x2et
        0x63t
        -0x4ft
        0x65t
        -0x5ct
        -0x42t
        -0x28t
        -0x44t
        -0x47t
        -0x2ft
        -0x77t
        0x34t
        -0x33t
        -0x59t
        0x51t
        0x5t
        0x9t
        0x3ct
        -0x1et
        -0x23t
        -0x30t
        -0x70t
        -0x46t
        0x46t
    .end array-data

    :array_74
    .array-data 1
        0x70t
        -0x30t
        -0x20t
        0x11t
        0x6at
        0x33t
        -0x51t
        -0x31t
        -0x45t
        -0x5t
        0x7bt
        -0x35t
        -0x56t
        0x68t
        -0x3ct
        0x30t
        -0x5bt
        -0xat
        0x2dt
        0x3t
        0x38t
        -0x24t
        -0x1bt
        -0x14t
        -0x1ct
        0x54t
        0x6t
        0x3at
        0x15t
        0x5t
        -0x13t
        0x1at
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

    .line 922
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi@2.3::ISehWifi"

    const-string v1, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    const-string v2, "vendor.samsung.hardware.wifi@2.1::ISehWifi"

    const-string v3, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

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

    const-string p0, "vendor.samsung.hardware.wifi@2.3::ISehWifi"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 983
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

    const-string p4, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    const-string v0, "vendor.samsung.hardware.wifi@2.3::ISehWifi"

    const-string v1, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1f2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_214

    goto/16 :goto_1f1

    .line 1321
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1f1

    .line 1310
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1313
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1300
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->ping()V

    .line 1303
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1287
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->setHALInstrumentation()V

    goto/16 :goto_1f1

    .line 1253
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1256
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1260
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1261
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1262
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1263
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v2, p2, :cond_87

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 1267
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7f

    .line 1269
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 1273
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1270
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v0, 0x0

    .line 1277
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1279
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1242
    :sswitch_94
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1245
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1246
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1230
    :sswitch_a6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1235
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1219
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1222
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1207
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1210
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->removeFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1211
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1212
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1195
    :pswitch_e4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1198
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->updateFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1199
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1179
    :pswitch_fa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1182
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$6;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$6;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->readFile_2_3(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$readFile_2_3Callback;)V

    goto/16 :goto_1f1

    .line 1166
    :pswitch_10b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1170
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->writeFile_2_3(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1171
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1151
    :pswitch_125
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$5;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getChipsetVendorName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;)V

    goto/16 :goto_1f1

    .line 1136
    :pswitch_132
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$4;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getTwtParameters(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;)V

    goto/16 :goto_1f1

    :pswitch_13f
    const-string p1, "vendor.samsung.hardware.wifi@2.1::ISehWifi"

    .line 1121
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$3;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_1/ISehWifi;->getDebugDump(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_1/ISehWifi$getDebugDumpCallback;)V

    goto/16 :goto_1f1

    .line 1109
    :pswitch_14e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1112
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setHeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1113
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1098
    :pswitch_164
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeLogFiles()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1101
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1f1

    .line 1086
    :pswitch_176
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1089
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1090
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f1

    .line 1074
    :pswitch_18b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1077
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->updateFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1078
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f1

    .line 1058
    :pswitch_1a0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1061
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$2;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$2;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getProperty(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$getPropertyCallback;)V

    goto :goto_1f1

    .line 1045
    :pswitch_1b0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1049
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setProperty(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1050
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1f1

    .line 1029
    :pswitch_1c9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1032
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub$1;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->readFile(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$readFileCallback;)V

    goto :goto_1f1

    .line 1016
    :pswitch_1d9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1020
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->writeFile(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1021
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1f1
    return-void

    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_1d9
        :pswitch_1c9
        :pswitch_1b0
        :pswitch_1a0
        :pswitch_18b
        :pswitch_176
        :pswitch_164
        :pswitch_14e
        :pswitch_13f
        :pswitch_132
        :pswitch_125
        :pswitch_10b
        :pswitch_fa
        :pswitch_e4
        :pswitch_ce
    .end packed-switch

    :sswitch_data_214
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a6
        0xf445343 -> :sswitch_94
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "vendor.samsung.hardware.wifi@2.3::ISehWifi"

    .line 995
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

    .line 1002
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

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
