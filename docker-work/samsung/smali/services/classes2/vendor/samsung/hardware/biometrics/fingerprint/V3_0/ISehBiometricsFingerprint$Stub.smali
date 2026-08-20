.class public abstract Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "ISehBiometricsFingerprint.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 664
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

    .line 719
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 720
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 721
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 722
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

    .line 693
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
        0x21t
        0x35t
        0x57t
        -0x25t
        0x52t
        -0x4t
        -0xet
        -0x35t
        -0x56t
        0x19t
        -0x3ft
        -0x65t
        -0x45t
        -0x51t
        -0x7ct
        -0x1at
        -0x7t
        0x61t
        -0x2ft
        0x76t
        -0x32t
        0x54t
        0xft
        -0x4at
        -0x4bt
        0x4at
        -0x24t
        -0x4ft
        0x37t
        0x52t
        0xbt
        0x23t
    .end array-data

    :array_3c
    .array-data 1
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
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

    .line 672
    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

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

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 729
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-string p4, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1ca

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1e4

    goto/16 :goto_1c8

    .line 1010
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1c8

    .line 999
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1002
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1003
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 989
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->ping()V

    .line 992
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 976
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->setHALInstrumentation()V

    goto/16 :goto_1c8

    .line 942
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 945
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 949
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v3, 0x8

    .line 950
    invoke-virtual {p1, v3, v4, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 951
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 952
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v3, p2, 0x20

    invoke-direct {p4, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v2, p2, :cond_85

    mul-int/lit8 v3, v2, 0x20

    int-to-long v3, v3

    .line 956
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_7d

    .line 958
    array-length v6, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7d

    .line 962
    invoke-virtual {p4, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 959
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 966
    :cond_85
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 968
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 931
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 934
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 919
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 923
    invoke-virtual {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 924
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 908
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 911
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 913
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    :pswitch_ca
    const-string/jumbo p1, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 890
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 895
    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;-><init>(Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    goto/16 :goto_1c8

    .line 877
    :pswitch_e6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 881
    invoke-interface {p0, v0, v1, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result p0

    .line 882
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 864
    :pswitch_100
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 868
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    move-result p0

    .line 869
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 851
    :pswitch_11a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 855
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result p0

    .line 856
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 857
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 840
    :pswitch_134
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result p0

    .line 843
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1c8

    .line 829
    :pswitch_146
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result p0

    .line 832
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1c8

    .line 818
    :pswitch_157
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide p0

    .line 821
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1c8

    .line 807
    :pswitch_168
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result p0

    .line 810
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1c8

    .line 785
    :pswitch_179
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x45

    new-array p4, p1, [B

    const-wide/16 v3, 0x45

    .line 789
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 792
    invoke-virtual {v3, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 798
    invoke-interface {p0, p4, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result p0

    .line 799
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1c8

    .line 774
    :pswitch_19f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide p0

    .line 777
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 778
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1c8

    .line 762
    :pswitch_1b0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object p1

    .line 765
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide p0

    .line 766
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1c8
    return-void

    nop

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1b0
        :pswitch_19f
        :pswitch_179
        :pswitch_168
        :pswitch_157
        :pswitch_146
        :pswitch_134
        :pswitch_11a
        :pswitch_100
        :pswitch_e6
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1e4
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_90
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

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    .line 741
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

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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
