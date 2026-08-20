.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 919
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

    .line 974
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 975
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 976
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 977
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

    .line 948
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
        -0x33t
        0x43t
        0x30t
        -0x3dt
        0x19t
        0x6bt
        -0x26t
        0x1dt
        0x64t
        0x2at
        0x32t
        -0x55t
        -0x2t
        0x23t
        -0x59t
        -0x2at
        0x4et
        -0x41t
        -0x43t
        -0x59t
        0x21t
        -0x6ct
        0x6t
        0x43t
        -0x51t
        0x68t
        0x67t
        -0x51t
        0x3bt
        0x3ft
        0xat
        -0x57t
    .end array-data

    :array_3c
    .array-data 1
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    .line 927
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    const-string p0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 984
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

    const-wide/16 v0, 0x6

    const-wide/16 v2, 0x0

    const-string p4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    const/4 v4, 0x6

    packed-switch p1, :pswitch_data_21c

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_244

    goto/16 :goto_21a

    .line 1379
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_21a

    .line 1368
    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1371
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1372
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    .line 1358
    :sswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 1361
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    .line 1345
    :sswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_21a

    .line 1311
    :sswitch_42
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1314
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1318
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1319
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1320
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1321
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_68
    if-ge p4, p2, :cond_88

    mul-int/lit8 v1, p4, 0x20

    int-to-long v4, v1

    .line 1325
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_80

    .line 1327
    array-length v6, v1

    const/16 v7, 0x20

    if-ne v6, v7, :cond_80

    .line 1331
    invoke-virtual {v0, v4, v5, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_68

    .line 1328
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1335
    :cond_88
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1337
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    .line 1300
    :sswitch_93
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1303
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1304
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    .line 1288
    :sswitch_a5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1291
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1292
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1293
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    .line 1277
    :sswitch_bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1280
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1281
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1282
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21a

    :pswitch_cd
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 1268
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1271
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->onEapFailure_1_1(I)V

    goto/16 :goto_21a

    .line 1259
    :pswitch_db
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1262
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_21a

    .line 1250
    :pswitch_e7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1253
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    goto/16 :goto_21a

    .line 1242
    :pswitch_f3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    goto/16 :goto_21a

    .line 1223
    :pswitch_fb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1227
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1230
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p3

    .line 1235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p2

    .line 1236
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventFail([BSS)V

    goto/16 :goto_21a

    .line 1215
    :pswitch_114
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    goto/16 :goto_21a

    .line 1197
    :pswitch_11c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    new-array p3, v4, [B

    .line 1202
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1205
    invoke-virtual {p2, v2, v3, p3, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1209
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    goto/16 :goto_21a

    .line 1189
    :pswitch_131
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onEapFailure()V

    goto/16 :goto_21a

    .line 1172
    :pswitch_139
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1176
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1179
    invoke-virtual {p2, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1183
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    goto/16 :goto_21a

    .line 1153
    :pswitch_14a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1157
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1160
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1166
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAssociationRejected([BIZ)V

    goto/16 :goto_21a

    .line 1134
    :pswitch_163
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1138
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1141
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1147
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    goto/16 :goto_21a

    .line 1114
    :pswitch_17c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1118
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1121
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1127
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1128
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_21a

    .line 1095
    :pswitch_199
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1099
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1102
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p3

    .line 1107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1108
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto :goto_21a

    .line 1076
    :pswitch_1b1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1080
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1083
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1089
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_21a

    .line 1055
    :pswitch_1c9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1059
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1062
    invoke-virtual {p3, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1066
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 1067
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1068
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 1069
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1070
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto :goto_21a

    .line 1035
    :pswitch_1e9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p3, v4, [B

    .line 1040
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 1043
    invoke-virtual {p4, v2, v3, p3, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1049
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    goto :goto_21a

    .line 1026
    :pswitch_205
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1029
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_21a

    .line 1017
    :pswitch_210
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1020
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    :goto_21a
    return-void

    nop

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_210
        :pswitch_205
        :pswitch_1e9
        :pswitch_1c9
        :pswitch_1b1
        :pswitch_199
        :pswitch_17c
        :pswitch_163
        :pswitch_14a
        :pswitch_139
        :pswitch_131
        :pswitch_11c
        :pswitch_114
        :pswitch_fb
        :pswitch_f3
        :pswitch_e7
        :pswitch_db
        :pswitch_cd
    .end packed-switch

    :sswitch_data_244
    .sparse-switch
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
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

    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 996
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

    .line 1003
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
