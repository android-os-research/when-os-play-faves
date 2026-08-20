.class public abstract Landroid/hardware/boot/V1_2/IBootControl$Stub;
.super Landroid/os/HwBinder;
.source "IBootControl.java"

# interfaces
.implements Landroid/hardware/boot/V1_2/IBootControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/boot/V1_2/IBootControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 635
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

    .line 692
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 693
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 694
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 695
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

    .line 665
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
        0x67t
        0x63t
        -0x23t
        0x22t
        0x73t
        -0x4ft
        -0x4ct
        0x7ft
        0x3at
        -0x3at
        -0x76t
        -0x7t
        -0x4at
        0x68t
        0x70t
        0x28t
        0x7et
        -0x46t
        0x33t
        -0x5t
        0x5bt
        0x4dt
        0x66t
        -0x18t
        -0x2t
        0x1dt
        0x30t
        -0x52t
        0x18t
        -0x32t
        0x24t
        -0x35t
    .end array-data

    :array_44
    .array-data 1
        0x7t
        -0x30t
        -0x5et
        0x52t
        -0x4et
        -0x28t
        -0x6t
        0x35t
        -0x78t
        0x79t
        0x8t
        -0x57t
        -0x6at
        -0x46t
        0x39t
        0x5ct
        -0xdt
        -0x6et
        -0x6at
        -0x7dt
        -0x6bt
        -0x4t
        0x30t
        -0x51t
        -0x55t
        0x79t
        0x1ft
        0x46t
        -0x20t
        -0x3et
        0x2at
        0x52t
    .end array-data

    :array_58
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

    .line 643
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.boot@1.2::IBootControl"

    const-string v1, "android.hardware.boot@1.1::IBootControl"

    const-string v2, "android.hardware.boot@1.0::IBootControl"

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

    const-string p0, "android.hardware.boot@1.2::IBootControl"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 702
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

    const-string p4, "android.hardware.boot@1.1::IBootControl"

    const-string v0, "android.hardware.boot@1.0::IBootControl"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1a6

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1c0

    goto/16 :goto_1a4

    .line 964
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a4

    .line 953
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 956
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 943
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->ping()V

    .line 946
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 930
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a4

    .line 896
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 899
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 901
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 903
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 904
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 905
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 906
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 910
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 912
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 916
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 913
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 920
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 922
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 885
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 888
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 889
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 873
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 877
    invoke-virtual {p0, p1, p2}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 878
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 862
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 865
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 867
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    :pswitch_cc
    const-string p1, "android.hardware.boot@1.2::IBootControl"

    .line 851
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-interface {p0}, Landroid/hardware/boot/V1_2/IBootControl;->getActiveBootSlot()I

    move-result p0

    .line 854
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 856
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 840
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-interface {p0}, Landroid/hardware/boot/V1_1/IBootControl;->getSnapshotMergeStatus()I

    move-result p0

    .line 843
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 828
    :pswitch_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 831
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_1/IBootControl;->setSnapshotMergeStatus(I)Z

    move-result p0

    .line 832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 816
    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 819
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->getSuffix(I)Ljava/lang/String;

    move-result-object p0

    .line 820
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a4

    .line 804
    :pswitch_11e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 807
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotMarkedSuccessful(I)I

    move-result p0

    .line 808
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 792
    :pswitch_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 795
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->isSlotBootable(I)I

    move-result p0

    .line 796
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 780
    :pswitch_148
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 783
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setSlotAsUnbootable(I)Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 784
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 768
    :pswitch_15d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 771
    invoke-interface {p0, p1}, Landroid/hardware/boot/V1_0/IBootControl;->setActiveBootSlot(I)Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 757
    :pswitch_172
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->markBootSuccessful()Landroid/hardware/boot/V1_0/CommandResult;

    move-result-object p0

    .line 760
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p0, p3}, Landroid/hardware/boot/V1_0/CommandResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 746
    :pswitch_183
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result p0

    .line 749
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 750
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a4

    .line 735
    :pswitch_194
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getNumberSlots()I

    move-result p0

    .line 738
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 739
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1a4
    return-void

    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_194
        :pswitch_183
        :pswitch_172
        :pswitch_15d
        :pswitch_148
        :pswitch_133
        :pswitch_11e
        :pswitch_108
        :pswitch_f2
        :pswitch_e0
        :pswitch_cc
    .end packed-switch

    :sswitch_data_1c0
    .sparse-switch
        0xf43484e -> :sswitch_ba
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

    const-string v0, "android.hardware.boot@1.2::IBootControl"

    .line 714
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

    .line 721
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/boot/V1_2/IBootControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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
