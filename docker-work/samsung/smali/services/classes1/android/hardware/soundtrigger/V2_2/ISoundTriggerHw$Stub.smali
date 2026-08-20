.class public abstract Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;
.super Landroid/os/HwBinder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 664
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

    .line 721
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 722
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 723
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 724
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

    .line 694
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
        -0x32t
        0x4bt
        -0x68t
        0x21t
        0x19t
        0x59t
        0x44t
        -0x6dt
        0x61t
        0x14t
        0x6dt
        0x4bt
        0x1et
        0x55t
        0x54t
        -0x24t
        -0x7ct
        0x1ct
        -0x15t
        0x4dt
        0x45t
        0x77t
        0x15t
        0x4dt
        0x7bt
        0x2ft
        -0x4at
        -0x2ft
        -0x15t
        0x50t
        0x4ft
        0x76t
    .end array-data

    :array_44
    .array-data 1
        -0x4ct
        -0xbt
        0x7t
        -0x4ct
        -0x24t
        -0x65t
        0x5ct
        -0x2bt
        -0x10t
        -0x1ct
        0x44t
        0x59t
        0x26t
        -0x54t
        -0x49t
        -0x27t
        0x45t
        0x25t
        -0x52t
        0x60t
        -0x24t
        0x30t
        0x7bt
        0x39t
        0x51t
        0x14t
        0x22t
        -0x7dt
        0x63t
        0x22t
        0x7t
        -0x4at
    .end array-data

    :array_58
    .array-data 1
        0x5bt
        -0x11t
        -0x40t
        0x19t
        -0x35t
        -0x17t
        0x49t
        0x53t
        0x66t
        0x1et
        0x2ct
        -0x25t
        -0x6bt
        -0x1dt
        -0x31t
        0x64t
        -0xbt
        -0x1bt
        0x65t
        -0x3et
        -0x6ct
        0x3t
        -0x1ft
        -0x3et
        -0x26t
        -0x14t
        -0x3et
        -0x42t
        0x44t
        -0x20t
        -0x5bt
        0x5ct
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

    .line 672
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v2, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

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

    const-string p0, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 731
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

    const-string p4, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_202

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_21c

    goto/16 :goto_201

    .line 1036
    :sswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->notifySyspropsChanged()V

    goto/16 :goto_201

    .line 1025
    :sswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1028
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 1015
    :sswitch_29
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->ping()V

    .line 1018
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 1002
    :sswitch_37
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->setHALInstrumentation()V

    goto/16 :goto_201

    .line 968
    :sswitch_3f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 971
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 975
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 976
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 977
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 978
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge v1, p2, :cond_85

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 982
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7d

    .line 984
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 988
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 985
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v0, 0x0

    .line 992
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 994
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 957
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 960
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 945
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 949
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 950
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 934
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 937
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 938
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    :pswitch_cc
    const-string p1, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    .line 922
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 925
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result p0

    .line 926
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 927
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 906
    :pswitch_e4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 909
    new-instance p4, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 910
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object v0

    .line 912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 913
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 887
    :pswitch_10e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    new-instance p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 890
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object p4

    .line 892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 893
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$5;-><init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    goto/16 :goto_201

    .line 868
    :pswitch_12f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    new-instance p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 871
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;

    move-result-object p4

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 874
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$4;-><init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    goto/16 :goto_201

    .line 857
    :pswitch_150
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopAllRecognitions()I

    move-result p0

    .line 860
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 845
    :pswitch_162
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 848
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    .line 849
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_201

    .line 829
    :pswitch_178
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 832
    new-instance p4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    .line 833
    invoke-virtual {p4, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object v0

    .line 835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 836
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result p0

    .line 837
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_201

    .line 817
    :pswitch_1a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 820
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    .line 821
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_201

    .line 798
    :pswitch_1b6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 801
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 804
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$3;-><init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    goto :goto_201

    .line 779
    :pswitch_1d6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    new-instance p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 782
    invoke-virtual {p1, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->readFromParcel(Landroid/os/HwParcel;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;

    move-result-object p4

    .line 784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 785
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$2;-><init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    goto :goto_201

    .line 764
    :pswitch_1f6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    new-instance p1, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;-><init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    :goto_201
    return-void

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1d6
        :pswitch_1b6
        :pswitch_1a1
        :pswitch_178
        :pswitch_162
        :pswitch_150
        :pswitch_12f
        :pswitch_10e
        :pswitch_e4
        :pswitch_cc
    .end packed-switch

    :sswitch_data_21c
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

    const-string v0, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    .line 743
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

    .line 750
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->interfaceDescriptor()Ljava/lang/String;

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
