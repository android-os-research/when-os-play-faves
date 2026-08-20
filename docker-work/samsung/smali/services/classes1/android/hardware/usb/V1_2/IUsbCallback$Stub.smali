.class public abstract Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_2/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 494
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

    .line 551
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 552
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 553
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 554
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

    .line 524
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
        0x46t
        -0x67t
        0x6ct
        -0x2et
        -0x5ft
        -0x3at
        0x62t
        0x61t
        -0x59t
        0x5at
        0x1ft
        0x6et
        -0x36t
        -0x26t
        0x77t
        -0x12t
        -0x4bt
        -0x7at
        0x1et
        -0x4et
        0x64t
        -0x6t
        0x39t
        -0x47t
        -0x6at
        0x54t
        -0x71t
        -0x20t
        -0x59t
        -0xet
        0x2dt
        -0x2dt
    .end array-data

    :array_44
    .array-data 1
        0x13t
        -0x5bt
        -0x80t
        -0x1dt
        0x5at
        -0x10t
        0x12t
        0x70t
        -0x5ft
        -0x17t
        0x77t
        0x41t
        0x77t
        -0x3bt
        0x1dt
        -0x4bt
        0x1dt
        -0x7at
        0x72t
        -0x1at
        0x13t
        -0x65t
        -0x60t
        0x8t
        0x51t
        -0x1at
        0x54t
        -0x1at
        -0x76t
        0x4dt
        0x7dt
        -0x1t
    .end array-data

    :array_58
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
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

    .line 502
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.usb@1.2::IUsbCallback"

    const-string v1, "android.hardware.usb@1.1::IUsbCallback"

    const-string v2, "android.hardware.usb@1.0::IUsbCallback"

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

    const-string p0, "android.hardware.usb@1.2::IUsbCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 561
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

    const-string p4, "android.hardware.usb@1.0::IUsbCallback"

    const/4 v0, 0x1

    if-eq p1, v0, :cond_109

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_e1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_d0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_118

    goto/16 :goto_117

    .line 738
    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_117

    .line 727
    :sswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 730
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 717
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->ping()V

    .line 720
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 704
    :sswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_117

    .line 670
    :sswitch_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 673
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 677
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 678
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 679
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 680
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge p4, p2, :cond_8c

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 684
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_84

    .line 686
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_84

    .line 690
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6c

    .line 687
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    const-wide/16 v1, 0x0

    .line 694
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 696
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_117

    .line 659
    :sswitch_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 662
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 647
    :sswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 651
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 652
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    .line 636
    :sswitch_bf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 639
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 640
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_117

    :cond_d0
    const-string p1, "android.hardware.usb@1.2::IUsbCallback"

    .line 626
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-static {p2}, Landroid/hardware/usb/V1_2/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 630
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback;->notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V

    goto :goto_117

    :cond_e1
    const-string p1, "android.hardware.usb@1.1::IUsbCallback"

    .line 616
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 620
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/V1_1/IUsbCallback;->notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V

    goto :goto_117

    .line 604
    :cond_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 607
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 608
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 610
    invoke-interface {p0, p1, p3, p2}, Landroid/hardware/usb/V1_0/IUsbCallback;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    goto :goto_117

    .line 594
    :cond_109
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 597
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 598
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/V1_0/IUsbCallback;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    :goto_117
    return-void

    :sswitch_data_118
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf504e47 -> :sswitch_30
        0xf524546 -> :sswitch_1e
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.usb@1.2::IUsbCallback"

    .line 573
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

    .line 580
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
