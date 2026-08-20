.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1635
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

    .line 1694
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1695
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1696
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1697
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

    .line 1666
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
        0x2ct
        -0x1ft
        -0x9t
        -0x5t
        0x52t
        -0x1ct
        -0x61t
        -0x80t
        -0x4ft
        0x3at
        -0x65t
        0x15t
        0x3dt
        0x49t
        0x1bt
        -0x32t
        0x53t
        0x5t
        0x52t
        -0x10t
        0x23t
        0x57t
        -0x16t
        0x72t
        -0x66t
        -0x36t
        -0x17t
        0x22t
        -0x58t
        0x65t
        -0x61t
        -0x6dt
    .end array-data

    :array_4c
    .array-data 1
        0x9t
        -0x20t
        -0x75t
        0x5dt
        0x12t
        -0x4ft
        0x9t
        0x56t
        0x2et
        -0x33t
        -0x28t
        -0x78t
        0x25t
        0x32t
        -0x3t
        0x1ft
        0x2ct
        0x46t
        0x39t
        0x58t
        -0x72t
        0x7t
        0x76t
        -0x63t
        0x5ct
        0x73t
        -0x6at
        -0x49t
        -0x3bt
        -0x47t
        -0xdt
        0x4ft
    .end array-data

    :array_60
    .array-data 1
        -0x33t
        0x43t
        0x30t
        -0x3dt
        0x19t
        0x6bt
        -0x26t
        0x1dt
        0x64t
        0x2at
        0x32t
        -0x55t
        -0x2t
        0x23t
        -0x59t
        -0x2at
        0x4et
        -0x41t
        -0x43t
        -0x59t
        0x21t
        -0x6ct
        0x6t
        0x43t
        -0x51t
        0x68t
        0x67t
        -0x51t
        0x3bt
        0x3ft
        0xat
        -0x57t
    .end array-data

    :array_74
    .array-data 1
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    .line 1643
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const-string v2, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    const-string p0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1704
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

    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const/16 v0, 0x20

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    const-wide/16 v2, 0x6

    const-wide/16 v4, 0x0

    const-string v6, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    const/4 v7, 0x6

    packed-switch p1, :pswitch_data_2de

    const/4 p4, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_31c

    goto/16 :goto_2dc

    .line 2225
    :sswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2dc

    .line 2214
    :sswitch_20
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2217
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2218
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2204
    :sswitch_32
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 2207
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2191
    :sswitch_40
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_2dc

    .line 2157
    :sswitch_48
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2160
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2162
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2164
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 2165
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 2166
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2167
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6e
    if-ge p4, p2, :cond_8c

    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 2171
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_84

    .line 2173
    array-length v7, v6

    if-ne v7, v0, :cond_84

    .line 2177
    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6e

    .line 2174
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2181
    :cond_8c
    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2183
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2146
    :sswitch_97
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2149
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2150
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2134
    :sswitch_a9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2139
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2123
    :sswitch_bf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2126
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2127
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2dc

    .line 2102
    :pswitch_d1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-array p1, v7, [B

    .line 2107
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 2110
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    move-object v0, p0

    move-object v2, p1

    .line 2117
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V

    goto/16 :goto_2dc

    .line 2093
    :pswitch_f4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2096
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onEapFailure_1_3(I)V

    goto/16 :goto_2dc

    .line 2083
    :pswitch_100
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;-><init>()V

    .line 2086
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2087
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V

    goto/16 :goto_2dc

    .line 2071
    :pswitch_110
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 2075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2077
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2dc

    .line 2062
    :pswitch_128
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2065
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppProgress_1_3(I)V

    goto/16 :goto_2dc

    .line 2053
    :pswitch_134
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2056
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppSuccess(I)V

    goto/16 :goto_2dc

    .line 2043
    :pswitch_140
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 2046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2047
    invoke-interface {p0, p3, p4, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onPmkCacheAdded(JLjava/util/ArrayList;)V

    goto/16 :goto_2dc

    .line 2034
    :pswitch_150
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2037
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppFailure(I)V

    goto/16 :goto_2dc

    .line 2025
    :pswitch_15c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2028
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    goto/16 :goto_2dc

    .line 2017
    :pswitch_168
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    goto/16 :goto_2dc

    .line 1997
    :pswitch_170
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [B

    const-wide/16 v1, 0x20

    .line 2003
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 2006
    invoke-virtual {v1, v4, v5, p4, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2011
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    goto/16 :goto_2dc

    :pswitch_18f
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 1988
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1991
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->onEapFailure_1_1(I)V

    goto/16 :goto_2dc

    .line 1979
    :pswitch_19d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1982
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_2dc

    .line 1970
    :pswitch_1a9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1973
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    goto/16 :goto_2dc

    .line 1962
    :pswitch_1b5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    goto/16 :goto_2dc

    .line 1943
    :pswitch_1bd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1947
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1950
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p3

    .line 1955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p2

    .line 1956
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventFail([BSS)V

    goto/16 :goto_2dc

    .line 1935
    :pswitch_1d6
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    goto/16 :goto_2dc

    .line 1917
    :pswitch_1de
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    new-array p3, v7, [B

    .line 1922
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1925
    invoke-virtual {p2, v4, v5, p3, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1929
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    goto/16 :goto_2dc

    .line 1909
    :pswitch_1f3
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onEapFailure()V

    goto/16 :goto_2dc

    .line 1892
    :pswitch_1fb
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1896
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1899
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1903
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    goto/16 :goto_2dc

    .line 1873
    :pswitch_20c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1877
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1880
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1886
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAssociationRejected([BIZ)V

    goto/16 :goto_2dc

    .line 1854
    :pswitch_225
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1858
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1861
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1865
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1867
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    goto/16 :goto_2dc

    .line 1834
    :pswitch_23e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1838
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1841
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1847
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1848
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_2dc

    .line 1815
    :pswitch_25b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1819
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1822
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p3

    .line 1827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1828
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto :goto_2dc

    .line 1796
    :pswitch_273
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1800
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1803
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1809
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2dc

    .line 1775
    :pswitch_28b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 1779
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1782
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1786
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 1787
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1788
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 1789
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1790
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto :goto_2dc

    .line 1755
    :pswitch_2ab
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p3, v7, [B

    .line 1760
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 1763
    invoke-virtual {p4, v4, v5, p3, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1769
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    goto :goto_2dc

    .line 1746
    :pswitch_2c7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1749
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_2dc

    .line 1737
    :pswitch_2d2
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1740
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    :goto_2dc
    return-void

    nop

    :pswitch_data_2de
    .packed-switch 0x1
        :pswitch_2d2
        :pswitch_2c7
        :pswitch_2ab
        :pswitch_28b
        :pswitch_273
        :pswitch_25b
        :pswitch_23e
        :pswitch_225
        :pswitch_20c
        :pswitch_1fb
        :pswitch_1f3
        :pswitch_1de
        :pswitch_1d6
        :pswitch_1bd
        :pswitch_1b5
        :pswitch_1a9
        :pswitch_19d
        :pswitch_18f
        :pswitch_170
        :pswitch_168
        :pswitch_15c
        :pswitch_150
        :pswitch_140
        :pswitch_134
        :pswitch_128
        :pswitch_110
        :pswitch_100
        :pswitch_f4
        :pswitch_d1
    .end packed-switch

    :sswitch_data_31c
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_48
        0xf494e54 -> :sswitch_40
        0xf504e47 -> :sswitch_32
        0xf524546 -> :sswitch_20
        0xf535953 -> :sswitch_18
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 1716
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

    .line 1723
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
