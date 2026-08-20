.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 553
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

    .line 606
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 607
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 608
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 609
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

    .line 581
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
        -0x51t
        0x24t
        -0x48t
        0x7ct
        -0x58t
        -0x48t
        -0x10t
        0x2ft
        -0x33t
        -0x1et
        0x5t
        -0x1ct
        0x7dt
        -0x4at
        -0x57t
        0x60t
        -0x61t
        -0x39t
        -0x17t
        -0x29t
        0x7dt
        0x73t
        -0x1at
        -0x6ct
        -0x14t
        -0x71t
        -0x64t
        0x50t
        -0x74t
        -0x5ft
        -0x6bt
        0x75t
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

    .line 561
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

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

    const-string p0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 616
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

    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    if-eq p1, p4, :cond_107

    const/4 p4, 0x2

    if-eq p1, p4, :cond_f8

    const/4 p4, 0x3

    if-eq p1, p4, :cond_e9

    const/4 p4, 0x4

    if-eq p1, p4, :cond_de

    const/4 p4, 0x5

    if-eq p1, p4, :cond_d3

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_11a

    goto/16 :goto_119

    .line 800
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_119

    .line 789
    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 792
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_119

    .line 779
    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->ping()V

    .line 782
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_119

    .line 766
    :sswitch_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_119

    .line 732
    :sswitch_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 735
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 739
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 740
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 741
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 742
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6f
    if-ge p4, p2, :cond_8f

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 746
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_87

    .line 748
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_87

    .line 752
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6f

    .line 749
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    const-wide/16 v1, 0x0

    .line 756
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 758
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_119

    .line 721
    :sswitch_9c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_119

    .line 709
    :sswitch_ad
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 713
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 714
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_119

    .line 698
    :sswitch_c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 701
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_119

    .line 689
    :cond_d3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 692
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->onParametersUpdated(Ljava/util/ArrayList;)V

    goto :goto_119

    .line 680
    :cond_de
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 683
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->onAntennaStateChange(Z)V

    goto :goto_119

    .line 670
    :cond_e9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;-><init>()V

    .line 673
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readFromParcel(Landroid/os/HwParcel;)V

    .line 674
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    goto :goto_119

    .line 660
    :cond_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    .line 663
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 664
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    goto :goto_119

    .line 649
    :cond_107
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 652
    new-instance p3, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p3}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 653
    invoke-virtual {p3, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 654
    invoke-interface {p0, p1, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    :goto_119
    return-void

    :sswitch_data_11a
    .sparse-switch
        0xf43484e -> :sswitch_c2
        0xf444247 -> :sswitch_ad
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

    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    .line 628
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

    .line 635
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
