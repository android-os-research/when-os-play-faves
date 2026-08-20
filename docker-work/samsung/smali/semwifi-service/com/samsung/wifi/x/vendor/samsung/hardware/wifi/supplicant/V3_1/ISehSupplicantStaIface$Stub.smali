.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISehSupplicantStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 658
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

    .line 715
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 716
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 717
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 718
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

    .line 688
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_30

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_44

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_58

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_6c

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_30
    .array-data 1
        -0x3et
        -0x6t
        -0xet
        0x8t
        -0x7bt
        0x11t
        0x56t
        0x48t
        -0x25t
        0x7et
        -0x43t
        0x27t
        -0x23t
        -0x6bt
        -0x52t
        -0x8t
        0x3bt
        -0x60t
        0x27t
        0x32t
        -0x48t
        0x57t
        -0x4ft
        -0x5ct
        -0x34t
        0x46t
        0x77t
        -0x26t
        -0x43t
        0x2ft
        -0x73t
        -0x5et
    .end array-data

    :array_44
    .array-data 1
        -0x43t
        0x48t
        0x0t
        0x6ft
        -0x54t
        -0x3ct
        0x27t
        0xdt
        0x4bt
        0x61t
        -0x3bt
        0x13t
        -0x40t
        -0x1t
        -0xft
        0x55t
        0x4bt
        -0x25t
        -0x13t
        0x5at
        -0x19t
        0x44t
        -0x45t
        0x38t
        -0x41t
        0x27t
        0x63t
        -0x62t
        0x12t
        -0x4et
        0x79t
        0x32t
    .end array-data

    :array_58
    .array-data 1
        -0xat
        -0x37t
        -0x61t
        0x21t
        0x5t
        0x6et
        0x25t
        0x2et
        -0x6t
        -0x22t
        0x7ct
        0x4bt
        -0x5at
        -0x1ft
        -0x23t
        0x7dt
        0x7ct
        0x2ft
        0x5bt
        0x49t
        -0x29t
        0x29t
        -0x6bt
        -0x55t
        0x4et
        0x67t
        -0x4ct
        0x30t
        0x2ft
        0x7ct
        0x27t
        0x49t
    .end array-data

    :array_6c
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 666
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIface"

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIface"

    const-string v2, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantIface"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 725
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

    const-string p4, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantIface"

    const-string v2, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantStaIface"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1a4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1bc

    goto/16 :goto_1a2

    .line 1005
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a2

    .line 994
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 997
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 984
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->ping()V

    .line 987
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 971
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a2

    .line 937
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 940
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 942
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 944
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v4, 0x8

    .line 945
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    .line 946
    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 947
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v3, p2, :cond_87

    mul-int/lit8 v2, v3, 0x20

    int-to-long v4, v2

    .line 951
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_7f

    .line 953
    array-length v6, v2

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7f

    .line 957
    invoke-virtual {p4, v4, v5, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 954
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 961
    :cond_87
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 963
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 926
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 914
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 919
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 903
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 906
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    :pswitch_cc
    const-string p1, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIface"

    .line 891
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;

    move-result-object p1

    .line 894
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface;->registerCallback_3_1(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 895
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 868
    :pswitch_e8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 871
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p4

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    const/4 v4, 0x2

    new-array v5, v4, [B

    const-wide/16 v6, 0x2

    .line 875
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 878
    invoke-virtual {p2, v0, v1, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 882
    invoke-interface {p0, p1, p4, v2, v5}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->updateCellularCapabilities(BBB[B)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 883
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 856
    :pswitch_112
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;

    move-result-object p1

    .line 859
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 860
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 844
    :pswitch_12c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 847
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setAnalyticsDisconnectReason(S)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 848
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 849
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 832
    :pswitch_141
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 835
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setInterwokingEnabled(Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 836
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 816
    :pswitch_156
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 819
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->getExtendedInfomation(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface$getExtendedInfomationCallback;)V

    goto :goto_1a2

    .line 804
    :pswitch_166
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 808
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 788
    :pswitch_17b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 791
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getNetwork(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getNetworkCallback;)V

    goto :goto_1a2

    .line 773
    :pswitch_18b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getType(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getTypeCallback;)V

    goto :goto_1a2

    .line 758
    :pswitch_197
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getNameCallback;)V

    :goto_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_197
        :pswitch_18b
        :pswitch_17b
        :pswitch_166
        :pswitch_156
        :pswitch_141
        :pswitch_12c
        :pswitch_112
        :pswitch_e8
        :pswitch_cc
    .end packed-switch

    :sswitch_data_1bc
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.1::ISehSupplicantStaIface"

    .line 737
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

    .line 744
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
