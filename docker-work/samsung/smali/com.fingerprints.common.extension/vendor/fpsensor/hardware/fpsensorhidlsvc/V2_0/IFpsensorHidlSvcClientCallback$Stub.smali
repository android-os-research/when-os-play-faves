.class public abstract Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IFpsensorHidlSvcClientCallback.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 368
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

    .line 381
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 418
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 419
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 420
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 421
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 422
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

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x28t
        -0x3ct
        0xft
        -0x69t
        0x6t
        -0x80t
        -0x13t
        -0x47t
        0x22t
        0x20t
        0x48t
        -0x21t
        0x3ct
        -0xat
        -0x5bt
        -0x5at
        0x3ft
        0x13t
        -0x6et
        -0x7t
        -0x5dt
        -0x38t
        0x62t
        0x14t
        -0x5bt
        0x14t
        0x51t
        0x1at
        -0x57t
        -0x33t
        -0x6t
        0x2t
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvcClientCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 387
    const-string v0, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvcClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 428
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 430
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

    .line 458
    const-string v0, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvcClientCallback"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_de

    goto/16 :goto_dd

    .line 585
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->notifySyspropsChanged()V

    .line 588
    goto/16 :goto_dd

    .line 574
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 577
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_dd

    .line 569
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    goto/16 :goto_dd

    .line 564
    :sswitch_26
    goto/16 :goto_dd

    .line 556
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->setHALInstrumentation()V

    .line 559
    goto/16 :goto_dd

    .line 522
    :sswitch_30
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 529
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 530
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 531
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 532
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 533
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_57
    if-ge v4, v3, :cond_78

    .line 535
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 536
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 538
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_70

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_70

    .line 542
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 543
    nop

    .line 533
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 539
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_70
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 546
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_78
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 548
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 550
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 551
    goto :goto_dd

    .line 511
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_84
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto :goto_dd

    .line 502
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto :goto_dd

    .line 491
    :sswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 494
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 495
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 496
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 497
    goto :goto_dd

    .line 481
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 484
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 485
    .local v1, "rsp_len":I
    invoke-virtual {p0, v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->onCommonPassiveRsp(Ljava/util/ArrayList;I)V

    .line 486
    goto :goto_dd

    .line 470
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "rsp_len":I
    :sswitch_bf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 473
    .local v0, "result":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 474
    .local v1, "img_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 475
    .local v2, "img_len":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->onRawImageCaptured(ILjava/util/ArrayList;I)V

    .line 476
    goto :goto_dd

    .line 461
    .end local v0    # "result":I
    .end local v1    # "img_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "img_len":I
    :sswitch_d2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 464
    .local v0, "finger_status":I
    invoke-virtual {p0, v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->onFingerDetected(I)V

    .line 465
    nop

    .line 597
    .end local v0    # "finger_status":I
    :goto_dd
    return-void

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_d2
        0x2 -> :sswitch_bf
        0x3 -> :sswitch_b0
        0xf43484e -> :sswitch_9f
        0xf444247 -> :sswitch_95
        0xf445343 -> :sswitch_84
        0xf485348 -> :sswitch_30
        0xf494e54 -> :sswitch_28
        0xf4c5444 -> :sswitch_26
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 412
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 440
    const-string v0, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvcClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    return-object p0

    .line 443
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

    .line 447
    invoke-virtual {p0, p1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 434
    const/4 v0, 0x1

    return v0
.end method
