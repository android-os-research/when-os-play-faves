.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2848
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

    .line 2907
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2908
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2909
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2910
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

    .line 2879
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
        -0x11t
        -0x45t
        0x6t
        0x1ct
        -0x6at
        -0x61t
        -0x57t
        0x55t
        0x3dt
        0x24t
        0x3dt
        -0x5at
        -0x12t
        0x23t
        -0x48t
        0x3ft
        -0x1bt
        -0x2ct
        -0x56t
        0x66t
        0x3at
        0x7bt
        -0x78t
        -0x6at
        -0x53t
        -0x3bt
        0x2et
        0x2bt
        0x1t
        0x5bt
        -0x3et
        -0xdt
    .end array-data

    :array_4c
    .array-data 1
        0x10t
        -0x1t
        0x2ft
        -0x52t
        0x51t
        0x63t
        0x46t
        -0x48t
        0x61t
        0x21t
        0x36t
        -0x74t
        -0x1bt
        0x79t
        0xdt
        0x5at
        -0x34t
        -0x21t
        -0x35t
        0x73t
        -0x68t
        0x32t
        0x46t
        -0x48t
        0x13t
        -0xdt
        -0x2ct
        -0x78t
        -0x4at
        0x6dt
        -0x4ct
        0x5at
    .end array-data

    :array_60
    .array-data 1
        -0x4ft
        0x2et
        -0x10t
        -0x43t
        -0x28t
        -0x5ct
        -0x2et
        0x47t
        -0x58t
        -0x5at
        -0x17t
        0x60t
        -0x4et
        0x27t
        -0x13t
        0x32t
        0x38t
        0x3ft
        0x2bt
        0x2t
        0x41t
        -0xbt
        0x5dt
        0x67t
        -0x4t
        -0x16t
        0x6et
        -0x1t
        0x6at
        0x67t
        0x37t
        -0x6t
    .end array-data

    :array_74
    .array-data 1
        -0x33t
        -0x60t
        0x10t
        0x8t
        -0x40t
        0x69t
        0x22t
        -0x6t
        0x37t
        -0x3ft
        0x21t
        0x3et
        -0x65t
        -0x48t
        0x31t
        -0x5ft
        0x9t
        -0x4dt
        0x17t
        0x45t
        0x32t
        -0x80t
        0x56t
        0x16t
        -0x5t
        0x71t
        0x61t
        -0x13t
        -0x3ct
        0x3t
        -0x7at
        0x6ft
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

    .line 2856
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    const-string p0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2917
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

    const-string p4, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    const-wide/16 v1, 0x0

    const/16 v3, 0x20

    const-string v4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    const/4 v5, 0x0

    const-string v6, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    packed-switch p1, :pswitch_data_71c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_7d0

    goto/16 :goto_71a

    .line 4273
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->notifySyspropsChanged()V

    goto/16 :goto_71a

    .line 4262
    :sswitch_1f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 4265
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4266
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4252
    :sswitch_31
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->ping()V

    .line 4255
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4239
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4241
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->setHALInstrumentation()V

    goto/16 :goto_71a

    .line 4205
    :sswitch_47
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 4208
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4210
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 4212
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v6, 0x8

    .line 4213
    invoke-virtual {p1, v6, v7, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0xc

    .line 4214
    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4215
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6d
    if-ge v5, p2, :cond_8b

    mul-int/lit8 v0, v5, 0x20

    int-to-long v6, v0

    .line 4219
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_83

    .line 4221
    array-length v4, v0

    if-ne v4, v3, :cond_83

    .line 4225
    invoke-virtual {p4, v6, v7, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 4222
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4229
    :cond_8b
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4231
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4233
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4194
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4196
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 4197
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4198
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4182
    :sswitch_a8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 4185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 4186
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4187
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4171
    :sswitch_be
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 4174
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4175
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4159
    :pswitch_d0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4162
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setSaePasswordId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4163
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4164
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4147
    :pswitch_e6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4150
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setSaePassword(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4151
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4152
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4132
    :pswitch_fc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4134
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$38;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$38;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getSaePasswordId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordIdCallback;)V

    goto/16 :goto_71a

    .line 4117
    :pswitch_109
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4119
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$37;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$37;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getSaePassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordCallback;)V

    goto/16 :goto_71a

    .line 4106
    :pswitch_116
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4108
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->enableSuiteBEapOpenSslCiphers()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4109
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4110
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4094
    :pswitch_128
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4097
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->enableTlsSuiteBEapPhase1Param(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4098
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4099
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4079
    :pswitch_13e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4081
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$36;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$36;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getGroupMgmtCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupMgmtCipherCallback;)V

    goto/16 :goto_71a

    .line 4067
    :pswitch_14b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4070
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setGroupMgmtCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4071
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4072
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4052
    :pswitch_161
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4054
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$35;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$35;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getGroupCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupCipher_1_2Callback;)V

    goto/16 :goto_71a

    .line 4040
    :pswitch_16e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4043
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setGroupCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4044
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4045
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 4025
    :pswitch_184
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$34;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$34;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getPairwiseCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getPairwiseCipher_1_2Callback;)V

    goto/16 :goto_71a

    .line 4013
    :pswitch_191
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4016
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setPairwiseCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4017
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4018
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3998
    :pswitch_1a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4000
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$33;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$33;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getKeyMgmt_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getKeyMgmt_1_2Callback;)V

    goto/16 :goto_71a

    .line 3986
    :pswitch_1b4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3989
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setKeyMgmt_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3990
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3991
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3973
    :pswitch_1ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3977
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3978
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3979
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3961
    :pswitch_1e4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3964
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->setEapEncryptedImsiIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3965
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3966
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3967
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3949
    :pswitch_1fa
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3952
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3953
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3954
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3938
    :pswitch_210
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3941
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3942
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3918
    :pswitch_222
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0xe

    new-array p4, p1, [B

    const-wide/16 v3, 0xe

    .line 3922
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3925
    invoke-virtual {p2, v1, v2, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3929
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3930
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3931
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3905
    :pswitch_241
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3907
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 3908
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3909
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3910
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3911
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3894
    :pswitch_25b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3897
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3898
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3899
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3882
    :pswitch_26d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3885
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3886
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3887
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3871
    :pswitch_283
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->select()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3874
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3875
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3876
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3860
    :pswitch_295
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->disable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3863
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3864
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3848
    :pswitch_2a7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3851
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->enable(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3852
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3853
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3833
    :pswitch_2bd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$32;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$32;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWpsNfcConfigurationToken(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    goto/16 :goto_71a

    .line 3818
    :pswitch_2ca
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$31;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$31;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getIdStr(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    goto/16 :goto_71a

    .line 3803
    :pswitch_2d7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3805
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$30;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$30;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapDomainSuffixMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    goto/16 :goto_71a

    .line 3788
    :pswitch_2e4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$29;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$29;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngineID(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    goto/16 :goto_71a

    .line 3773
    :pswitch_2f1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3775
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$28;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$28;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngine(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    goto/16 :goto_71a

    .line 3758
    :pswitch_2fe
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$27;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAltSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    goto/16 :goto_71a

    .line 3743
    :pswitch_30b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3745
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$26;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    goto/16 :goto_71a

    .line 3728
    :pswitch_318
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3730
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$25;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPrivateKeyId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    goto/16 :goto_71a

    .line 3713
    :pswitch_325
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3715
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$24;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapClientCert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    goto/16 :goto_71a

    .line 3698
    :pswitch_332
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3700
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCAPath(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    goto/16 :goto_71a

    .line 3683
    :pswitch_33f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3685
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCACert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    goto/16 :goto_71a

    .line 3668
    :pswitch_34c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3670
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    goto/16 :goto_71a

    .line 3653
    :pswitch_359
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$20;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAnonymousIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    goto/16 :goto_71a

    .line 3638
    :pswitch_366
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3640
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$19;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    goto/16 :goto_71a

    .line 3623
    :pswitch_373
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3625
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPhase2Method(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    goto/16 :goto_71a

    .line 3608
    :pswitch_380
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3610
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapMethod(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    goto/16 :goto_71a

    .line 3593
    :pswitch_38d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3595
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$16;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getRequirePmf(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    goto/16 :goto_71a

    .line 3578
    :pswitch_39a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3580
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepTxKeyIdx(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    goto/16 :goto_71a

    .line 3562
    :pswitch_3a7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3565
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$14;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepKey(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    goto/16 :goto_71a

    .line 3533
    :pswitch_3b8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3535
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPsk(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    goto/16 :goto_71a

    .line 3518
    :pswitch_3c5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3520
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPskPassphrase(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    goto/16 :goto_71a

    .line 3503
    :pswitch_3d2
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3505
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPairwiseCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    goto/16 :goto_71a

    .line 3488
    :pswitch_3df
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3490
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getGroupCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    goto/16 :goto_71a

    .line 3473
    :pswitch_3ec
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getAuthAlg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    goto/16 :goto_71a

    .line 3458
    :pswitch_3f9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3460
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getProto(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    goto/16 :goto_71a

    .line 3443
    :pswitch_406
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getKeyMgmt(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    goto/16 :goto_71a

    .line 3428
    :pswitch_413
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3430
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getScanSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    goto/16 :goto_71a

    .line 3399
    :pswitch_420
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3401
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getBssid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    goto/16 :goto_71a

    .line 3384
    :pswitch_42d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    goto/16 :goto_71a

    .line 3372
    :pswitch_43a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3375
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setUpdateIdentifier(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3376
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3377
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3360
    :pswitch_450
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3363
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3364
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3365
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3366
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3348
    :pswitch_466
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3351
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3352
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3353
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3336
    :pswitch_47c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3339
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3340
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3341
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3324
    :pswitch_492
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3327
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3328
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3329
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3330
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3312
    :pswitch_4a8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3315
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngine(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3316
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3317
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3300
    :pswitch_4be
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3303
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3304
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3305
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3288
    :pswitch_4d4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3291
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3292
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3293
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3276
    :pswitch_4ea
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3279
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3280
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3281
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3282
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3264
    :pswitch_500
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3267
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3268
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3269
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3252
    :pswitch_516
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3255
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3256
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3257
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3240
    :pswitch_52c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3243
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3244
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3245
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3228
    :pswitch_542
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3231
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3232
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3233
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3216
    :pswitch_558
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3219
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3220
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3221
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3204
    :pswitch_56e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3207
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3208
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3209
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3192
    :pswitch_584
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3195
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPhase2Method(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3196
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3197
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3180
    :pswitch_59a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3183
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapMethod(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3184
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3185
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3168
    :pswitch_5b0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3171
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setRequirePmf(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3172
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3173
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3156
    :pswitch_5c6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3159
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepTxKeyIdx(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3160
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3161
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3143
    :pswitch_5dc
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3147
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3148
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3149
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3123
    :pswitch_5f6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v3, [B

    const-wide/16 v6, 0x20

    .line 3127
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3130
    invoke-virtual {p2, v1, v2, p1, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3134
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPsk([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3135
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3136
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3111
    :pswitch_613
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3114
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3115
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3116
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3099
    :pswitch_629
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3102
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPairwiseCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3103
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3104
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3087
    :pswitch_63f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3090
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setGroupCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3091
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3092
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3075
    :pswitch_655
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3078
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setAuthAlg(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3079
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3080
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3063
    :pswitch_66b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3066
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProto(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3067
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3068
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3051
    :pswitch_681
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3054
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setKeyMgmt(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3055
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3056
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_71a

    .line 3039
    :pswitch_697
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3042
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setScanSsid(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3043
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3044
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_71a

    .line 3019
    :pswitch_6ac
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p4, p1, [B

    const-wide/16 v3, 0x6

    .line 3023
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3026
    invoke-virtual {p2, v1, v2, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3030
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setBssid([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3031
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3032
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_71a

    .line 3007
    :pswitch_6c9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3010
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3011
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3012
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_71a

    .line 2995
    :pswitch_6de
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object p1

    .line 2998
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2999
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_71a

    .line 2980
    :pswitch_6f7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2982
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    goto :goto_71a

    .line 2965
    :pswitch_703
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2967
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getInterfaceName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    goto :goto_71a

    .line 2950
    :pswitch_70f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2952
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    :goto_71a
    return-void

    nop

    :pswitch_data_71c
    .packed-switch 0x1
        :pswitch_70f
        :pswitch_703
        :pswitch_6f7
        :pswitch_6de
        :pswitch_6c9
        :pswitch_6ac
        :pswitch_697
        :pswitch_681
        :pswitch_66b
        :pswitch_655
        :pswitch_63f
        :pswitch_629
        :pswitch_613
        :pswitch_5f6
        :pswitch_5dc
        :pswitch_5c6
        :pswitch_5b0
        :pswitch_59a
        :pswitch_584
        :pswitch_56e
        :pswitch_558
        :pswitch_542
        :pswitch_52c
        :pswitch_516
        :pswitch_500
        :pswitch_4ea
        :pswitch_4d4
        :pswitch_4be
        :pswitch_4a8
        :pswitch_492
        :pswitch_47c
        :pswitch_466
        :pswitch_450
        :pswitch_43a
        :pswitch_42d
        :pswitch_420
        :pswitch_413
        :pswitch_406
        :pswitch_3f9
        :pswitch_3ec
        :pswitch_3df
        :pswitch_3d2
        :pswitch_3c5
        :pswitch_3b8
        :pswitch_3a7
        :pswitch_39a
        :pswitch_38d
        :pswitch_380
        :pswitch_373
        :pswitch_366
        :pswitch_359
        :pswitch_34c
        :pswitch_33f
        :pswitch_332
        :pswitch_325
        :pswitch_318
        :pswitch_30b
        :pswitch_2fe
        :pswitch_2f1
        :pswitch_2e4
        :pswitch_2d7
        :pswitch_2ca
        :pswitch_2bd
        :pswitch_2a7
        :pswitch_295
        :pswitch_283
        :pswitch_26d
        :pswitch_25b
        :pswitch_241
        :pswitch_222
        :pswitch_210
        :pswitch_1fa
        :pswitch_1e4
        :pswitch_1ca
        :pswitch_1b4
        :pswitch_1a7
        :pswitch_191
        :pswitch_184
        :pswitch_16e
        :pswitch_161
        :pswitch_14b
        :pswitch_13e
        :pswitch_128
        :pswitch_116
        :pswitch_109
        :pswitch_fc
        :pswitch_e6
        :pswitch_d0
    .end packed-switch

    :sswitch_data_7d0
    .sparse-switch
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_47
        0xf494e54 -> :sswitch_3f
        0xf504e47 -> :sswitch_31
        0xf524546 -> :sswitch_1f
        0xf535953 -> :sswitch_17
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2929
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

    .line 2936
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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
