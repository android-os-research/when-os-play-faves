.class public abstract Landroid/hardware/health/V2_0/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 849
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

    .line 902
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 903
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 904
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 905
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

    .line 877
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

    .line 857
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.health@2.0::IHealth"

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

    const-string p0, "android.hardware.health@2.0::IHealth"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 912
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

    const/4 p4, 0x0

    const-string v0, "android.hardware.health@2.0::IHealth"

    packed-switch p1, :pswitch_data_17e

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_19a

    goto/16 :goto_17d

    .line 1217
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->notifySyspropsChanged()V

    goto/16 :goto_17d

    .line 1206
    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1209
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1210
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1196
    :sswitch_27
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->ping()V

    .line 1199
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1183
    :sswitch_35
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->setHALInstrumentation()V

    goto/16 :goto_17d

    .line 1149
    :sswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1152
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1154
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1156
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1157
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1158
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1159
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge p4, p2, :cond_83

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1163
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1165
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1169
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_63

    .line 1166
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v1, 0x0

    .line 1173
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1175
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1138
    :sswitch_90
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1141
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1126
    :sswitch_a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1130
    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V2_0/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1131
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1115
    :sswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1118
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_17d

    .line 1100
    :pswitch_ca
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$9;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    goto/16 :goto_17d

    .line 1085
    :pswitch_d7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$8;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    goto/16 :goto_17d

    .line 1070
    :pswitch_e4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$7;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    goto/16 :goto_17d

    .line 1055
    :pswitch_f1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$6;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto/16 :goto_17d

    .line 1040
    :pswitch_fe
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$5;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto/16 :goto_17d

    .line 1025
    :pswitch_10b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$4;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_17d

    .line 1010
    :pswitch_117
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_17d

    .line 995
    :pswitch_123
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_17d

    .line 980
    :pswitch_12f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    goto :goto_17d

    .line 969
    :pswitch_13b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I

    move-result p0

    .line 972
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_17d

    .line 957
    :pswitch_14c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 960
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 961
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_17d

    .line 945
    :pswitch_165
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 948
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 949
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_17d
    return-void

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_165
        :pswitch_14c
        :pswitch_13b
        :pswitch_12f
        :pswitch_123
        :pswitch_117
        :pswitch_10b
        :pswitch_fe
        :pswitch_f1
        :pswitch_e4
        :pswitch_d7
        :pswitch_ca
    .end packed-switch

    :sswitch_data_19a
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

    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 924
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

    .line 931
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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
