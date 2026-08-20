.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISehSupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 699
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

    .line 754
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 755
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 756
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 757
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

    .line 728
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
        0x77t
        -0x2t
        -0x50t
        0x3ft
        -0xat
        -0x45t
        -0x60t
        0x29t
        0x77t
        -0x21t
        0x6dt
        -0x7bt
        -0x28t
        -0x46t
        0x34t
        -0x13t
        -0x1ct
        -0x7at
        -0x19t
        0x56t
        0x58t
        -0x4ct
        0x7bt
        0x78t
        0x46t
        -0x45t
        -0x15t
        0x4at
        -0x35t
        -0x34t
        0x4bt
        -0x76t
    .end array-data

    :array_3c
    .array-data 1
        -0x26t
        -0x6at
        0xdt
        -0x32t
        -0x79t
        -0x19t
        -0x63t
        -0x36t
        -0x6ft
        0x52t
        -0xdt
        0x69t
        -0x39t
        0x13t
        -0x4ct
        0x20t
        0x70t
        -0x6ft
        0x37t
        -0x18t
        0x66t
        -0xet
        -0x6at
        -0x72t
        -0x4ft
        -0x48t
        0x67t
        0x5dt
        -0x16t
        0x23t
        0x63t
        -0x7dt
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

    .line 707
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

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

    const-string p0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 764
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

    const-string p4, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIfaceCallback"

    packed-switch p1, :pswitch_data_1a4

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1c0

    goto/16 :goto_1a2

    .line 1026
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a2

    .line 1015
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1018
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1019
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 1005
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->ping()V

    .line 1008
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 992
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a2

    .line 958
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 961
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 965
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 966
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 967
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 968
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge p4, p2, :cond_85

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 972
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7d

    .line 974
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 978
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_65

    .line 975
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v1, 0x0

    .line 982
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 984
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 947
    :sswitch_92
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 950
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 935
    :sswitch_a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 939
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 940
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 924
    :sswitch_ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 927
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 915
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->onConnectivityLog(Ljava/lang/String;)V

    goto/16 :goto_1a2

    .line 906
    :pswitch_d8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 909
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->onChannelSwitchCompleted(I)V

    goto/16 :goto_1a2

    .line 897
    :pswitch_e4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 900
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->onTwtNotification(B)V

    goto/16 :goto_1a2

    .line 887
    :pswitch_f0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 891
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->onTwtTorndown(BB)V

    goto/16 :goto_1a2

    .line 870
    :pswitch_100
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v5

    .line 877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v6

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v7

    .line 879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    move-object v0, p0

    .line 881
    invoke-interface/range {v0 .. v10}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->onTwtSetup(BBBBBBJII)V

    goto/16 :goto_1a2

    .line 860
    :pswitch_12d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 864
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1a2

    .line 851
    :pswitch_13c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 854
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onBeaconEventAbort(I)V

    goto :goto_1a2

    .line 837
    :pswitch_147
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v7

    move-object v0, p0

    .line 845
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V

    goto :goto_1a2

    .line 827
    :pswitch_167
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 830
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 831
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onDriverHang(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    .line 816
    :pswitch_176
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 821
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onEapEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    .line 806
    :pswitch_189
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 810
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    .line 797
    :pswitch_198
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 800
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->onNetworkAdded(I)V

    :goto_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_198
        :pswitch_189
        :pswitch_176
        :pswitch_167
        :pswitch_147
        :pswitch_13c
        :pswitch_12d
        :pswitch_100
        :pswitch_f0
        :pswitch_e4
        :pswitch_d8
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

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIfaceCallback"

    .line 776
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

    .line 783
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
