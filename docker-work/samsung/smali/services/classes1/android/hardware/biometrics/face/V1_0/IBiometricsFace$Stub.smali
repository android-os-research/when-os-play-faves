.class public abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 926
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

    .line 979
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 980
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 981
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 982
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

    .line 954
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
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
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

    .line 934
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

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

    const-string p0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 989
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

    const-string p4, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_204

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_224

    goto/16 :goto_203

    .line 1294
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->notifySyspropsChanged()V

    goto/16 :goto_203

    .line 1283
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1286
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1287
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1273
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->ping()V

    .line 1276
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1260
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setHALInstrumentation()V

    goto/16 :goto_203

    .line 1226
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1229
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1231
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1233
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1234
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1235
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1236
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1240
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1242
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1246
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1243
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 1250
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1252
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1215
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1218
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1219
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1203
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1207
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1192
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1195
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1196
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1180
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1183
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    move-result p0

    .line 1184
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1169
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()I

    move-result p0

    .line 1172
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1173
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1157
    :pswitch_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 1160
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p0

    .line 1161
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1162
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1145
    :pswitch_108
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1148
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result p0

    .line 1149
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1150
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1134
    :pswitch_11e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result p0

    .line 1137
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1123
    :pswitch_130
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result p0

    .line 1126
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1127
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1112
    :pswitch_142
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1115
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1116
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1099
    :pswitch_154
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1103
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object p0

    .line 1104
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_203

    .line 1084
    :pswitch_16e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1090
    invoke-interface {p0, p1, p4, v1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p0

    .line 1091
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_203

    .line 1073
    :pswitch_18f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result p0

    .line 1076
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_203

    .line 1059
    :pswitch_1a0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1063
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1064
    invoke-interface {p0, p1, p4, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    .line 1065
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_203

    .line 1047
    :pswitch_1bd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1050
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1051
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_203

    .line 1034
    :pswitch_1d2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1038
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    move-result p0

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1040
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_203

    .line 1022
    :pswitch_1eb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object p1

    .line 1025
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    .line 1026
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_203
    return-void

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_1d2
        :pswitch_1bd
        :pswitch_1a0
        :pswitch_18f
        :pswitch_16e
        :pswitch_154
        :pswitch_142
        :pswitch_130
        :pswitch_11e
        :pswitch_108
        :pswitch_f2
        :pswitch_e0
        :pswitch_ca
    .end packed-switch

    :sswitch_data_224
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

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 1001
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

    .line 1008
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

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
