.class public abstract Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;
.super Landroid/os/HwBinder;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 774
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 777
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 791
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 829
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 830
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 831
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 832
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 833
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        -0x18t
        -0x11t
        -0x33t
        0x16t
        0x25t
        -0x17t
        -0x10t
        -0x1bt
        0x4bt
        -0xct
        0x59t
        -0x53t
        0x21t
        0xft
        0x32t
        -0x7t
        0x54t
        -0xet
        0x78t
        -0x71t
        0x4t
        -0x66t
        0x78t
        -0x15t
        -0x70t
        0x4t
        -0x73t
        -0x37t
        0x54t
        -0x7t
        -0x6et
        -0x6at
    .end array-data

    :array_3c
    .array-data 1
        0x20t
        -0x4ct
        -0x4at
        -0x7at
        -0x79t
        0x52t
        0x30t
        -0x29t
        -0x75t
        -0x6et
        -0x48t
        0x66t
        -0x50t
        -0x43t
        0x50t
        0x35t
        -0x46t
        0x72t
        -0x42t
        0x65t
        -0x7at
        -0x56t
        -0x38t
        0x8t
        0x72t
        0x52t
        0x7ct
        -0x77t
        0xet
        0x4dt
        0x62t
        -0x73t
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v2, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 797
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 817
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 839
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 841
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    sparse-switch p1, :sswitch_data_1e6

    goto/16 :goto_1e5

    .line 1201
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->notifySyspropsChanged()V

    .line 1204
    goto/16 :goto_1e5

    .line 1190
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1193
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1194
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1195
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1196
    goto/16 :goto_1e5

    .line 1180
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->ping()V

    .line 1183
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1185
    goto/16 :goto_1e5

    .line 1175
    :sswitch_34
    goto/16 :goto_1e5

    .line 1167
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setHALInstrumentation()V

    .line 1170
    goto/16 :goto_1e5

    .line 1133
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1136
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1140
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1141
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1142
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1143
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1144
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v3, :cond_86

    .line 1146
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1147
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1149
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 1153
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1154
    nop

    .line 1144
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 1150
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1157
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1159
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1161
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1162
    goto/16 :goto_1e5

    .line 1122
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1126
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_1e5

    .line 1110
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1113
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1114
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1115
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1117
    goto/16 :goto_1e5

    .line 1099
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1102
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1105
    goto/16 :goto_1e5

    .line 1086
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1089
    .local v0, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1090
    .local v1, "isBefore":Z
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setSpenEnable(IZ)I

    move-result v3

    .line 1091
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto/16 :goto_1e5

    .line 1072
    .end local v0    # "enable":I
    .end local v1    # "isBefore":Z
    .end local v3    # "_hidl_out_retval":I
    :sswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1075
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1076
    .local v1, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1077
    .local v3, "isBefore":Z
    invoke-virtual {p0, v0, v1, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->setTspEnable(IIZ)I

    move-result v4

    .line 1078
    .local v4, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_1e5

    .line 1060
    .end local v0    # "devid":I
    .end local v1    # "enable":I
    .end local v3    # "isBefore":Z
    .end local v4    # "_hidl_out_retval":I
    :sswitch_105
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v1

    .line 1064
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1065
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1067
    goto/16 :goto_1e5

    .line 1047
    .end local v0    # "cmdname":Ljava/lang/String;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_11b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1050
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v3

    .line 1052
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_1e5

    .line 1032
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    .end local v3    # "_hidl_out_retval":I
    :sswitch_135
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$11;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$11;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 1042
    goto/16 :goto_1e5

    .line 1017
    :sswitch_142
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$10;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$10;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 1027
    goto/16 :goto_1e5

    .line 1001
    :sswitch_14f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "cmdname":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$9;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$9;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 1012
    goto/16 :goto_1e5

    .line 985
    .end local v0    # "cmdname":Ljava/lang/String;
    :sswitch_160
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 988
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$8;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$8;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 996
    goto/16 :goto_1e5

    .line 969
    .end local v0    # "devid":I
    :sswitch_171
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 972
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$7;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 980
    goto :goto_1e5

    .line 953
    .end local v0    # "devid":I
    :sswitch_181
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 956
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$6;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 964
    goto :goto_1e5

    .line 937
    .end local v0    # "devid":I
    :sswitch_191
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 940
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$5;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 948
    goto :goto_1e5

    .line 921
    .end local v0    # "devid":I
    :sswitch_1a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 924
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$4;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 932
    goto :goto_1e5

    .line 905
    .end local v0    # "devid":I
    :sswitch_1b1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 908
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$3;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 916
    goto :goto_1e5

    .line 888
    .end local v0    # "devid":I
    :sswitch_1c1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 891
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .restart local v1    # "cmdname":Ljava/lang/String;
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$2;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 900
    goto :goto_1e5

    .line 872
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    :sswitch_1d5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 875
    .local v0, "keycode":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub$1;-><init>(Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 883
    nop

    .line 1213
    .end local v0    # "keycode":I
    :goto_1e5
    return-void

    :sswitch_data_1e6
    .sparse-switch
        0x1 -> :sswitch_1d5
        0x2 -> :sswitch_1c1
        0x3 -> :sswitch_1b1
        0x4 -> :sswitch_1a1
        0x5 -> :sswitch_191
        0x6 -> :sswitch_181
        0x7 -> :sswitch_171
        0x8 -> :sswitch_160
        0x9 -> :sswitch_14f
        0xa -> :sswitch_142
        0xb -> :sswitch_135
        0xc -> :sswitch_11b
        0xd -> :sswitch_105
        0xe -> :sswitch_e7
        0xf -> :sswitch_cd
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf4c5444 -> :sswitch_34
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 823
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 851
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 852
    return-object p0

    .line 854
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->registerService(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 813
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 845
    const/4 v0, 0x1

    return v0
.end method
