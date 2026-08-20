.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 529
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

    .line 582
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 583
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 584
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 585
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

    .line 557
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
        0x7ft
        -0x41t
        -0x3bt
        0x51t
        -0x3dt
        -0x1et
        0x3ct
        -0x75t
        0x43t
        -0x68t
        -0x3dt
        -0x1ft
        0x6et
        0x45t
        0x2bt
        0x51t
        0x64t
        0x57t
        -0x1at
        -0x6et
        0x14t
        0x24t
        -0x5bt
        0x34t
        0x74t
        -0x35t
        -0xdt
        0x73t
        -0x36t
        0x30t
        0x6ft
        -0x57t
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

    .line 537
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

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

    const-string p0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 592
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

    const/4 p4, 0x1

    const-string v0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    if-eq p1, p4, :cond_111

    const/4 p4, 0x2

    if-eq p1, p4, :cond_fa

    const/4 p4, 0x3

    if-eq p1, p4, :cond_eb

    const/4 p4, 0x4

    const-wide/16 v1, 0x0

    if-eq p1, p4, :cond_d0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_11c

    goto/16 :goto_11b

    .line 777
    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_11b

    .line 766
    :sswitch_20
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 769
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_11b

    .line 756
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->ping()V

    .line 759
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_11b

    .line 743
    :sswitch_40
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_11b

    .line 709
    :sswitch_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 712
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 714
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 716
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v3, 0x8

    .line 717
    invoke-virtual {p1, v3, v4, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 718
    invoke-virtual {p1, v3, v4, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 719
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v3, p2, 0x20

    invoke-direct {v0, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6e
    if-ge p4, p2, :cond_8e

    mul-int/lit8 v3, p4, 0x20

    int-to-long v3, v3

    .line 723
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_86

    .line 725
    array-length v6, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_86

    .line 729
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6e

    .line 726
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :cond_8e
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 735
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_11b

    .line 698
    :sswitch_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 701
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_11b

    .line 686
    :sswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 691
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_11b

    .line 675
    :sswitch_bf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 678
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_11b

    .line 656
    :cond_d0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    const/4 p3, 0x6

    new-array p4, p3, [B

    const-wide/16 v3, 0x6

    .line 661
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v1, v2, p4, p3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 668
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 669
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->onRssiThresholdBreached(I[BI)V

    goto :goto_11b

    .line 646
    :cond_eb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 649
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanData;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 650
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->onBackgroundScanResults(ILjava/util/ArrayList;)V

    goto :goto_11b

    .line 634
    :cond_fa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 638
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;-><init>()V

    .line 639
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 640
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->onBackgroundFullScanResult(IILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;)V

    goto :goto_11b

    .line 625
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 628
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->onBackgroundScanFailure(I)V

    :goto_11b
    return-void

    :sswitch_data_11c
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_48
        0xf494e54 -> :sswitch_40
        0xf504e47 -> :sswitch_32
        0xf524546 -> :sswitch_20
        0xf535953 -> :sswitch_18
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    .line 604
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

    .line 611
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
