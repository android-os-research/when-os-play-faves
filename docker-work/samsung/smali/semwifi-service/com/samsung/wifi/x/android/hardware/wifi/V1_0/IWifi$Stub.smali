.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;
.super Landroid/os/HwBinder;
.source "IWifi.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 627
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

    .line 680
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 681
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 682
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 683
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

    .line 655
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
        -0x47t
        -0x42t
        0x36t
        0x71t
        -0x66t
        -0x76t
        -0x2bt
        0x34t
        0x0t
        0xat
        0x51t
        -0x16t
        0x7t
        -0x42t
        -0x6ft
        -0x42t
        -0x6ct
        -0x3ct
        0x5t
        -0x41t
        0x1et
        0x3t
        -0x76t
        -0x18t
        0x25t
        -0x54t
        -0xat
        0x50t
        -0x79t
        -0x1t
        -0x2dt
        0x78t
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

    .line 635
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifi"

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

    const-string p0, "android.hardware.wifi@1.0::IWifi"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 690
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

    const-string p4, "android.hardware.wifi@1.0::IWifi"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_132

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_142

    goto/16 :goto_130

    .line 901
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->notifySyspropsChanged()V

    goto/16 :goto_130

    .line 890
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 893
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_130

    .line 880
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->ping()V

    .line 883
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_130

    .line 867
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->setHALInstrumentation()V

    goto/16 :goto_130

    .line 833
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 840
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 841
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 842
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 843
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 847
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 849
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 853
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 850
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 857
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 859
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_130

    .line 822
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 825
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 826
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_130

    .line 810
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 815
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_130

    .line 799
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 802
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_130

    .line 783
    :pswitch_c9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 786
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub$2;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChip(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipCallback;)V

    goto :goto_130

    .line 768
    :pswitch_d9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChipIds(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    goto :goto_130

    .line 757
    :pswitch_e5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->stop()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 760
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_130

    .line 746
    :pswitch_f6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->start()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 749
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 750
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_130

    .line 735
    :pswitch_107
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->isStarted()Z

    move-result p0

    .line 738
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 739
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_130

    .line 723
    :pswitch_118
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;

    move-result-object p1

    .line 726
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 727
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_130
    return-void

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_118
        :pswitch_107
        :pswitch_f6
        :pswitch_e5
        :pswitch_d9
        :pswitch_c9
    .end packed-switch

    :sswitch_data_142
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

    const-string v0, "android.hardware.wifi@1.0::IWifi"

    .line 702
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

    .line 709
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$Stub;->interfaceDescriptor()Ljava/lang/String;

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
