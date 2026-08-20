.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicant.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 676
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

    .line 731
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 732
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 733
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 734
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

    .line 705
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
        -0x1dt
        0x62t
        0x20t
        0x3bt
        -0x6ct
        0x1ft
        0x18t
        -0x43t
        0x4ct
        -0x46t
        0x29t
        -0x5at
        0x2at
        -0x21t
        -0x60t
        0x24t
        0x53t
        -0x13t
        0x0t
        -0x2at
        -0x42t
        0x5bt
        0x72t
        -0x33t
        -0x4at
        -0x3ct
        -0x29t
        -0x20t
        -0x41t
        0x39t
        0x4at
        0x40t
    .end array-data

    :array_3c
    .array-data 1
        -0x9t
        -0x1bt
        0x5ct
        0x8t
        0x18t
        0x7dt
        -0x74t
        -0x7bt
        0x50t
        0x68t
        -0x5ft
        -0x12t
        0x3dt
        0xct
        -0x73t
        -0x52t
        -0x12t
        0x75t
        0x70t
        0x29t
        0x2dt
        -0x6at
        0x50t
        -0x64t
        0x21t
        -0x58t
        0x75t
        0x6dt
        0x4ft
        0x5ct
        -0x5t
        -0x65t
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

    .line 684
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicant"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicant"

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

    const-string p0, "android.hardware.wifi.supplicant@1.1::ISupplicant"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 741
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

    const-string p4, "android.hardware.wifi.supplicant@1.1::ISupplicant"

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1a4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1be

    goto/16 :goto_1a2

    .line 1017
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1a2

    .line 1006
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1009
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 996
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->ping()V

    .line 999
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 983
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->setHALInstrumentation()V

    goto/16 :goto_1a2

    .line 949
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 952
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 954
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 956
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 957
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 958
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 959
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 963
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 965
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 969
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 966
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 973
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 975
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 938
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 941
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 942
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 926
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 930
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 931
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 915
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 918
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 907
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;->terminate()V

    goto/16 :goto_1a2

    .line 894
    :pswitch_d4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 897
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 898
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;->removeInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 899
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 877
    :pswitch_ee
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 880
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 881
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant;->addInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;)V

    goto/16 :goto_1a2

    .line 865
    :pswitch_103
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 868
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->setConcurrencyPriority(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 869
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 854
    :pswitch_119
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->isDebugShowKeysEnabled()Z

    move-result p0

    .line 857
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1a2

    .line 843
    :pswitch_12b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->isDebugShowTimestampEnabled()Z

    move-result p0

    .line 846
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 832
    :pswitch_13c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getDebugLevel()I

    move-result p0

    .line 835
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 818
    :pswitch_14d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 823
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->setDebugParams(IZZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 824
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 825
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 806
    :pswitch_16a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;

    move-result-object p1

    .line 809
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 810
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1a2

    .line 791
    :pswitch_183
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V

    goto :goto_1a2

    .line 774
    :pswitch_18f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;-><init>()V

    .line 777
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 778
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V

    :goto_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_18f
        :pswitch_183
        :pswitch_16a
        :pswitch_14d
        :pswitch_13c
        :pswitch_12b
        :pswitch_119
        :pswitch_103
        :pswitch_ee
        :pswitch_d4
        :pswitch_cc
    .end packed-switch

    :sswitch_data_1be
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

    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicant"

    .line 753
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

    .line 760
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->interfaceDescriptor()Ljava/lang/String;

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
