.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1765
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

    .line 1826
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1827
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1828
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1829
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

    .line 1797
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_40

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_54

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_68

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_90

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_a4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_40
    .array-data 1
        0xdt
        0x5at
        -0x25t
        -0x39t
        -0x36t
        0x36t
        -0x64t
        -0x5dt
        0xct
        0x64t
        -0x5dt
        -0x1dt
        -0x10t
        0x21t
        0x33t
        0x5ft
        -0x67t
        0x10t
        0x55t
        0x78t
        0x7bt
        -0x38t
        0xat
        -0x4ct
        0x4bt
        -0x45t
        -0x46t
        -0x60t
        0x56t
        -0x2bt
        0x51t
        0x5bt
    .end array-data

    :array_54
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

    :array_68
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

    :array_7c
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

    :array_90
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

    :array_a4
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1773
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIfaceCallback"

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const-string v3, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1836
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

    const-string p4, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIfaceCallback"

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const/16 v1, 0x20

    const-string v2, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    const-wide/16 v3, 0x6

    const-wide/16 v5, 0x0

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    const/4 v8, 0x6

    packed-switch p1, :pswitch_data_330

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_376

    goto/16 :goto_32f

    .line 2415
    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_32f

    .line 2404
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2407
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2408
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2394
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 2397
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2381
    :sswitch_42
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_32f

    .line 2347
    :sswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2350
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2352
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2354
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 2355
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 2356
    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2357
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_70
    if-ge p4, p2, :cond_8e

    mul-int/lit8 v2, p4, 0x20

    int-to-long v2, v2

    .line 2361
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_86

    .line 2363
    array-length v7, v4

    if-ne v7, v1, :cond_86

    .line 2367
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_70

    .line 2364
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2371
    :cond_8e
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2373
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2336
    :sswitch_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2339
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2340
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2324
    :sswitch_ab
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2328
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2329
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2330
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2313
    :sswitch_c1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2316
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2317
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 2304
    :pswitch_d3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2307
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;->onNetworkNotFound(Ljava/util/ArrayList;)V

    goto/16 :goto_32f

    .line 2294
    :pswitch_df
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;-><init>()V

    .line 2297
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2298
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;->onAssociationRejected_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AssociationRejectionData;)V

    goto/16 :goto_32f

    .line 2273
    :pswitch_ef
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2277
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 2280
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2284
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 2285
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2286
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 2287
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2288
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;->onAnqpQueryDone_1_4([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto/16 :goto_32f

    .line 2255
    :pswitch_110
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2259
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 2262
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2267
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;->onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V

    goto/16 :goto_32f

    .line 2234
    :pswitch_125
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-array v2, v8, [B

    .line 2239
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p1

    .line 2242
    invoke-virtual {p1, v5, v6, v2, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    move-object v0, p0

    .line 2249
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V

    goto/16 :goto_32f

    .line 2225
    :pswitch_147
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2228
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onEapFailure_1_3(I)V

    goto/16 :goto_32f

    .line 2215
    :pswitch_153
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;-><init>()V

    .line 2218
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2219
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V

    goto/16 :goto_32f

    .line 2203
    :pswitch_163
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 2207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 2208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2209
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_32f

    .line 2194
    :pswitch_17b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2197
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppProgress_1_3(I)V

    goto/16 :goto_32f

    .line 2185
    :pswitch_187
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2188
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppSuccess(I)V

    goto/16 :goto_32f

    .line 2175
    :pswitch_193
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 2178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2179
    invoke-interface {p0, p3, p4, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onPmkCacheAdded(JLjava/util/ArrayList;)V

    goto/16 :goto_32f

    .line 2166
    :pswitch_1a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2169
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppFailure(I)V

    goto/16 :goto_32f

    .line 2157
    :pswitch_1af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2160
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    goto/16 :goto_32f

    .line 2149
    :pswitch_1bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    goto/16 :goto_32f

    .line 2129
    :pswitch_1c3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [B

    const-wide/16 v2, 0x20

    .line 2135
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2138
    invoke-virtual {v0, v5, v6, p4, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2143
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    goto/16 :goto_32f

    :pswitch_1e2
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 2120
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2123
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->onEapFailure_1_1(I)V

    goto/16 :goto_32f

    .line 2111
    :pswitch_1f0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2114
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_32f

    .line 2102
    :pswitch_1fc
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2105
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    goto/16 :goto_32f

    .line 2094
    :pswitch_208
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    goto/16 :goto_32f

    .line 2075
    :pswitch_210
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2079
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 2082
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p3

    .line 2087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p2

    .line 2088
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventFail([BSS)V

    goto/16 :goto_32f

    .line 2067
    :pswitch_229
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    goto/16 :goto_32f

    .line 2049
    :pswitch_231
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    new-array p3, v8, [B

    .line 2054
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2057
    invoke-virtual {p2, v5, v6, p3, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2061
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    goto/16 :goto_32f

    .line 2041
    :pswitch_246
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onEapFailure()V

    goto/16 :goto_32f

    .line 2024
    :pswitch_24e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2028
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2031
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2035
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    goto/16 :goto_32f

    .line 2005
    :pswitch_25f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2009
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 2012
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 2017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2018
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAssociationRejected([BIZ)V

    goto/16 :goto_32f

    .line 1986
    :pswitch_278
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 1990
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1993
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1999
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    goto/16 :goto_32f

    .line 1966
    :pswitch_291
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 1970
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1973
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1980
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_32f

    .line 1947
    :pswitch_2ae
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 1951
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1954
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p3

    .line 1959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1960
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto :goto_32f

    .line 1928
    :pswitch_2c6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 1932
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1935
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1941
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_32f

    .line 1907
    :pswitch_2de
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 1911
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1914
    invoke-virtual {p3, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1918
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 1919
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1920
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 1921
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1922
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto :goto_32f

    .line 1887
    :pswitch_2fe
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p3, v8, [B

    .line 1892
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 1895
    invoke-virtual {p4, v5, v6, p3, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1900
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1901
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    goto :goto_32f

    .line 1878
    :pswitch_31a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1881
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_32f

    .line 1869
    :pswitch_325
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1872
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    :goto_32f
    return-void

    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_325
        :pswitch_31a
        :pswitch_2fe
        :pswitch_2de
        :pswitch_2c6
        :pswitch_2ae
        :pswitch_291
        :pswitch_278
        :pswitch_25f
        :pswitch_24e
        :pswitch_246
        :pswitch_231
        :pswitch_229
        :pswitch_210
        :pswitch_208
        :pswitch_1fc
        :pswitch_1f0
        :pswitch_1e2
        :pswitch_1c3
        :pswitch_1bb
        :pswitch_1af
        :pswitch_1a3
        :pswitch_193
        :pswitch_187
        :pswitch_17b
        :pswitch_163
        :pswitch_153
        :pswitch_147
        :pswitch_125
        :pswitch_110
        :pswitch_ef
        :pswitch_df
        :pswitch_d3
    .end packed-switch

    :sswitch_data_376
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_4a
        0xf494e54 -> :sswitch_42
        0xf504e47 -> :sswitch_34
        0xf524546 -> :sswitch_22
        0xf535953 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIfaceCallback"

    .line 1848
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

    .line 1855
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
