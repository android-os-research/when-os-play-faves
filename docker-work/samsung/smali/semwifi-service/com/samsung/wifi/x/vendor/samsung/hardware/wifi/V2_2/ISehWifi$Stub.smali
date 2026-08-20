.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;
.super Landroid/os/HwBinder;
.source "ISehWifi.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 800
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

    .line 857
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 858
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 859
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 860
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

    .line 830
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

    :array_44
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

    :array_58
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

    .line 808
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    const-string v1, "vendor.samsung.hardware.wifi@2.1::ISehWifi"

    const-string v2, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

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

    const-string p0, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 867
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

    const-string v0, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_19a

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1b4

    goto/16 :goto_198

    .line 1152
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->notifySyspropsChanged()V

    goto/16 :goto_198

    .line 1141
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1131
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->ping()V

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1118
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->setHALInstrumentation()V

    goto/16 :goto_198

    .line 1084
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1087
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1091
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1092
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1093
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1094
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1098
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 1100
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 1104
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1101
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 1108
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1110
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1073
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1076
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1061
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1064
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1065
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1066
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1050
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1053
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 1035
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$5;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getChipsetVendorName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;)V

    goto/16 :goto_198

    .line 1020
    :pswitch_d9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$4;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getTwtParameters(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;)V

    goto/16 :goto_198

    :pswitch_e6
    const-string p1, "vendor.samsung.hardware.wifi@2.1::ISehWifi"

    .line 1005
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$3;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_1/ISehWifi;->getDebugDump(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_1/ISehWifi$getDebugDumpCallback;)V

    goto/16 :goto_198

    .line 993
    :pswitch_f5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 996
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setHeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 997
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 982
    :pswitch_10b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeLogFiles()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 985
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 987
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_198

    .line 970
    :pswitch_11d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 973
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 974
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_198

    .line 958
    :pswitch_132
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 961
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->updateFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 962
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_198

    .line 942
    :pswitch_147
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 945
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$2;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$2;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getProperty(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$getPropertyCallback;)V

    goto :goto_198

    .line 929
    :pswitch_157
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 933
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setProperty(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 934
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_198

    .line 913
    :pswitch_170
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 916
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub$1;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->readFile(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$readFileCallback;)V

    goto :goto_198

    .line 900
    :pswitch_180
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 904
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->writeFile(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 905
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_198
    return-void

    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_180
        :pswitch_170
        :pswitch_157
        :pswitch_147
        :pswitch_132
        :pswitch_11d
        :pswitch_10b
        :pswitch_f5
        :pswitch_e6
        :pswitch_d9
        :pswitch_cc
    .end packed-switch

    :sswitch_data_1b4
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

    const-string v0, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    .line 879
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

    .line 886
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

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
