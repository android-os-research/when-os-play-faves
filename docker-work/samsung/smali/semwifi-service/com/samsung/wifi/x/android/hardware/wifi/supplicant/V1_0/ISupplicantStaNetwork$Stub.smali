.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3879
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

    .line 3934
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3935
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 3936
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 3937
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

    .line 3908
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
        -0x4ft
        0x2et
        -0x10t
        -0x43t
        -0x28t
        -0x5ct
        -0x2et
        0x47t
        -0x58t
        -0x5at
        -0x17t
        0x60t
        -0x4et
        0x27t
        -0x13t
        0x32t
        0x38t
        0x3ft
        0x2bt
        0x2t
        0x41t
        -0xbt
        0x5dt
        0x67t
        -0x4t
        -0x16t
        0x6et
        -0x1t
        0x6at
        0x67t
        0x37t
        -0x6t
    .end array-data

    :array_3c
    .array-data 1
        -0x33t
        -0x60t
        0x10t
        0x8t
        -0x40t
        0x69t
        0x22t
        -0x6t
        0x37t
        -0x3ft
        0x21t
        0x3et
        -0x65t
        -0x48t
        0x31t
        -0x5ft
        0x9t
        -0x4dt
        0x17t
        0x45t
        0x32t
        -0x80t
        0x56t
        0x16t
        -0x5t
        0x71t
        0x61t
        -0x13t
        -0x3ct
        0x3t
        -0x7at
        0x6ft
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

    .line 3887
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    const-string p0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 3944
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

    const-string p4, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    const-wide/16 v0, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    packed-switch p1, :pswitch_data_5ee

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_682

    goto/16 :goto_5ec

    .line 5090
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5092
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->notifySyspropsChanged()V

    goto/16 :goto_5ec

    .line 5079
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5081
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 5082
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5083
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 5069
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5071
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->ping()V

    .line 5072
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 5056
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5058
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setHALInstrumentation()V

    goto/16 :goto_5ec

    .line 5022
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5024
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 5025
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5027
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 5029
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v4, 0x8

    .line 5030
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    .line 5031
    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5032
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v4, p2, 0x20

    invoke-direct {p4, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v3, p2, :cond_87

    mul-int/lit8 v4, v3, 0x20

    int-to-long v4, v4

    .line 5036
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_7f

    .line 5038
    array-length v7, v6

    if-ne v7, v2, :cond_7f

    .line 5042
    invoke-virtual {p4, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 5039
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5046
    :cond_87
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5048
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 5011
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5013
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 5014
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5015
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4999
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 5002
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 5003
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5004
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4988
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4990
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 4991
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4992
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4976
    :pswitch_cc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4979
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4980
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4981
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4965
    :pswitch_e2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4967
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4968
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4969
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4945
    :pswitch_f4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0xe

    new-array p4, p1, [B

    const-wide/16 v4, 0xe

    .line 4949
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 4952
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4956
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4957
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4958
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4932
    :pswitch_113
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4934
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 4935
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4936
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4937
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4938
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4921
    :pswitch_12d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4923
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4924
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4925
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4909
    :pswitch_13f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4911
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4912
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4913
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4914
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4898
    :pswitch_155
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->select()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4901
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4902
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4887
    :pswitch_167
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->disable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4890
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4891
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4875
    :pswitch_179
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4878
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->enable(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4879
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4880
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4860
    :pswitch_18f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4862
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$32;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$32;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWpsNfcConfigurationToken(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    goto/16 :goto_5ec

    .line 4845
    :pswitch_19c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4847
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$31;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$31;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getIdStr(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    goto/16 :goto_5ec

    .line 4830
    :pswitch_1a9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4832
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$30;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$30;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapDomainSuffixMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    goto/16 :goto_5ec

    .line 4815
    :pswitch_1b6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4817
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$29;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$29;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngineID(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    goto/16 :goto_5ec

    .line 4800
    :pswitch_1c3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4802
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$28;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$28;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngine(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    goto/16 :goto_5ec

    .line 4785
    :pswitch_1d0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4787
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$27;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAltSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    goto/16 :goto_5ec

    .line 4770
    :pswitch_1dd
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$26;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    goto/16 :goto_5ec

    .line 4755
    :pswitch_1ea
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4757
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$25;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPrivateKeyId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    goto/16 :goto_5ec

    .line 4740
    :pswitch_1f7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4742
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$24;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapClientCert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    goto/16 :goto_5ec

    .line 4725
    :pswitch_204
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4727
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCAPath(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    goto/16 :goto_5ec

    .line 4710
    :pswitch_211
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4712
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCACert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    goto/16 :goto_5ec

    .line 4695
    :pswitch_21e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4697
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    goto/16 :goto_5ec

    .line 4680
    :pswitch_22b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4682
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$20;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAnonymousIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    goto/16 :goto_5ec

    .line 4665
    :pswitch_238
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4667
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$19;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    goto/16 :goto_5ec

    .line 4650
    :pswitch_245
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4652
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPhase2Method(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    goto/16 :goto_5ec

    .line 4635
    :pswitch_252
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapMethod(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    goto/16 :goto_5ec

    .line 4620
    :pswitch_25f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4622
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$16;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getRequirePmf(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    goto/16 :goto_5ec

    .line 4605
    :pswitch_26c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4607
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepTxKeyIdx(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    goto/16 :goto_5ec

    .line 4589
    :pswitch_279
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4592
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$14;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepKey(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    goto/16 :goto_5ec

    .line 4560
    :pswitch_28a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4562
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPsk(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    goto/16 :goto_5ec

    .line 4545
    :pswitch_297
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPskPassphrase(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    goto/16 :goto_5ec

    .line 4530
    :pswitch_2a4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4532
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPairwiseCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    goto/16 :goto_5ec

    .line 4515
    :pswitch_2b1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4517
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getGroupCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    goto/16 :goto_5ec

    .line 4500
    :pswitch_2be
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4502
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getAuthAlg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    goto/16 :goto_5ec

    .line 4485
    :pswitch_2cb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4487
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getProto(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    goto/16 :goto_5ec

    .line 4470
    :pswitch_2d8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4472
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getKeyMgmt(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    goto/16 :goto_5ec

    .line 4455
    :pswitch_2e5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4457
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getScanSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    goto/16 :goto_5ec

    .line 4426
    :pswitch_2f2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4428
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getBssid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    goto/16 :goto_5ec

    .line 4411
    :pswitch_2ff
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4413
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    goto/16 :goto_5ec

    .line 4399
    :pswitch_30c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4402
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setUpdateIdentifier(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4403
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4404
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4405
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4387
    :pswitch_322
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4390
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4391
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4392
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4375
    :pswitch_338
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4378
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4379
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4380
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4381
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4363
    :pswitch_34e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4366
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4367
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4368
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4351
    :pswitch_364
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4354
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4355
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4356
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4357
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4339
    :pswitch_37a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4342
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngine(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4343
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4344
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4327
    :pswitch_390
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4330
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4331
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4332
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4315
    :pswitch_3a6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4318
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4319
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4320
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4321
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4303
    :pswitch_3bc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4306
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4307
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4308
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4291
    :pswitch_3d2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4294
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4295
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4296
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4279
    :pswitch_3e8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4282
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4283
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4284
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4285
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4267
    :pswitch_3fe
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4270
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4271
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4272
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4255
    :pswitch_414
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4258
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4259
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4243
    :pswitch_42a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4246
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4247
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4248
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4249
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4231
    :pswitch_440
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4234
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4235
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4236
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4219
    :pswitch_456
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4222
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPhase2Method(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4223
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4224
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4225
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4207
    :pswitch_46c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4210
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapMethod(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4211
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4212
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4195
    :pswitch_482
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4198
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setRequirePmf(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4199
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4200
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4183
    :pswitch_498
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4186
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepTxKeyIdx(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4187
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4188
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4170
    :pswitch_4ae
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 4174
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4175
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4176
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4150
    :pswitch_4c8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v2, [B

    const-wide/16 v4, 0x20

    .line 4154
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 4157
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4161
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPsk([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4162
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4163
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4138
    :pswitch_4e5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4141
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4142
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4143
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4126
    :pswitch_4fb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4129
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPairwiseCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4130
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4114
    :pswitch_511
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4117
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setGroupCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4118
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4119
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4102
    :pswitch_527
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4105
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setAuthAlg(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4106
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4107
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4090
    :pswitch_53d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4093
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProto(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4094
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4095
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4078
    :pswitch_553
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4080
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 4081
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setKeyMgmt(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4082
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4083
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ec

    .line 4066
    :pswitch_569
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 4069
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setScanSsid(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4070
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4071
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ec

    .line 4046
    :pswitch_57e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p4, p1, [B

    const-wide/16 v4, 0x6

    .line 4050
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 4053
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4057
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setBssid([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4058
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4059
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ec

    .line 4034
    :pswitch_59b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 4037
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4038
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4039
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ec

    .line 4022
    :pswitch_5b0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object p1

    .line 4025
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 4026
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4027
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ec

    .line 4007
    :pswitch_5c9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    goto :goto_5ec

    .line 3992
    :pswitch_5d5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3994
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getInterfaceName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    goto :goto_5ec

    .line 3977
    :pswitch_5e1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3979
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    :goto_5ec
    return-void

    nop

    :pswitch_data_5ee
    .packed-switch 0x1
        :pswitch_5e1
        :pswitch_5d5
        :pswitch_5c9
        :pswitch_5b0
        :pswitch_59b
        :pswitch_57e
        :pswitch_569
        :pswitch_553
        :pswitch_53d
        :pswitch_527
        :pswitch_511
        :pswitch_4fb
        :pswitch_4e5
        :pswitch_4c8
        :pswitch_4ae
        :pswitch_498
        :pswitch_482
        :pswitch_46c
        :pswitch_456
        :pswitch_440
        :pswitch_42a
        :pswitch_414
        :pswitch_3fe
        :pswitch_3e8
        :pswitch_3d2
        :pswitch_3bc
        :pswitch_3a6
        :pswitch_390
        :pswitch_37a
        :pswitch_364
        :pswitch_34e
        :pswitch_338
        :pswitch_322
        :pswitch_30c
        :pswitch_2ff
        :pswitch_2f2
        :pswitch_2e5
        :pswitch_2d8
        :pswitch_2cb
        :pswitch_2be
        :pswitch_2b1
        :pswitch_2a4
        :pswitch_297
        :pswitch_28a
        :pswitch_279
        :pswitch_26c
        :pswitch_25f
        :pswitch_252
        :pswitch_245
        :pswitch_238
        :pswitch_22b
        :pswitch_21e
        :pswitch_211
        :pswitch_204
        :pswitch_1f7
        :pswitch_1ea
        :pswitch_1dd
        :pswitch_1d0
        :pswitch_1c3
        :pswitch_1b6
        :pswitch_1a9
        :pswitch_19c
        :pswitch_18f
        :pswitch_179
        :pswitch_167
        :pswitch_155
        :pswitch_13f
        :pswitch_12d
        :pswitch_113
        :pswitch_f4
        :pswitch_e2
        :pswitch_cc
    .end packed-switch

    :sswitch_data_682
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf504e47 -> :sswitch_2d
        0xf524546 -> :sswitch_1b
        0xf535953 -> :sswitch_13
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 3956
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

    .line 3963
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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
