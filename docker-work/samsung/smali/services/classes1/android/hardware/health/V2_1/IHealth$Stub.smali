.class public abstract Landroid/hardware/health/V2_1/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_1/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_1/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 781
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

    .line 836
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 837
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 838
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 839
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

    .line 810
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

    :array_3c
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

    .line 789
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.health@2.1::IHealth"

    const-string v1, "android.hardware.health@2.0::IHealth"

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

    const-string p0, "android.hardware.health@2.1::IHealth"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 846
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

    const-string p4, "android.hardware.health@2.1::IHealth"

    const/4 v0, 0x0

    const-string v1, "android.hardware.health@2.0::IHealth"

    packed-switch p1, :pswitch_data_1a8

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1ca

    goto/16 :goto_1a6

    .line 1196
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a6

    .line 1185
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1175
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->ping()V

    .line 1178
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1162
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a6

    .line 1128
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1131
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1133
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1135
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1136
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1137
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1138
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v0, p2, :cond_85

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 1142
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7d

    .line 1144
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 1148
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 1145
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 1152
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1154
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1156
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1117
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1120
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1105
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1109
    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V2_1/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1110
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1094
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1097
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1098
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a6

    .line 1079
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$12;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$12;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->shouldKeepScreenOn(Landroid/hardware/health/V2_1/IHealth$shouldKeepScreenOnCallback;)V

    goto/16 :goto_1a6

    .line 1064
    :pswitch_d9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$11;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$11;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->getHealthInfo_2_1(Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;)V

    goto/16 :goto_1a6

    .line 1049
    :pswitch_e6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$10;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$10;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealth;->getHealthConfig(Landroid/hardware/health/V2_1/IHealth$getHealthConfigCallback;)V

    goto/16 :goto_1a6

    .line 1034
    :pswitch_f3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$9;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    goto/16 :goto_1a6

    .line 1019
    :pswitch_100
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$8;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    goto/16 :goto_1a6

    .line 1004
    :pswitch_10d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$7;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    goto/16 :goto_1a6

    .line 989
    :pswitch_11a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$6;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto/16 :goto_1a6

    .line 974
    :pswitch_127
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$5;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto/16 :goto_1a6

    .line 959
    :pswitch_134
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$4;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_1a6

    .line 944
    :pswitch_140
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_1a6

    .line 929
    :pswitch_14c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_1a6

    .line 914
    :pswitch_158
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    new-instance p1, Landroid/hardware/health/V2_1/IHealth$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_1/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_1/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    goto :goto_1a6

    .line 903
    :pswitch_164
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I

    move-result p0

    .line 906
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a6

    .line 891
    :pswitch_175
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 894
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 895
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a6

    .line 879
    :pswitch_18e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 882
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    .line 883
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1a6
    return-void

    nop

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_18e
        :pswitch_175
        :pswitch_164
        :pswitch_158
        :pswitch_14c
        :pswitch_140
        :pswitch_134
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_100
        :pswitch_f3
        :pswitch_e6
        :pswitch_d9
        :pswitch_cc
    .end packed-switch

    :sswitch_data_1ca
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.health@2.1::IHealth"

    .line 858
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

    .line 865
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_1/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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
