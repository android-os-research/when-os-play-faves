.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;
.super Landroid/os/HwBinder;
.source "IHostapd.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 902
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

    .line 957
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 958
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 959
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 960
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

    .line 931
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

    :array_3c
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

    .line 910
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.hostapd@1.1::IHostapd"

    const-string v1, "android.hardware.wifi.hostapd@1.0::IHostapd"

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

    const-string p0, "android.hardware.wifi.hostapd@1.1::IHostapd"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 967
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

    const-string v0, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const/4 v1, 0x0

    if-eq p1, p4, :cond_12e

    const/4 p4, 0x2

    if-eq p1, p4, :cond_119

    const/4 p4, 0x3

    if-eq p1, p4, :cond_112

    const/4 p4, 0x4

    const-string v0, "android.hardware.wifi.hostapd@1.1::IHostapd"

    if-eq p1, p4, :cond_f1

    const/4 p4, 0x5

    if-eq p1, p4, :cond_d8

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_150

    goto/16 :goto_14e

    .line 1164
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->notifySyspropsChanged()V

    goto/16 :goto_14e

    .line 1153
    :sswitch_23
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1156
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1157
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1143
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->ping()V

    .line 1146
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1130
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->setHALInstrumentation()V

    goto/16 :goto_14e

    .line 1096
    :sswitch_4b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1099
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1103
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1104
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1105
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1106
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_71
    if-ge v1, p2, :cond_91

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1110
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_89

    .line 1112
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_89

    .line 1116
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1113
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    const-wide/16 v0, 0x0

    .line 1120
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1122
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1124
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1085
    :sswitch_9e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1088
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1073
    :sswitch_b0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1078
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1062
    :sswitch_c6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1065
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_14e

    .line 1050
    :cond_d8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;

    move-result-object p1

    .line 1053
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1054
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_14e

    .line 1035
    :cond_f1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;-><init>()V

    .line 1038
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1039
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 1040
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1041
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->addAccessPoint_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1042
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_14e

    .line 1027
    :cond_112
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V

    goto :goto_14e

    .line 1015
    :cond_119
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1018
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1019
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_14e

    .line 1000
    :cond_12e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 1003
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1004
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 1005
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1006
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1007
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1008
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_14e
    return-void

    nop

    :sswitch_data_150
    .sparse-switch
        0xf43484e -> :sswitch_c6
        0xf444247 -> :sswitch_b0
        0xf445343 -> :sswitch_9e
        0xf485348 -> :sswitch_4b
        0xf494e54 -> :sswitch_43
        0xf504e47 -> :sswitch_35
        0xf524546 -> :sswitch_23
        0xf535953 -> :sswitch_1b
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.hostapd@1.1::IHostapd"

    .line 979
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

    .line 986
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

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
