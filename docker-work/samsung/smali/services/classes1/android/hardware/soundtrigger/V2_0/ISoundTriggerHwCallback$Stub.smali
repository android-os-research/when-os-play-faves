.class public abstract Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1068
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

    .line 1121
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1122
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1123
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1124
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

    .line 1096
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
        0x1at
        0x6et
        0x2bt
        -0x2et
        -0x77t
        -0xet
        0x29t
        0x31t
        -0x3bt
        0x26t
        -0x4et
        0x19t
        0x16t
        -0x6ft
        0xft
        0x1dt
        0x4ct
        0x43t
        0x6bt
        0x7at
        -0x35t
        -0x6bt
        0x56t
        -0x1ct
        0x24t
        0x3dt
        -0x1ct
        -0x32t
        -0x72t
        0x6ct
        -0x3et
        -0x1ct
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

    .line 1076
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

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

    const-string p0, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1131
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

    const/4 p4, 0x1

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    const/4 v1, 0x0

    if-eq p1, p4, :cond_ff

    const/4 p4, 0x2

    if-eq p1, p4, :cond_e6

    const/4 p4, 0x3

    if-eq p1, p4, :cond_cd

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_118

    goto/16 :goto_117

    .line 1305
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_117

    .line 1294
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1297
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1298
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1299
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 1284
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->ping()V

    .line 1287
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 1271
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_117

    .line 1237
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1240
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1242
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1244
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1245
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1246
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1247
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v1, p2, :cond_89

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1251
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_81

    .line 1253
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 1257
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1254
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v0, 0x0

    .line 1261
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1263
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1265
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 1226
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1229
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1230
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 1214
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1218
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1219
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 1203
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1206
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 1190
    :cond_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;-><init>()V

    .line 1193
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1195
    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->soundModelCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;I)V

    .line 1196
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 1177
    :cond_e6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;-><init>()V

    .line 1180
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1182
    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 1183
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 1164
    :cond_ff
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 1167
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1169
    invoke-interface {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->recognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 1170
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_117
    return-void

    :sswitch_data_118
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf504e47 -> :sswitch_2d
        0xf524546 -> :sswitch_1b
        0xf535953 -> :sswitch_13
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    .line 1143
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

    .line 1150
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
