.class public abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFaceClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 636
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

    .line 689
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 690
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 691
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 692
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

    .line 664
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
        -0x4at
        -0x1bt
        0x5dt
        0x77t
        -0x6bt
        -0x45t
        -0x51t
        -0x30t
        0x11t
        -0x5t
        -0x6bt
        -0x5dt
        -0x4at
        -0x2dt
        -0x6bt
        0x4bt
        -0xat
        0x6ct
        0x34t
        -0x62t
        0x14t
        -0x31t
        0x10t
        0x7ft
        0x3bt
        0x72t
        0x3t
        0x2ct
        -0x1dt
        -0x32t
        -0x4ct
        0x48t
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

    .line 644
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

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

    const-string p0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 699
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

    const-string v3, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    packed-switch p1, :pswitch_data_16e

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_180

    goto/16 :goto_16d

    .line 913
    :sswitch_d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_16d

    .line 902
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 905
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 892
    :sswitch_27
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->ping()V

    .line 895
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 879
    :sswitch_35
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_16d

    .line 845
    :sswitch_3d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 848
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 852
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    .line 853
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    .line 854
    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 855
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v3, v4, :cond_83

    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 859
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_7b

    .line 861
    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7b

    .line 865
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 862
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    const-wide/16 v3, 0x0

    .line 869
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 871
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 834
    :sswitch_90
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 822
    :sswitch_a2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v4

    .line 825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 826
    invoke-virtual {p0, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 827
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 811
    :sswitch_b8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 814
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 815
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_16d

    .line 802
    :pswitch_ca
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 805
    invoke-interface {p0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onLockoutChanged(J)V

    goto/16 :goto_16d

    .line 791
    :pswitch_d6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 795
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 796
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    goto/16 :goto_16d

    .line 780
    :pswitch_ea
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 785
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto/16 :goto_16d

    .line 768
    :pswitch_fe
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 774
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    goto :goto_16d

    .line 756
    :pswitch_11a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 760
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 762
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAcquired(JIII)V

    goto :goto_16d

    .line 744
    :pswitch_136
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 750
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V

    goto :goto_16d

    .line 732
    :pswitch_152
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 737
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    .line 738
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnrollResult(JIII)V

    :goto_16d
    return-void

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_152
        :pswitch_136
        :pswitch_11a
        :pswitch_fe
        :pswitch_ea
        :pswitch_d6
        :pswitch_ca
    .end packed-switch

    :sswitch_data_180
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

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 711
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

    .line 718
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
