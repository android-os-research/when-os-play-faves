.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiApIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 542
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

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 597
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 598
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 600
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

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

    .line 571
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
        -0x12t
        0x2t
        0x24t
        -0x12t
        0x18t
        -0x7ft
        0x35t
        0x6t
        -0x27t
        -0x2at
        -0xft
        0x3dt
        -0x74t
        -0x72t
        0x46t
        0x79t
        -0x10t
        0x53t
        -0x3et
        -0x70t
        -0x5ct
        0x43t
        -0x5bt
        0x2at
        0x7ct
        0x52t
        -0x5bt
        -0x2dt
        -0x38t
        0x52t
        0x26t
        0x2bt
    .end array-data

    :array_3c
    .array-data 1
        0x6bt
        -0x66t
        -0x2ct
        0x3at
        0x5et
        -0x5t
        -0x1at
        -0x36t
        0x21t
        0x4ft
        0x75t
        0x1et
        0x22t
        -0x32t
        0x43t
        -0x31t
        0x5ct
        -0x2ct
        -0x2bt
        -0x2bt
        -0xet
        -0x35t
        -0x58t
        0xft
        0x24t
        -0x34t
        -0x2dt
        0x75t
        0x5at
        0x72t
        0x40t
        0x1ct
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

    .line 550
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifiApIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.0::IWifiApIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 607
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

    const-string p4, "android.hardware.wifi@1.0::IWifiIface"

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_fe

    const/4 p4, 0x3

    const-wide/16 v1, 0x0

    const-string v3, "android.hardware.wifi@1.0::IWifiApIface"

    const/4 v4, 0x0

    if-eq p1, p4, :cond_e2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_d2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_116

    goto/16 :goto_115

    .line 808
    :sswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_115

    .line 797
    :sswitch_22
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 800
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_115

    .line 787
    :sswitch_34
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->ping()V

    .line 790
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_115

    .line 774
    :sswitch_42
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_115

    .line 740
    :sswitch_4a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 743
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 747
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v5, 0x8

    .line 748
    invoke-virtual {p1, v5, v6, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    .line 749
    invoke-virtual {p1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 750
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_70
    if-ge v4, p2, :cond_90

    mul-int/lit8 v0, v4, 0x20

    int-to-long v5, v0

    .line 754
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_88

    .line 756
    array-length v3, v0

    const/16 v7, 0x20

    if-ne v3, v7, :cond_88

    .line 760
    invoke-virtual {p4, v5, v6, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 757
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 764
    :cond_90
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 766
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_115

    .line 729
    :sswitch_9b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 732
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 733
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_115

    .line 717
    :sswitch_ac
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 722
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_115

    .line 706
    :sswitch_c1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 709
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 710
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_115

    .line 690
    :cond_d2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 693
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$getValidFrequenciesForBandCallback;)V

    goto :goto_115

    .line 670
    :cond_e2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v0, [B

    const-wide/16 v5, 0x2

    .line 674
    invoke-virtual {p2, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 677
    invoke-virtual {p2, v1, v2, p1, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 681
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 682
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 683
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_115

    .line 655
    :cond_fe
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_115

    .line 640
    :cond_10a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_115
    return-void

    :sswitch_data_116
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ac
        0xf445343 -> :sswitch_9b
        0xf485348 -> :sswitch_4a
        0xf494e54 -> :sswitch_42
        0xf504e47 -> :sswitch_34
        0xf524546 -> :sswitch_22
        0xf535953 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.0::IWifiApIface"

    .line 619
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

    .line 626
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
