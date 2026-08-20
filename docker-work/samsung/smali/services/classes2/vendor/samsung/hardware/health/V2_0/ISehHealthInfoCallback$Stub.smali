.class public abstract Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISehHealthInfoCallback.java"

# interfaces
.implements Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 470
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

    .line 527
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 528
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 529
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 530
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

    .line 500
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
        -0x10t
        0x33t
        0x48t
        0x2et
        0x75t
        -0x33t
        0x10t
        -0x5bt
        -0x4dt
        0x31t
        0xet
        -0x75t
        -0x13t
        0x48t
        -0xct
        -0x1at
        0x14t
        -0x28t
        -0x59t
        0x6dt
        -0x7dt
        -0x62t
        -0x52t
        -0x72t
        0x49t
        -0x9t
        0x6dt
        0x36t
        -0x36t
        0x60t
        0x1bt
        -0x2bt
    .end array-data

    :array_44
    .array-data 1
        0x26t
        -0x10t
        0x45t
        0x10t
        -0x60t
        -0x4bt
        0x7at
        -0x46t
        0x51t
        0x67t
        -0x3bt
        -0x40t
        -0x59t
        -0x3et
        -0x10t
        0x77t
        -0x3et
        -0x54t
        -0x45t
        -0x68t
        -0x48t
        0x19t
        0x2t
        -0x60t
        0x72t
        0x51t
        0x78t
        0x29t
        -0x3t
        -0x61t
        -0x2at
        0x7ft
    .end array-data

    :array_58
    .array-data 1
        0x43t
        0x4ct
        0x4ct
        0x32t
        -0x40t
        0xbt
        0xet
        0x54t
        -0x45t
        0x5t
        -0x1ct
        0xct
        0x79t
        0x50t
        0x32t
        0x8t
        -0x4ct
        0xft
        0x78t
        0x6at
        0x31t
        -0x80t
        0x29t
        -0x5et
        -0x5ct
        -0xat
        0x6et
        0x34t
        -0xft
        0xft
        0x2at
        0x76t
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

    .line 478
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    const-string v1, "android.hardware.health@2.1::IHealthInfoCallback"

    const-string v2, "android.hardware.health@2.0::IHealthInfoCallback"

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

    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 537
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

    const/4 p4, 0x1

    if-eq p1, p4, :cond_ed

    const/4 p4, 0x2

    if-eq p1, p4, :cond_dc

    const/4 p4, 0x3

    if-eq p1, p4, :cond_ca

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_fe

    goto/16 :goto_fd

    .line 702
    :sswitch_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_fd

    .line 691
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 694
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 695
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_fd

    .line 681
    :sswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->ping()V

    .line 684
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_fd

    .line 668
    :sswitch_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_fd

    .line 634
    :sswitch_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 637
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 641
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 642
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 643
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 644
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge p4, p2, :cond_87

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 648
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7f

    .line 650
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 654
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_67

    .line 651
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v1, 0x0

    .line 658
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 660
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_fd

    .line 623
    :sswitch_93
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_fd

    .line 611
    :sswitch_a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 615
    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 616
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_fd

    .line 600
    :sswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 603
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_fd

    :cond_ca
    const-string/jumbo p1, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    .line 590
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {p1}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 593
    invoke-virtual {p1, p2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 594
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback;->sehHealthInfoChanged_2_1(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V

    goto :goto_fd

    :cond_dc
    const-string p1, "android.hardware.health@2.1::IHealthInfoCallback"

    .line 580
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    new-instance p1, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 583
    invoke-virtual {p1, p2}, Landroid/hardware/health/V2_1/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 584
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_1/IHealthInfoCallback;->healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V

    goto :goto_fd

    :cond_ed
    const-string p1, "android.hardware.health@2.0::IHealthInfoCallback"

    .line 570
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    new-instance p1, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 573
    invoke-virtual {p1, p2}, Landroid/hardware/health/V2_0/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 574
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V

    :goto_fd
    return-void

    :sswitch_data_fe
    .sparse-switch
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    :cond_a
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

    .line 556
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
