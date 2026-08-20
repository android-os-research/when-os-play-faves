.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1959
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

    .line 2018
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2019
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2020
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2021
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

    .line 1990
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
        -0x2et
        -0x61t
        -0x1at
        0x29t
        0x73t
        -0x3ct
        -0x65t
        0x6ft
        -0x5ct
        0xet
        -0x4bt
        0x6ct
        0x28t
        0x56t
        0x7et
        0x37t
        -0x3ct
        -0x45t
        -0x14t
        0x1t
        0x5ft
        -0xbt
        -0x6ft
        0x11t
        -0x13t
        -0x6t
        -0x1ct
        0x46t
        0x30t
        0x1dt
        -0x40t
        0x6dt
    .end array-data

    :array_4c
    .array-data 1
        0x12t
        0x2t
        0x11t
        0x37t
        0x1ft
        -0x23t
        0x29t
        -0x5t
        0x13t
        0x48t
        0x37t
        0x7t
        0x1dt
        0x43t
        0x2at
        0x30t
        0x2dt
        0x7bt
        0x60t
        -0x17t
        -0x47t
        0x5at
        -0xat
        0x11t
        -0x23t
        -0x73t
        -0x22t
        -0x7at
        -0x43t
        0x1ft
        0x77t
        -0x12t
    .end array-data

    :array_60
    .array-data 1
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
    .end array-data

    :array_74
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
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

    .line 1967
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

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

    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2028
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

    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    const-wide/16 v0, 0x8

    const-string v2, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    const-wide/16 v3, 0x6

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    const-string v9, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_628

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_6a2

    goto/16 :goto_626

    .line 3074
    :sswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_626

    .line 3063
    :sswitch_22
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 3066
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3067
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 3053
    :sswitch_34
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->ping()V

    .line 3056
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 3040
    :sswitch_42
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_626

    .line 3006
    :sswitch_4a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3009
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3011
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3013
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 3014
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 3015
    invoke-virtual {p1, v0, v1, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3016
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6e
    if-ge v10, p2, :cond_8e

    mul-int/lit8 v0, v10, 0x20

    int-to-long v0, v0

    .line 3020
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_86

    .line 3022
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_86

    .line 3026
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 3023
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3030
    :cond_8e
    invoke-virtual {p1, v6, v7, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3032
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2995
    :sswitch_99
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2998
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2999
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2983
    :sswitch_ab
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2987
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2988
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2972
    :sswitch_c1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2975
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2976
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2952
    :pswitch_d3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p4, p1, [B

    const-wide/16 v0, 0x4

    .line 2956
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2959
    invoke-virtual {p2, v6, v7, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2963
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->setWfdR2DeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 2964
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2965
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2940
    :pswitch_f1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;

    move-result-object p1

    .line 2943
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 2944
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2945
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2925
    :pswitch_10b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2927
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->getEdmg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$getEdmgCallback;)V

    goto/16 :goto_626

    .line 2913
    :pswitch_118
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2916
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->setEdmg(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    move-result-object p0

    .line 2917
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2918
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2901
    :pswitch_12e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2904
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->setMacRandomization(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2905
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2906
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2876
    :pswitch_144
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2881
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    new-array v5, v8, [B

    .line 2884
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2887
    invoke-virtual {v0, v6, v7, v5, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object v0, p0

    move v3, p1

    move v4, p4

    .line 2892
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->addGroup_1_2(Ljava/util/ArrayList;Ljava/lang/String;ZI[BZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2893
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2894
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2865
    :pswitch_176
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2868
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2869
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2853
    :pswitch_188
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2856
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2857
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2858
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2841
    :pswitch_19e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2844
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2845
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2846
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2826
    :pswitch_1b4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2828
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    goto/16 :goto_626

    .line 2811
    :pswitch_1c1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2813
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    goto/16 :goto_626

    .line 2791
    :pswitch_1ce
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2795
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2798
    invoke-virtual {p2, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2802
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2803
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2804
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2779
    :pswitch_1e9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2782
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2783
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2784
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2767
    :pswitch_1ff
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2770
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2771
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2772
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2742
    :pswitch_215
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v8, [B

    .line 2747
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2750
    invoke-virtual {p2, v6, v7, p4, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2754
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$11;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_626

    .line 2729
    :pswitch_22f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2733
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2734
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2735
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2708
    :pswitch_249
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v8, [B

    .line 2713
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2716
    invoke-virtual {p2, v6, v7, p4, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2720
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2721
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2722
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2696
    :pswitch_268
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2699
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2700
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2701
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2684
    :pswitch_27e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 2687
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2688
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2689
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2659
    :pswitch_294
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2663
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2666
    invoke-virtual {p4, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2671
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;

    invoke-direct {p4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    goto/16 :goto_626

    .line 2648
    :pswitch_2ae
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2650
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2651
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2652
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2635
    :pswitch_2c0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2639
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2640
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2641
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2622
    :pswitch_2da
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2626
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2627
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2628
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2610
    :pswitch_2f4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2613
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2614
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2615
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2597
    :pswitch_30a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2601
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2602
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2603
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2573
    :pswitch_324
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2577
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2580
    invoke-virtual {p2, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2584
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$9;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    goto/16 :goto_626

    .line 2549
    :pswitch_33a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2553
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2556
    invoke-virtual {p2, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2560
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$8;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    goto/16 :goto_626

    .line 2537
    :pswitch_350
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2540
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2541
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2542
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2524
    :pswitch_366
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2528
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2529
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2530
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2511
    :pswitch_380
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2515
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2516
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2517
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2490
    :pswitch_39a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p4, v8, [B

    .line 2495
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2498
    invoke-virtual {p2, v6, v7, p4, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2502
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2503
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2460
    :pswitch_3b9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v8, [B

    .line 2465
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2468
    invoke-virtual {v0, v6, v7, p4, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v0, v8, [B

    .line 2474
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2477
    invoke-virtual {p2, v6, v7, v0, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2481
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2482
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2483
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2484
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2440
    :pswitch_3e1
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2444
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2447
    invoke-virtual {p2, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2451
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2452
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2453
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2428
    :pswitch_3fc
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2431
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2432
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2433
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2415
    :pswitch_412
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2419
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2420
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2421
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2394
    :pswitch_42c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2398
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2401
    invoke-virtual {p4, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2406
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2407
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2408
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2383
    :pswitch_44b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2386
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2387
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2354
    :pswitch_45d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v1, v8, [B

    .line 2358
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p1

    .line 2361
    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2368
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 2369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2370
    new-instance v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$7;

    invoke-direct {v7, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    goto/16 :goto_626

    .line 2343
    :pswitch_488
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2346
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2347
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2332
    :pswitch_49a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2334
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2335
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2336
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2320
    :pswitch_4ac
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2323
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2324
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2325
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2326
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2307
    :pswitch_4c2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2311
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2312
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2313
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2314
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2294
    :pswitch_4dc
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2298
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2299
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2300
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2282
    :pswitch_4f6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2285
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2286
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2287
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2253
    :pswitch_50c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2255
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    goto/16 :goto_626

    .line 2241
    :pswitch_519
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object p1

    .line 2244
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2245
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2246
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2229
    :pswitch_533
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 2232
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2233
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2234
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2217
    :pswitch_549
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2220
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2221
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2222
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2205
    :pswitch_55f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2208
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2209
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2210
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2193
    :pswitch_575
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2196
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2197
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2198
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2181
    :pswitch_58b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2184
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2185
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2186
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_626

    .line 2161
    :pswitch_5a1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 2165
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2168
    invoke-virtual {p2, v6, v7, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2172
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2173
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2174
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_626

    .line 2149
    :pswitch_5bd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2152
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2153
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2154
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_626

    .line 2134
    :pswitch_5d2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_626

    .line 2118
    :pswitch_5de
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2121
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_626

    .line 2106
    :pswitch_5ee
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2109
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2110
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_626

    .line 2091
    :pswitch_603
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_626

    .line 2076
    :pswitch_60f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_626

    .line 2061
    :pswitch_61b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_626
    return-void

    nop

    :pswitch_data_628
    .packed-switch 0x1
        :pswitch_61b
        :pswitch_60f
        :pswitch_603
        :pswitch_5ee
        :pswitch_5de
        :pswitch_5d2
        :pswitch_5bd
        :pswitch_5a1
        :pswitch_58b
        :pswitch_575
        :pswitch_55f
        :pswitch_549
        :pswitch_533
        :pswitch_519
        :pswitch_50c
        :pswitch_4f6
        :pswitch_4dc
        :pswitch_4c2
        :pswitch_4ac
        :pswitch_49a
        :pswitch_488
        :pswitch_45d
        :pswitch_44b
        :pswitch_42c
        :pswitch_412
        :pswitch_3fc
        :pswitch_3e1
        :pswitch_3b9
        :pswitch_39a
        :pswitch_380
        :pswitch_366
        :pswitch_350
        :pswitch_33a
        :pswitch_324
        :pswitch_30a
        :pswitch_2f4
        :pswitch_2da
        :pswitch_2c0
        :pswitch_2ae
        :pswitch_294
        :pswitch_27e
        :pswitch_268
        :pswitch_249
        :pswitch_22f
        :pswitch_215
        :pswitch_1ff
        :pswitch_1e9
        :pswitch_1ce
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_19e
        :pswitch_188
        :pswitch_176
        :pswitch_144
        :pswitch_12e
        :pswitch_118
        :pswitch_10b
        :pswitch_f1
        :pswitch_d3
    .end packed-switch

    :sswitch_data_6a2
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
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

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 2040
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

    .line 2047
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
