.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttControllerEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 451
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

    .line 506
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 507
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 508
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 509
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

    .line 480
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
        -0x4t
        -0x27t
        0x2at
        0x4ct
        -0x77t
        -0x7dt
        0x60t
        0x18t
        0x5dt
        -0x2at
        0x59t
        -0x10t
        -0x5ft
        -0x1dt
        0x0t
        0x1ct
        0x25t
        -0x15t
        0x40t
        -0x4bt
        -0x64t
        0x34t
        0x57t
        -0x3t
        0x23t
        0x5at
        -0x31t
        0x3at
        -0x74t
        0x40t
        0x75t
        0x25t
    .end array-data

    :array_3c
    .array-data 1
        0x72t
        -0x55t
        0x6ft
        0x3et
        0x12t
        0xct
        -0x41t
        0x7t
        -0x56t
        0x6ft
        -0x72t
        -0x79t
        -0x36t
        -0x77t
        0x11t
        0x2bt
        -0x22t
        -0x4dt
        0x6bt
        0x7ft
        -0x45t
        -0x6at
        -0x44t
        -0x1bt
        -0x51t
        0x37t
        0x12t
        0x32t
        0x3at
        -0x48t
        -0x48t
        -0x1at
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

    .line 459
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.4::IWifiRttControllerEventCallback"

    const-string v1, "android.hardware.wifi@1.0::IWifiRttControllerEventCallback"

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

    const-string p0, "android.hardware.wifi@1.4::IWifiRttControllerEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 516
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

    if-eq p1, p4, :cond_d8

    const/4 p4, 0x2

    if-eq p1, p4, :cond_c7

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_ea

    goto/16 :goto_e8

    .line 671
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_e8

    .line 660
    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 663
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 664
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e8

    .line 650
    :sswitch_28
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->ping()V

    .line 653
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e8

    .line 637
    :sswitch_36
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_e8

    .line 603
    :sswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 606
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 608
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 610
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 611
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 612
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 613
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_64
    if-ge p4, p2, :cond_84

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 617
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7c

    .line 619
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7c

    .line 623
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_64

    .line 620
    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    const-wide/16 v1, 0x0

    .line 627
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e8

    .line 592
    :sswitch_90
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e8

    .line 580
    :sswitch_a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 585
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e8

    .line 569
    :sswitch_b6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 572
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e8

    :cond_c7
    const-string p1, "android.hardware.wifi@1.4::IWifiRttControllerEventCallback"

    .line 559
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 562
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 563
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;->onResults_1_4(ILjava/util/ArrayList;)V

    goto :goto_e8

    :cond_d8
    const-string p1, "android.hardware.wifi@1.0::IWifiRttControllerEventCallback"

    .line 549
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 552
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 553
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->onResults(ILjava/util/ArrayList;)V

    :goto_e8
    return-void

    nop

    :sswitch_data_ea
    .sparse-switch
        0xf43484e -> :sswitch_b6
        0xf444247 -> :sswitch_a1
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf504e47 -> :sswitch_28
        0xf524546 -> :sswitch_16
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.4::IWifiRttControllerEventCallback"

    .line 528
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

    .line 535
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
