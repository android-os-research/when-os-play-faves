.class public abstract Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_1/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_1/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 468
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

    .line 523
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 524
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 525
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 526
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

    .line 497
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
        0x77t
        0x46t
        -0x3t
        -0x5ft
        -0x5t
        -0x7t
        -0x39t
        -0x3ft
        0x32t
        -0x46t
        -0x19t
        0x1t
        -0x34t
        0x5at
        0x16t
        0x13t
        0x9t
        -0x1ct
        -0xbt
        -0x19t
        -0xdt
        -0x18t
        0x6t
        0x58t
        0x11t
        0x4t
        0x59t
        0x75t
        -0x12t
        -0x7at
        0x19t
        0x6dt
    .end array-data

    :array_3c
    .array-data 1
        -0x73t
        -0x21t
        -0x59t
        0x54t
        0x27t
        0x72t
        -0x34t
        0x7bt
        -0x36t
        0x19t
        -0x69t
        0x2bt
        0x2dt
        -0x7bt
        0x62t
        0x64t
        -0x11t
        -0x5dt
        0x19t
        0x14t
        -0x41t
        -0x30t
        -0x68t
        -0x52t
        -0x49t
        -0x3et
        0x7t
        -0x63t
        -0x6bt
        0x1t
        -0x6ct
        -0x35t
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

    .line 476
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.usb.gadget@1.1::IUsbGadget"

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadget"

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

    const-string p0, "android.hardware.usb.gadget@1.1::IUsbGadget"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 533
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

    const-string p4, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const/4 v0, 0x1

    if-eq p1, v0, :cond_ee

    const/4 v0, 0x2

    if-eq p1, v0, :cond_df

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_cc

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_106

    goto/16 :goto_105

    .line 699
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->notifySyspropsChanged()V

    goto/16 :goto_105

    .line 688
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 691
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_105

    .line 678
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->ping()V

    .line 681
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_105

    .line 665
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->setHALInstrumentation()V

    goto/16 :goto_105

    .line 631
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 634
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 636
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 638
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 639
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 640
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 641
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v0, p2, :cond_89

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 645
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_81

    .line 647
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 651
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 648
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v0, 0x0

    .line 655
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 657
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 659
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_105

    .line 620
    :sswitch_95
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 623
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_105

    .line 608
    :sswitch_a6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 611
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 612
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 613
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_105

    .line 597
    :sswitch_bb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 600
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_105

    :cond_cc
    const-string p1, "android.hardware.usb.gadget@1.1::IUsbGadget"

    .line 586
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-interface {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I

    move-result p0

    .line 589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_105

    .line 577
    :cond_df
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object p1

    .line 580
    invoke-interface {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    goto :goto_105

    .line 566
    :cond_ee
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v3

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    move-object v0, p0

    .line 571
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    :goto_105
    return-void

    :sswitch_data_106
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

    const-string v0, "android.hardware.usb.gadget@1.1::IUsbGadget"

    .line 545
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

    .line 552
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

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
