.class public abstract Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 549
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

    .line 604
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 605
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 606
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 607
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

    .line 578
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
        -0x7et
        -0x36t
        -0x27t
        -0x61t
        0x5ft
        -0x15t
        0x2et
        -0x57t
        -0x44t
        -0x2ct
        0x57t
        -0x70t
        0x55t
        -0x13t
        -0xct
        -0x51t
        -0x71t
        -0x15t
        -0x61t
        -0x3at
        0x2t
        -0x5at
        -0x1ct
        -0x7et
        0x7dt
        -0x23t
        0x72t
        0x7dt
        0x25t
        0x4dt
        0x49t
        -0x6ft
    .end array-data

    :array_3c
    .array-data 1
        -0x56t
        -0x45t
        0x5ct
        0x3ct
        0x58t
        0x55t
        -0x6et
        -0x29t
        0x1et
        -0x1bt
        0x7bt
        0x77t
        0x29t
        -0x74t
        0x14t
        -0x67t
        0x3dt
        0x77t
        -0x6ft
        0x4dt
        -0x22t
        -0x56t
        0x64t
        -0x4et
        -0x3bt
        0x10t
        -0x66t
        0x60t
        0x2bt
        0x2t
        -0x16t
        0x47t
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

    .line 557
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

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

    const-string p0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 614
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    packed-switch p1, :pswitch_data_178

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_18a

    goto/16 :goto_176

    .line 830
    :sswitch_d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_176

    .line 819
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 822
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    .line 809
    :sswitch_27
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->ping()V

    .line 812
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    .line 796
    :sswitch_35
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_176

    .line 762
    :sswitch_3d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 765
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 769
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    .line 770
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    .line 771
    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 772
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v3, v4, :cond_83

    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 776
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_7b

    .line 778
    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7b

    .line 782
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 779
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    const-wide/16 v3, 0x0

    .line 786
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 788
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    .line 751
    :sswitch_90
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    .line 739
    :sswitch_a2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v4

    .line 742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 743
    invoke-virtual {p0, v4, v1}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 744
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    .line 728
    :sswitch_b8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 731
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_176

    :pswitch_ca
    const-string v2, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 717
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 722
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;->onAcquired_2_2(JII)V

    goto/16 :goto_176

    .line 705
    :pswitch_e0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 709
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 711
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnumerate(JIII)V

    goto/16 :goto_176

    .line 693
    :pswitch_fd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 699
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    goto :goto_176

    .line 682
    :pswitch_119
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 686
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 687
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(JII)V

    goto :goto_176

    .line 670
    :pswitch_12c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 676
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V

    goto :goto_176

    .line 659
    :pswitch_148
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 664
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAcquired(JII)V

    goto :goto_176

    .line 647
    :pswitch_15b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 652
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 653
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnrollResult(JIII)V

    :goto_176
    return-void

    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_15b
        :pswitch_148
        :pswitch_12c
        :pswitch_119
        :pswitch_fd
        :pswitch_e0
        :pswitch_ca
    .end packed-switch

    :sswitch_data_18a
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

    const-string v0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 626
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

    .line 633
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
