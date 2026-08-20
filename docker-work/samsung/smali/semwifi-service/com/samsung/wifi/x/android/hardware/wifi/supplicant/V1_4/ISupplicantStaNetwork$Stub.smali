.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3398
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

    .line 3461
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3462
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 3463
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 3464
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

    .line 3431
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_48

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_70

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_84

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_98

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_ac

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_c0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_48
    .array-data 1
        -0x38t
        -0x5bt
        0x73t
        0x64t
        -0xat
        -0x53t
        0x20t
        -0x7ct
        0x2bt
        -0x1ft
        0x4ft
        0x4dt
        -0x4et
        -0x7ct
        -0x21t
        0x53t
        0x4t
        -0x9t
        0x52t
        0x1ct
        -0x58t
        -0x16t
        -0x3at
        -0x44t
        -0x3ft
        -0x6t
        0x6ct
        0x5bt
        0x46t
        0x6ft
        -0x48t
        -0x5at
    .end array-data

    :array_5c
    .array-data 1
        0x77t
        0x53t
        0x1ct
        -0x73t
        0x4t
        -0x71t
        -0x71t
        -0x76t
        -0x1bt
        0x32t
        -0x46t
        -0x43t
        0xct
        -0x58t
        0x63t
        0x32t
        -0x58t
        0x65t
        -0x14t
        -0x66t
        -0x54t
        -0x1ft
        -0x50t
        0x51t
        0x22t
        0x6et
        -0xet
        -0x4et
        0x11t
        0x23t
        -0x1at
        0x45t
    .end array-data

    :array_70
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

    :array_84
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

    :array_98
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

    :array_ac
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

    :array_c0
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3406
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    const-string v3, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 3471
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    const-wide/16 v1, 0x0

    const/16 v3, 0x20

    const-string v4, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    const-string v5, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    const-string v6, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_8f0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_9d6

    goto/16 :goto_8ee

    .line 5157
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->notifySyspropsChanged()V

    goto/16 :goto_8ee

    .line 5146
    :sswitch_23
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5148
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 5149
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5150
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5136
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->ping()V

    .line 5139
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5123
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5125
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->setHALInstrumentation()V

    goto/16 :goto_8ee

    .line 5089
    :sswitch_4b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 5092
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5094
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 5096
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v4, 0x8

    .line 5097
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    .line 5098
    invoke-virtual {p1, v4, v5, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5099
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_71
    if-ge v8, p2, :cond_8f

    mul-int/lit8 v0, v8, 0x20

    int-to-long v4, v0

    .line 5103
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_87

    .line 5105
    array-length v6, v0

    if-ne v6, v3, :cond_87

    .line 5109
    invoke-virtual {p4, v4, v5, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 5106
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5113
    :cond_8f
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5115
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5078
    :sswitch_9a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5080
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 5081
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5082
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5066
    :sswitch_ac
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 5069
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 5070
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5071
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5055
    :sswitch_c2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5057
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 5058
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5059
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5043
    :pswitch_d4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 5046
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->enableSaePkOnlyMode(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 5047
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5048
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5031
    :pswitch_ea
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 5034
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->setSaeH2eMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 5035
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5036
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5019
    :pswitch_100
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetworkCallback;

    move-result-object p1

    .line 5022
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 5023
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5024
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 5004
    :pswitch_11a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5006
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$48;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$48;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->getEdmg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getEdmgCallback;)V

    goto/16 :goto_8ee

    .line 4992
    :pswitch_127
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4995
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->setEdmg(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 4996
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4997
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4977
    :pswitch_13d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$47;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$47;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->getPairwiseCipher_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getPairwiseCipher_1_4Callback;)V

    goto/16 :goto_8ee

    .line 4965
    :pswitch_14a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4968
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->setPairwiseCipher_1_4(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 4969
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4970
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4950
    :pswitch_160
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4952
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$46;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$46;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->getGroupCipher_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getGroupCipher_1_4Callback;)V

    goto/16 :goto_8ee

    .line 4938
    :pswitch_16d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4941
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;->setGroupCipher_1_4(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 4942
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4943
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4926
    :pswitch_183
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4929
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setEapErp(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4930
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4931
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4911
    :pswitch_199
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4913
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$45;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$45;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getAuthAlg_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getAuthAlg_1_3Callback;)V

    goto/16 :goto_8ee

    .line 4899
    :pswitch_1a6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4902
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setAuthAlg_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4903
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4904
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4905
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4887
    :pswitch_1bc
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4890
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setPmkCache(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4891
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4892
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4872
    :pswitch_1d2
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4874
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$44;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$44;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getWapiCertSuite(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getWapiCertSuiteCallback;)V

    goto/16 :goto_8ee

    .line 4860
    :pswitch_1df
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4863
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setWapiCertSuite(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4864
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4865
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4845
    :pswitch_1f5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4847
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$43;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$43;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getGroupCipher_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getGroupCipher_1_3Callback;)V

    goto/16 :goto_8ee

    .line 4833
    :pswitch_202
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4836
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setPairwiseCipher_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4837
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4838
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4818
    :pswitch_218
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4820
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$42;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$42;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getPairwiseCipher_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getPairwiseCipher_1_3Callback;)V

    goto/16 :goto_8ee

    .line 4806
    :pswitch_225
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4809
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setGroupCipher_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4810
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4811
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4791
    :pswitch_23b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4793
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$41;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$41;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getProto_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getProto_1_3Callback;)V

    goto/16 :goto_8ee

    .line 4779
    :pswitch_248
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4782
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setProto_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4783
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4784
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4764
    :pswitch_25e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4766
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$40;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$40;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getKeyMgmt_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getKeyMgmt_1_3Callback;)V

    goto/16 :goto_8ee

    .line 4752
    :pswitch_26b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4755
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setKeyMgmt_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4756
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4757
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4737
    :pswitch_281
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4739
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$39;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$39;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->getOcsp(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getOcspCallback;)V

    goto/16 :goto_8ee

    .line 4725
    :pswitch_28e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4728
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;->setOcsp(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4729
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4730
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4713
    :pswitch_2a4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4716
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setSaePasswordId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4717
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4718
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4719
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4701
    :pswitch_2ba
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4704
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setSaePassword(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4705
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4706
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4686
    :pswitch_2d0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4688
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$38;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$38;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getSaePasswordId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordIdCallback;)V

    goto/16 :goto_8ee

    .line 4671
    :pswitch_2dd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$37;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$37;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getSaePassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordCallback;)V

    goto/16 :goto_8ee

    .line 4660
    :pswitch_2ea
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4662
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->enableSuiteBEapOpenSslCiphers()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4663
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4664
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4648
    :pswitch_2fc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4651
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->enableTlsSuiteBEapPhase1Param(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4652
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4653
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4633
    :pswitch_312
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$36;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$36;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getGroupMgmtCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupMgmtCipherCallback;)V

    goto/16 :goto_8ee

    .line 4621
    :pswitch_31f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4624
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setGroupMgmtCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4625
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4626
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4606
    :pswitch_335
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4608
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$35;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$35;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getGroupCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupCipher_1_2Callback;)V

    goto/16 :goto_8ee

    .line 4594
    :pswitch_342
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4597
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setGroupCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4598
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4599
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4600
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4579
    :pswitch_358
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4581
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$34;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$34;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getPairwiseCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getPairwiseCipher_1_2Callback;)V

    goto/16 :goto_8ee

    .line 4567
    :pswitch_365
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4570
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setPairwiseCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4571
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4572
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4552
    :pswitch_37b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4554
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$33;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$33;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->getKeyMgmt_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getKeyMgmt_1_2Callback;)V

    goto/16 :goto_8ee

    .line 4540
    :pswitch_388
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4543
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;->setKeyMgmt_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4544
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4545
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4527
    :pswitch_39e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 4531
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4532
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4533
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4515
    :pswitch_3b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4518
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->setEapEncryptedImsiIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4519
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4520
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4503
    :pswitch_3ce
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4506
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4507
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4508
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4492
    :pswitch_3e4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4495
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4496
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4472
    :pswitch_3f6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0xe

    new-array p4, p1, [B

    const-wide/16 v3, 0xe

    .line 4476
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 4479
    invoke-virtual {p2, v1, v2, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4483
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4484
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4485
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4459
    :pswitch_415
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4461
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 4462
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4463
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4464
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4465
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4448
    :pswitch_42f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4450
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4451
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4452
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4436
    :pswitch_441
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4438
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4439
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4440
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4441
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4425
    :pswitch_457
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4427
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->select()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4428
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4429
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4414
    :pswitch_469
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->disable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4417
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4418
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4402
    :pswitch_47b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4405
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->enable(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4406
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4407
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4408
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 4387
    :pswitch_491
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$32;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$32;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWpsNfcConfigurationToken(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    goto/16 :goto_8ee

    .line 4372
    :pswitch_49e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4374
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$31;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$31;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getIdStr(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    goto/16 :goto_8ee

    .line 4357
    :pswitch_4ab
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$30;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$30;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapDomainSuffixMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    goto/16 :goto_8ee

    .line 4342
    :pswitch_4b8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4344
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$29;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$29;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngineID(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    goto/16 :goto_8ee

    .line 4327
    :pswitch_4c5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4329
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$28;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$28;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngine(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    goto/16 :goto_8ee

    .line 4312
    :pswitch_4d2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4314
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$27;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAltSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    goto/16 :goto_8ee

    .line 4297
    :pswitch_4df
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4299
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$26;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    goto/16 :goto_8ee

    .line 4282
    :pswitch_4ec
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4284
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$25;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPrivateKeyId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    goto/16 :goto_8ee

    .line 4267
    :pswitch_4f9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4269
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$24;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapClientCert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    goto/16 :goto_8ee

    .line 4252
    :pswitch_506
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCAPath(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    goto/16 :goto_8ee

    .line 4237
    :pswitch_513
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4239
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCACert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    goto/16 :goto_8ee

    .line 4222
    :pswitch_520
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    goto/16 :goto_8ee

    .line 4207
    :pswitch_52d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4209
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$20;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAnonymousIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    goto/16 :goto_8ee

    .line 4192
    :pswitch_53a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4194
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$19;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    goto/16 :goto_8ee

    .line 4177
    :pswitch_547
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4179
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPhase2Method(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    goto/16 :goto_8ee

    .line 4162
    :pswitch_554
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4164
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapMethod(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    goto/16 :goto_8ee

    .line 4147
    :pswitch_561
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$16;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getRequirePmf(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    goto/16 :goto_8ee

    .line 4132
    :pswitch_56e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4134
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepTxKeyIdx(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    goto/16 :goto_8ee

    .line 4116
    :pswitch_57b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4119
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$14;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepKey(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    goto/16 :goto_8ee

    .line 4087
    :pswitch_58c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4089
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPsk(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    goto/16 :goto_8ee

    .line 4072
    :pswitch_599
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4074
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPskPassphrase(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    goto/16 :goto_8ee

    .line 4057
    :pswitch_5a6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPairwiseCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    goto/16 :goto_8ee

    .line 4042
    :pswitch_5b3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4044
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getGroupCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    goto/16 :goto_8ee

    .line 4027
    :pswitch_5c0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getAuthAlg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    goto/16 :goto_8ee

    .line 4012
    :pswitch_5cd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4014
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getProto(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    goto/16 :goto_8ee

    .line 3997
    :pswitch_5da
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getKeyMgmt(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    goto/16 :goto_8ee

    .line 3982
    :pswitch_5e7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3984
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getScanSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    goto/16 :goto_8ee

    .line 3953
    :pswitch_5f4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3955
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getBssid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    goto/16 :goto_8ee

    .line 3938
    :pswitch_601
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    goto/16 :goto_8ee

    .line 3926
    :pswitch_60e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3929
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setUpdateIdentifier(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3930
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3931
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3914
    :pswitch_624
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3917
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3918
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3919
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3902
    :pswitch_63a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3905
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3906
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3907
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3890
    :pswitch_650
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3893
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3894
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3895
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3878
    :pswitch_666
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3881
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3882
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3883
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3866
    :pswitch_67c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3869
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngine(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3870
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3871
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3854
    :pswitch_692
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3857
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3858
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3859
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3842
    :pswitch_6a8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3845
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3846
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3847
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3830
    :pswitch_6be
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3833
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3834
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3835
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3818
    :pswitch_6d4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3821
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3822
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3823
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3806
    :pswitch_6ea
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3809
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3810
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3811
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3794
    :pswitch_700
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3797
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3798
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3799
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3782
    :pswitch_716
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3785
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3786
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3787
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3770
    :pswitch_72c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3773
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3774
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3775
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3758
    :pswitch_742
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3761
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3762
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3763
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3746
    :pswitch_758
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3749
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPhase2Method(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3750
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3751
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3734
    :pswitch_76e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3737
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapMethod(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3738
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3739
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3722
    :pswitch_784
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3725
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setRequirePmf(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3726
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3727
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3710
    :pswitch_79a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3713
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepTxKeyIdx(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3714
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3715
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3697
    :pswitch_7b0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3701
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3702
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3703
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3677
    :pswitch_7ca
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v3, [B

    const-wide/16 v4, 0x20

    .line 3681
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3684
    invoke-virtual {p2, v1, v2, p1, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3688
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPsk([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3689
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3690
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3665
    :pswitch_7e7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3668
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3669
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3670
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3653
    :pswitch_7fd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3656
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPairwiseCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3657
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3658
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3659
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3641
    :pswitch_813
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3644
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setGroupCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3645
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3646
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3629
    :pswitch_829
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3632
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setAuthAlg(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3633
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3634
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3617
    :pswitch_83f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3620
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProto(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3621
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3622
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3605
    :pswitch_855
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3608
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setKeyMgmt(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3609
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3610
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8ee

    .line 3593
    :pswitch_86b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3596
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setScanSsid(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3597
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3598
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8ee

    .line 3573
    :pswitch_880
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p4, p1, [B

    const-wide/16 v3, 0x6

    .line 3577
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3580
    invoke-virtual {p2, v1, v2, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3584
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setBssid([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3585
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3586
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8ee

    .line 3561
    :pswitch_89d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3564
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3565
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3566
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8ee

    .line 3549
    :pswitch_8b2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object p1

    .line 3552
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3553
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3554
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8ee

    .line 3534
    :pswitch_8cb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3536
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    goto :goto_8ee

    .line 3519
    :pswitch_8d7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getInterfaceName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    goto :goto_8ee

    .line 3504
    :pswitch_8e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3506
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    :goto_8ee
    return-void

    nop

    :pswitch_data_8f0
    .packed-switch 0x1
        :pswitch_8e3
        :pswitch_8d7
        :pswitch_8cb
        :pswitch_8b2
        :pswitch_89d
        :pswitch_880
        :pswitch_86b
        :pswitch_855
        :pswitch_83f
        :pswitch_829
        :pswitch_813
        :pswitch_7fd
        :pswitch_7e7
        :pswitch_7ca
        :pswitch_7b0
        :pswitch_79a
        :pswitch_784
        :pswitch_76e
        :pswitch_758
        :pswitch_742
        :pswitch_72c
        :pswitch_716
        :pswitch_700
        :pswitch_6ea
        :pswitch_6d4
        :pswitch_6be
        :pswitch_6a8
        :pswitch_692
        :pswitch_67c
        :pswitch_666
        :pswitch_650
        :pswitch_63a
        :pswitch_624
        :pswitch_60e
        :pswitch_601
        :pswitch_5f4
        :pswitch_5e7
        :pswitch_5da
        :pswitch_5cd
        :pswitch_5c0
        :pswitch_5b3
        :pswitch_5a6
        :pswitch_599
        :pswitch_58c
        :pswitch_57b
        :pswitch_56e
        :pswitch_561
        :pswitch_554
        :pswitch_547
        :pswitch_53a
        :pswitch_52d
        :pswitch_520
        :pswitch_513
        :pswitch_506
        :pswitch_4f9
        :pswitch_4ec
        :pswitch_4df
        :pswitch_4d2
        :pswitch_4c5
        :pswitch_4b8
        :pswitch_4ab
        :pswitch_49e
        :pswitch_491
        :pswitch_47b
        :pswitch_469
        :pswitch_457
        :pswitch_441
        :pswitch_42f
        :pswitch_415
        :pswitch_3f6
        :pswitch_3e4
        :pswitch_3ce
        :pswitch_3b8
        :pswitch_39e
        :pswitch_388
        :pswitch_37b
        :pswitch_365
        :pswitch_358
        :pswitch_342
        :pswitch_335
        :pswitch_31f
        :pswitch_312
        :pswitch_2fc
        :pswitch_2ea
        :pswitch_2dd
        :pswitch_2d0
        :pswitch_2ba
        :pswitch_2a4
        :pswitch_28e
        :pswitch_281
        :pswitch_26b
        :pswitch_25e
        :pswitch_248
        :pswitch_23b
        :pswitch_225
        :pswitch_218
        :pswitch_202
        :pswitch_1f5
        :pswitch_1df
        :pswitch_1d2
        :pswitch_1bc
        :pswitch_1a6
        :pswitch_199
        :pswitch_183
        :pswitch_16d
        :pswitch_160
        :pswitch_14a
        :pswitch_13d
        :pswitch_127
        :pswitch_11a
        :pswitch_100
        :pswitch_ea
        :pswitch_d4
    .end packed-switch

    :sswitch_data_9d6
    .sparse-switch
        0xf43484e -> :sswitch_c2
        0xf444247 -> :sswitch_ac
        0xf445343 -> :sswitch_9a
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

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3483
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

    .line 3490
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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
