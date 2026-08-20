.class public abstract Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadgetCallback.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 466
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

    .line 521
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 522
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 523
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 524
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

    .line 495
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
        -0x3bt
        0x39t
        0x32t
        0x5bt
        0x22t
        -0x44t
        -0x1at
        -0x7at
        -0x79t
        0x6ft
        0x6t
        0x2bt
        0x16t
        0x29t
        0x20t
        0x38t
        0x55t
        0x5at
        -0x1et
        -0x7bt
        0x7et
        -0x73t
        0x34t
        -0x56t
        0x63t
        -0x57t
        0x75t
        -0x21t
        0x18t
        -0x1ft
        0x13t
        -0x4ft
    .end array-data

    :array_3c
    .array-data 1
        -0x53t
        0xat
        0x62t
        0xct
        -0x26t
        0x8t
        -0x10t
        0x1bt
        0x15t
        0x1ct
        0x30t
        -0x35t
        0x7at
        -0x6t
        0x23t
        -0x50t
        0x63t
        0x7ct
        -0x38t
        0x43t
        0x40t
        -0x31t
        -0x73t
        -0x14t
        0x0t
        -0x54t
        -0x72t
        0x32t
        -0x31t
        0x54t
        -0x58t
        -0x25t
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

    .line 474
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.usb.gadget@1.2::IUsbGadgetCallback"

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

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

    const-string p0, "android.hardware.usb.gadget@1.2::IUsbGadgetCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 531
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

    const-string p4, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d9

    const/4 p4, 0x3

    if-eq p1, p4, :cond_cc

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_f8

    goto/16 :goto_f6

    .line 695
    :sswitch_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_f6

    .line 684
    :sswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 687
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f6

    .line 674
    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->ping()V

    .line 677
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f6

    .line 661
    :sswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_f6

    .line 627
    :sswitch_43
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 630
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 634
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 635
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 636
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 637
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge p4, p2, :cond_89

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 641
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_81

    .line 643
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 647
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_69

    .line 644
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v1, 0x0

    .line 651
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 653
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_f6

    .line 616
    :sswitch_95
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 619
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_f6

    .line 604
    :sswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 608
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 609
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_f6

    .line 593
    :sswitch_bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 596
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_f6

    :cond_cc
    const-string p1, "android.hardware.usb.gadget@1.2::IUsbGadgetCallback"

    .line 584
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 587
    invoke-interface {p0, p1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;->getUsbSpeedCb(I)V

    goto :goto_f6

    .line 574
    :cond_d9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 578
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->getCurrentUsbFunctionsCb(JI)V

    goto :goto_f6

    .line 564
    :cond_e8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 568
    invoke-interface {p0, p3, p4, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->setCurrentUsbFunctionsCb(JI)V

    :goto_f6
    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a6
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf504e47 -> :sswitch_2d
        0xf524546 -> :sswitch_1b
        0xf535953 -> :sswitch_13
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.usb.gadget@1.2::IUsbGadgetCallback"

    .line 543
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

    .line 550
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
