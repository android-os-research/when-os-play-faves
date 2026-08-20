.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiApIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface;
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

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 708
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 709
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 710
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 711
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

    .line 680
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_38

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_60

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_74

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_38
    .array-data 1
        -0x3at
        0x6ct
        0x3et
        -0x5ft
        -0x4dt
        0x75t
        -0x1at
        -0x63t
        0x7at
        -0x28t
        0x20t
        -0x2at
        0x79t
        0x50t
        0x30t
        0x5at
        0x46t
        0x3bt
        0x5at
        0x50t
        -0x70t
        -0x74t
        0x4ft
        -0x23t
        -0x35t
        -0x43t
        -0x46t
        -0x48t
        -0x45t
        -0x54t
        0x39t
        0x51t
    .end array-data

    :array_4c
    .array-data 1
        -0x7ct
        0x75t
        0x72t
        0x51t
        -0x1t
        0x19t
        0x5bt
        0x44t
        0x7dt
        -0x3bt
        0x11t
        -0x40t
        -0x2dt
        -0x10t
        0x55t
        -0x5at
        -0x7ct
        -0x2ct
        -0x2t
        -0x29t
        -0x7ct
        0x7et
        -0x4ct
        -0x2at
        0x5at
        0x24t
        0x55t
        -0x15t
        -0x6ft
        0x40t
        0x59t
        -0x2et
    .end array-data

    :array_60
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

    :array_74
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

    :array_88
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
    .registers 6
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

    const-string v0, "android.hardware.wifi@1.5::IWifiApIface"

    const-string v1, "android.hardware.wifi@1.4::IWifiApIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiApIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiIface"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.5::IWifiApIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 718
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

    const-string p4, "android.hardware.wifi@1.5::IWifiApIface"

    const-string v0, "android.hardware.wifi@1.4::IWifiApIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiApIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_15c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_170

    goto/16 :goto_15b

    .line 994
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_15b

    .line 983
    :sswitch_1d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 986
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 973
    :sswitch_2f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->ping()V

    .line 976
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 960
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_15b

    .line 926
    :sswitch_45
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 929
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 933
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 934
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 935
    invoke-virtual {p1, v0, v1, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 936
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6b
    if-ge v5, p2, :cond_8b

    mul-int/lit8 v0, v5, 0x20

    int-to-long v0, v0

    .line 940
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_83

    .line 942
    array-length v6, v2

    const/16 v7, 0x20

    if-ne v6, v7, :cond_83

    .line 946
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 943
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 950
    :cond_8b
    invoke-virtual {p1, v3, v4, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 952
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 915
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 918
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 903
    :sswitch_a8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 908
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 892
    :sswitch_be
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 895
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_15b

    .line 877
    :pswitch_d0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface;->getBridgedInstances(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$getBridgedInstancesCallback;)V

    goto/16 :goto_15b

    .line 866
    :pswitch_dd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface;->resetToFactoryMacAddress()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 869
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_15b

    .line 837
    :pswitch_ee
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$getFactoryMacAddressCallback;)V

    goto :goto_15b

    .line 817
    :pswitch_fa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p4, p1, [B

    const-wide/16 v0, 0x6

    .line 821
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 824
    invoke-virtual {p2, v3, v4, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 828
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 829
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_15b

    .line 801
    :pswitch_117
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 804
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$getValidFrequenciesForBandCallback;)V

    goto :goto_15b

    .line 781
    :pswitch_127
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v0, 0x2

    .line 785
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 788
    invoke-virtual {p2, v3, v4, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 792
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 793
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_15b

    .line 766
    :pswitch_144
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_15b

    .line 751
    :pswitch_150
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_15b
    return-void

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_150
        :pswitch_144
        :pswitch_127
        :pswitch_117
        :pswitch_fa
        :pswitch_ee
        :pswitch_dd
        :pswitch_d0
    .end packed-switch

    :sswitch_data_170
    .sparse-switch
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_45
        0xf494e54 -> :sswitch_3d
        0xf504e47 -> :sswitch_2f
        0xf524546 -> :sswitch_1d
        0xf535953 -> :sswitch_15
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.5::IWifiApIface"

    .line 730
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

    .line 737
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
