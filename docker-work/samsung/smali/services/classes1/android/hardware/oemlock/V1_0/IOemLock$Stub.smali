.class public abstract Landroid/hardware/oemlock/V1_0/IOemLock$Stub;
.super Landroid/os/HwBinder;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/oemlock/V1_0/IOemLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 582
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

    .line 635
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 636
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 637
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 638
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

    .line 610
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
        0x4bt
        0x65t
        0x76t
        0x36t
        0x63t
        -0x57t
        0x4at
        0x39t
        0x20t
        0x13t
        0x40t
        0x11t
        0x69t
        0x1ft
        -0x71t
        -0x45t
        0x42t
        -0x34t
        -0x49t
        -0x49t
        0x79t
        0x55t
        -0x77t
        -0x11t
        -0x23t
        -0x40t
        0x49t
        -0x57t
        0x10t
        0x60t
        0x47t
        -0x2at
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

    .line 590
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

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

    const-string p0, "android.hardware.oemlock@1.0::IOemLock"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 645
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

    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    if-eq p1, p4, :cond_11a

    const/4 p4, 0x2

    const/4 v1, 0x0

    if-eq p1, p4, :cond_101

    const/4 p4, 0x3

    if-eq p1, p4, :cond_f5

    const/4 p4, 0x4

    if-eq p1, p4, :cond_e0

    const/4 p4, 0x5

    if-eq p1, p4, :cond_d4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_126

    goto/16 :goto_125

    .line 850
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->notifySyspropsChanged()V

    goto/16 :goto_125

    .line 839
    :sswitch_21
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 842
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 843
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_125

    .line 829
    :sswitch_33
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->ping()V

    .line 832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_125

    .line 816
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setHALInstrumentation()V

    goto/16 :goto_125

    .line 782
    :sswitch_49
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 785
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 787
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 789
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 790
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 791
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 792
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6f
    if-ge v1, p2, :cond_8f

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 796
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_87

    .line 798
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_87

    .line 802
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 799
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    const-wide/16 v0, 0x0

    .line 806
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 808
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_125

    .line 771
    :sswitch_9c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 774
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_125

    .line 759
    :sswitch_ae
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 763
    invoke-virtual {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 764
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_125

    .line 748
    :sswitch_c3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 751
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_125

    .line 733
    :cond_d4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V

    goto :goto_125

    .line 721
    :cond_e0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 724
    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result p0

    .line 725
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 727
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_125

    .line 706
    :cond_f5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V

    goto :goto_125

    .line 693
    :cond_101
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 697
    invoke-interface {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result p0

    .line 698
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_125

    .line 678
    :cond_11a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V

    :goto_125
    return-void

    :sswitch_data_126
    .sparse-switch
        0xf43484e -> :sswitch_c3
        0xf444247 -> :sswitch_ae
        0xf445343 -> :sswitch_9c
        0xf485348 -> :sswitch_49
        0xf494e54 -> :sswitch_41
        0xf504e47 -> :sswitch_33
        0xf524546 -> :sswitch_21
        0xf535953 -> :sswitch_19
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    .line 657
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

    .line 664
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

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
