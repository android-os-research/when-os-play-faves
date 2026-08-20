.class public abstract Landroid/hardware/usb/V1_3/IUsb$Stub;
.super Landroid/os/HwBinder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_3/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_3/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 520
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

    .line 579
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 580
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 581
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 582
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

    .line 551
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
        -0x44t
        -0x15t
        -0x25t
        0xbt
        0x3bt
        0x59t
        -0x43t
        0x14t
        0x4et
        -0x11t
        -0x3ft
        -0x4ft
        0x7at
        -0x57t
        0x66t
        0x9t
        -0x3ft
        -0x4et
        0x3bt
        -0x37t
        -0x5bt
        -0x9t
        -0x20t
        -0x29t
        0x6t
        0xdt
        -0x55t
        -0x29t
        -0x10t
        0x6et
        -0x7t
        -0x40t
    .end array-data

    :array_4c
    .array-data 1
        0x61t
        -0x44t
        0x30t
        0x2et
        0x7ct
        -0x69t
        0x4ct
        0x59t
        -0x4et
        0x58t
        -0x68t
        -0x3bt
        -0x7bt
        -0x3at
        -0x17t
        0x68t
        0x5et
        -0x76t
        -0x7ft
        0x2t
        0x1bt
        0x1bt
        -0x13t
        0x3et
        -0x13t
        -0xbt
        0x22t
        0x41t
        -0x68t
        -0xet
        0x78t
        0x5at
    .end array-data

    :array_60
    .array-data 1
        -0x52t
        -0x44t
        -0x27t
        -0x1t
        0x2dt
        -0x60t
        0x5ct
        -0x63t
        0x4ct
        0x43t
        -0x67t
        0x16t
        -0xct
        0xdt
        -0x3t
        0x21t
        -0x65t
        -0x59t
        0x62t
        -0x67t
        0x19t
        0x0t
        0x7ct
        -0x47t
        -0x7ft
        -0x15t
        -0xft
        0x50t
        0x6t
        0x4bt
        0x4ft
        -0x7et
    .end array-data

    :array_74
    .array-data 1
        0x4et
        -0xbt
        0x74t
        -0x67t
        0x27t
        0x3ft
        0x38t
        -0x43t
        -0x43t
        -0x30t
        -0x3ft
        0x5et
        0x56t
        -0x12t
        0x7at
        0x4bt
        -0x3bt
        -0xft
        -0x76t
        0x56t
        0x44t
        0x9t
        0x21t
        0x70t
        -0x5bt
        0x31t
        -0x21t
        0x35t
        0x41t
        -0x27t
        -0x20t
        0x15t
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

    .line 528
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.usb@1.3::IUsb"

    const-string v1, "android.hardware.usb@1.2::IUsb"

    const-string v2, "android.hardware.usb@1.1::IUsb"

    const-string v3, "android.hardware.usb@1.0::IUsb"

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

    const-string p0, "android.hardware.usb@1.3::IUsb"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 589
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

    const-string p4, "android.hardware.usb@1.2::IUsb"

    const-string v0, "android.hardware.usb@1.0::IUsb"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_128

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_138

    goto/16 :goto_127

    .line 784
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->notifySyspropsChanged()V

    goto/16 :goto_127

    .line 773
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 776
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_127

    .line 763
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->ping()V

    .line 766
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_127

    .line 750
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->setHALInstrumentation()V

    goto/16 :goto_127

    .line 716
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 719
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 723
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 724
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 725
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 726
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 730
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 732
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 736
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 733
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 740
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 742
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_127

    .line 705
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_127

    .line 693
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_3/IUsb$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 698
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_127

    .line 682
    :sswitch_b9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 685
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_127

    :pswitch_ca
    const-string p1, "android.hardware.usb@1.3::IUsb"

    .line 670
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 673
    invoke-interface {p0, p1}, Landroid/hardware/usb/V1_3/IUsb;->enableUsbDataSignal(Z)Z

    move-result p0

    .line 674
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_127

    .line 660
    :pswitch_e1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 664
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceProtection(Ljava/lang/String;Z)V

    goto :goto_127

    .line 650
    :pswitch_f0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 654
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V

    goto :goto_127

    .line 642
    :pswitch_ff
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-interface {p0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V

    goto :goto_127

    .line 633
    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/V1_0/IUsbCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsbCallback;

    move-result-object p1

    .line 636
    invoke-interface {p0, p1}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    goto :goto_127

    .line 622
    :pswitch_115
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 625
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 626
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 627
    invoke-interface {p0, p1, p3}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V

    :goto_127
    return-void

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_115
        :pswitch_106
        :pswitch_ff
        :pswitch_f0
        :pswitch_e1
        :pswitch_ca
    .end packed-switch

    :sswitch_data_138
    .sparse-switch
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.usb@1.3::IUsb"

    .line 601
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

    .line 608
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_3/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

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
