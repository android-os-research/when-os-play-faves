.class public abstract Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "ISileadFingerprint.java"

# interfaces
.implements Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 453
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

    .line 466
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 503
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 504
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 505
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 506
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 507
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

    .line 478
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
        0x5dt
        -0xct
        0x7bt
        -0x6at
        0x71t
        0x35t
        0x6ct
        -0x63t
        -0x56t
        -0x2t
        0x52t
        0x54t
        -0x19t
        0x57t
        -0x80t
        0x41t
        0x33t
        -0x21t
        0x21t
        0x56t
        -0x61t
        -0x1bt
        0xct
        -0x9t
        0x6ct
        -0x3t
        0x59t
        0x2at
        -0xat
        0x27t
        0x7at
        0x56t
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

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.silead.hardware.fingerprintext@1.0::ISileadFingerprint"

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

    .line 472
    const-string v0, "vendor.silead.hardware.fingerprintext@1.0::ISileadFingerprint"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 513
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 515
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

    .line 543
    const-string v0, "vendor.silead.hardware.fingerprintext@1.0::ISileadFingerprint"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_fa

    goto/16 :goto_f9

    .line 673
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->notifySyspropsChanged()V

    .line 676
    goto/16 :goto_f9

    .line 662
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 665
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_f9

    .line 652
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->ping()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    goto/16 :goto_f9

    .line 647
    :sswitch_32
    goto/16 :goto_f9

    .line 639
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->setHALInstrumentation()V

    .line 642
    goto/16 :goto_f9

    .line 605
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 608
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 612
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 613
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 614
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 615
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 616
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 618
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 619
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 621
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 625
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 626
    nop

    .line 616
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 622
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 629
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 631
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 633
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto :goto_f9

    .line 594
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_90
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto :goto_f9

    .line 582
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 585
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 586
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 587
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto :goto_f9

    .line 571
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 574
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto :goto_f9

    .line 559
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprintCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprintCallback;

    move-result-object v0

    .line 562
    .local v0, "clientCallback":Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprintCallback;
    invoke-virtual {p0, v0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->setNotify(Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprintCallback;)I

    move-result v1

    .line 563
    .local v1, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 564
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 565
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 566
    goto :goto_f9

    .line 546
    .end local v0    # "clientCallback":Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprintCallback;
    .end local v1    # "_hidl_out_debugErrno":I
    :sswitch_e0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 549
    .local v0, "cmdId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 550
    .local v1, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->requestCmd(ILjava/util/ArrayList;)I

    move-result v3

    .line 551
    .local v3, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 552
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    nop

    .line 685
    .end local v0    # "cmdId":I
    .end local v1    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_debugErrno":I
    :goto_f9
    return-void

    :sswitch_data_fa
    .sparse-switch
        0x1 -> :sswitch_e0
        0x2 -> :sswitch_c7
        0xf43484e -> :sswitch_b6
        0xf444247 -> :sswitch_a1
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 497
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 525
    const-string v0, "vendor.silead.hardware.fingerprintext@1.0::ISileadFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 526
    return-object p0

    .line 528
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

    .line 532
    invoke-virtual {p0, p1}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->registerService(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 487
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/silead/hardware/fingerprintext/V1_0/ISileadFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 519
    const/4 v0, 0x1

    return v0
.end method
