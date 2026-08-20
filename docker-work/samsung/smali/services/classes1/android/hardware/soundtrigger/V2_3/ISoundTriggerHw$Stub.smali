.class public abstract Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 868
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

    .line 927
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 928
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 929
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 930
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

    .line 899
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
        -0x4dt
        0x7ft
        0x78t
        -0x1dt
        -0x3t
        -0x39t
        -0x66t
        -0x8t
        -0x4dt
        0x2at
        0x54t
        0x5bt
        0x2bt
        0x42t
        0x6ft
        0x1ft
        -0x2ft
        0x35t
        0x5bt
        0x35t
        -0x63t
        -0x62t
        0x78t
        0x35t
        -0xdt
        -0x41t
        0x1et
        -0x30t
        -0x56t
        0x45t
        0x18t
        -0x28t
    .end array-data

    :array_4c
    .array-data 1
        -0x32t
        0x4bt
        -0x68t
        0x21t
        0x19t
        0x59t
        0x44t
        -0x6dt
        0x61t
        0x14t
        0x6dt
        0x4bt
        0x1et
        0x55t
        0x54t
        -0x24t
        -0x7ct
        0x1ct
        -0x15t
        0x4dt
        0x45t
        0x77t
        0x15t
        0x4dt
        0x7bt
        0x2ft
        -0x4at
        -0x2ft
        -0x15t
        0x50t
        0x4ft
        0x76t
    .end array-data

    :array_60
    .array-data 1
        -0x4ct
        -0xbt
        0x7t
        -0x4ct
        -0x24t
        -0x65t
        0x5ct
        -0x2bt
        -0x10t
        -0x1ct
        0x44t
        0x59t
        0x26t
        -0x54t
        -0x49t
        -0x27t
        0x45t
        0x25t
        -0x52t
        0x60t
        -0x24t
        0x30t
        0x7bt
        0x39t
        0x51t
        0x14t
        0x22t
        -0x7dt
        0x63t
        0x22t
        0x7t
        -0x4at
    .end array-data

    :array_74
    .array-data 1
        0x5bt
        -0x11t
        -0x40t
        0x19t
        -0x35t
        -0x17t
        0x49t
        0x53t
        0x66t
        0x1et
        0x2ct
        -0x25t
        -0x6bt
        -0x1dt
        -0x31t
        0x64t
        -0xbt
        -0x1bt
        0x65t
        -0x3et
        -0x6ct
        0x3t
        -0x1ft
        -0x3et
        -0x26t
        -0x14t
        -0x3et
        -0x42t
        0x44t
        -0x20t
        -0x5bt
        0x5ct
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

    .line 876
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    const-string v1, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    const-string v2, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v3, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

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

    const-string p0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 937
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

    const-string p4, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_278

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_29c

    goto/16 :goto_276

    .line 1319
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->notifySyspropsChanged()V

    goto/16 :goto_276

    .line 1308
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1311
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1312
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1298
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->ping()V

    .line 1301
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1285
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->setHALInstrumentation()V

    goto/16 :goto_276

    .line 1251
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1254
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1258
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1259
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1260
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1261
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v2, p2, :cond_87

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 1265
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7f

    .line 1267
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 1271
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1268
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v0, 0x0

    .line 1275
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1277
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1240
    :sswitch_94
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1243
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1244
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1228
    :sswitch_a6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1232
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1233
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1217
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1220
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1221
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1200
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1204
    new-instance p4, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$8;

    invoke-direct {p4, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$8;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V

    goto/16 :goto_276

    .line 1183
    :pswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1187
    new-instance p4, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$7;

    invoke-direct {p4, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$7;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V

    goto/16 :goto_276

    .line 1169
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1174
    invoke-interface {p0, p1, p4, p2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->setParameter(III)I

    move-result p0

    .line 1175
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1155
    :pswitch_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1158
    new-instance p4, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    .line 1159
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1160
    invoke-interface {p0, p1, p4}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result p0

    .line 1161
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1162
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1140
    :pswitch_134
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    new-instance p1, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;

    invoke-direct {p1, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$6;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V

    goto/16 :goto_276

    :pswitch_141
    const-string p1, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    .line 1128
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1131
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result p0

    .line 1132
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1133
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1112
    :pswitch_159
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1115
    new-instance p4, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1116
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v0

    .line 1118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1119
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 1120
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1093
    :pswitch_183
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    new-instance p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1096
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object p4

    .line 1098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1099
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$5;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    goto/16 :goto_276

    .line 1074
    :pswitch_1a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    new-instance p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 1077
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object p4

    .line 1079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1080
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$4;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    goto/16 :goto_276

    .line 1063
    :pswitch_1c5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopAllRecognitions()I

    move-result p0

    .line 1066
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1051
    :pswitch_1d7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1054
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    .line 1055
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1056
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_276

    .line 1035
    :pswitch_1ed
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1038
    new-instance p4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 1039
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v0

    .line 1041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1042
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 1043
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1044
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_276

    .line 1023
    :pswitch_216
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1026
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    .line 1027
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1028
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_276

    .line 1004
    :pswitch_22b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 1007
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1010
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$3;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    goto :goto_276

    .line 985
    :pswitch_24b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 988
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 991
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$2;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    goto :goto_276

    .line 970
    :pswitch_26b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    new-instance p1, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub$1;-><init>(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    :goto_276
    return-void

    nop

    :pswitch_data_278
    .packed-switch 0x1
        :pswitch_26b
        :pswitch_24b
        :pswitch_22b
        :pswitch_216
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c5
        :pswitch_1a4
        :pswitch_183
        :pswitch_159
        :pswitch_141
        :pswitch_134
        :pswitch_116
        :pswitch_f8
        :pswitch_e3
        :pswitch_ce
    .end packed-switch

    :sswitch_data_29c
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

    const-string v0, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    .line 949
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

    .line 956
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

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
