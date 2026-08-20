.class public abstract Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;
.super Landroid/os/HwBinder;
.source "IHdmiCecCallback.java"

# interfaces
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 449
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

    .line 502
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 503
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 504
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 505
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

    .line 477
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_20
    .array-data 1
        -0x19t
        0x5bt
        0x6et
        -0x16t
        0x71t
        0x1dt
        0x36t
        -0x6t
        -0x3at
        0x78t
        -0x44t
        -0x20t
        0x72t
        -0x4dt
        -0x32t
        -0x3at
        0x54t
        0x4bt
        0x27t
        -0x6t
        -0x61t
        0x4ct
        -0x27t
        0x3t
        -0x67t
        -0x6ct
        0x4t
        -0x1bt
        -0x3ft
        0x10t
        -0x36t
        0x10t
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 512
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

    const-string p4, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c9

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_e8

    goto/16 :goto_e6

    .line 667
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_e6

    .line 656
    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 659
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e6

    .line 646
    :sswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->ping()V

    .line 649
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e6

    .line 633
    :sswitch_38
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_e6

    .line 599
    :sswitch_40
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 602
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 606
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 607
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 608
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 609
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_66
    if-ge p4, p2, :cond_86

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 613
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7e

    .line 615
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7e

    .line 619
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_66

    .line 616
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    const-wide/16 v1, 0x0

    .line 623
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 625
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e6

    .line 588
    :sswitch_92
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 591
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e6

    .line 576
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 580
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e6

    .line 565
    :sswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 568
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e6

    .line 555
    :cond_c9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    new-instance p1, Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    invoke-direct {p1}, Landroid/hardware/tv/cec/V1_0/HotplugEvent;-><init>()V

    .line 558
    invoke-virtual {p1, p2}, Landroid/hardware/tv/cec/V1_0/HotplugEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 559
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;->onHotplugEvent(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V

    goto :goto_e6

    .line 545
    :cond_d8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    new-instance p1, Landroid/hardware/tv/cec/V1_0/CecMessage;

    invoke-direct {p1}, Landroid/hardware/tv/cec/V1_0/CecMessage;-><init>()V

    .line 548
    invoke-virtual {p1, p2}, Landroid/hardware/tv/cec/V1_0/CecMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 549
    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;->onCecMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)V

    :goto_e6
    return-void

    nop

    :sswitch_data_e8
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 524
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

    .line 531
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
