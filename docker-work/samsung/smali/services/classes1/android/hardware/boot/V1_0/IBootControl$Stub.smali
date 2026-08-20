.class public abstract Landroid/hardware/boot/V1_0/IBootControl$Stub;
.super Landroid/os/HwBinder;
.source "IBootControl.java"

# interfaces
.implements Landroid/hardware/boot/V1_0/IBootControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/boot/V1_0/IBootControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 649
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

    .line 702
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 703
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 704
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 705
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

    .line 677
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
        0x71t
        -0x6et
        -0x29t
        0x56t
        -0x52t
        -0x46t
        0x0t
        -0x55t
        -0x5dt
        0x2ft
        0x45t
        0x4t
        -0x68t
        0x1dt
        -0x8t
        0x17t
        0x2ft
        -0x4t
        -0x58t
        0x3et
        0x21t
        0xct
        0x48t
        0x38t
        -0x26t
        -0x41t
        0x29t
        0x5et
        0x53t
        -0x17t
        0x35t
        -0x70t
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

    .line 657
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.boot@1.0::IBootControl"

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

    const-string p0, "android.hardware.boot@1.0::IBootControl"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 712
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

    const-string p4, "android.hardware.boot@1.0::IBootControl"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_168

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_17c

    goto/16 :goto_166

    .line 940
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->notifySyspropsChanged()V

    goto/16 :goto_166

    .line 929
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 932
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 919
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->ping()V

    .line 922
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 906
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->setHALInstrumentation()V

    goto/16 :goto_166

    .line 872
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 875
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 877
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 879
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 880
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 881
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 882
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 886
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 888
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 892
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 889
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 896
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 898
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 861
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 864
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 865
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 849
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 853
    invoke-virtual {p0, p1, p2}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 854
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 838
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 841
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 826
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 829
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->getSuffix(I)Ljava/lang/String;

    move-result-object p0

    .line 830
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_166

    .line 814
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 817
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotMarkedSuccessful(I)I

    move-result p0

    .line 818
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 802
    :pswitch_f5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 805
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotBootable(I)I

    move-result p0

    .line 806
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 790
    :pswitch_10a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 793
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setSlotAsUnbootable(I)Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 794
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 778
    :pswitch_11f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 781
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setActiveBootSlot(I)Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 782
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 767
    :pswitch_134
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->markBootSuccessful()Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 770
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 756
    :pswitch_145
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result p0

    .line 759
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_166

    .line 745
    :pswitch_156
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getNumberSlots()I

    move-result p0

    .line 748
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 749
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_166
    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_156
        :pswitch_145
        :pswitch_134
        :pswitch_11f
        :pswitch_10a
        :pswitch_f5
        :pswitch_e0
        :pswitch_ca
    .end packed-switch

    :sswitch_data_17c
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_35
        0xf504e47 -> :sswitch_27
        0xf524546 -> :sswitch_15
        0xf535953 -> :sswitch_d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.boot@1.0::IBootControl"

    .line 724
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

    .line 731
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/boot/V1_0/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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
