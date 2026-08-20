.class public abstract Landroid/hidl/manager/V1_1/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_1/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_1/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 602
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

    .line 657
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 658
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 659
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 660
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

    .line 631
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
        0xbt
        -0x6ct
        -0x24t
        -0x79t
        0x6ft
        0x74t
        -0x62t
        -0x2et
        0x4at
        -0x68t
        -0xat
        0x1ct
        0x41t
        -0x2ct
        0x6at
        -0x29t
        0x5at
        0x27t
        0x51t
        0x11t
        0x63t
        -0xft
        -0x6at
        -0x76t
        0x8t
        0x42t
        0x13t
        -0x5dt
        0x3ct
        0x68t
        0x4et
        -0xat
    .end array-data

    :array_3c
    .array-data 1
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
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

    .line 610
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    const-string v1, "android.hidl.manager@1.0::IServiceManager"

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

    const-string p0, "android.hidl.manager@1.1::IServiceManager"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 667
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

    const-string p4, "android.hidl.manager@1.0::IServiceManager"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1b6

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1cc

    goto/16 :goto_1b4

    .line 915
    :sswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1b4

    .line 904
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 907
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 894
    :sswitch_27
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->ping()V

    .line 897
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 881
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->setHALInstrumentation()V

    goto/16 :goto_1b4

    .line 847
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 850
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 854
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 855
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 856
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 857
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge v0, p2, :cond_83

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    .line 861
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 863
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 867
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 864
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v0, 0x0

    .line 871
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 873
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 836
    :sswitch_90
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 839
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 824
    :sswitch_a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 828
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 813
    :sswitch_b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 816
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 817
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    :pswitch_ca
    const-string p1, "android.hidl.manager@1.1::IServiceManager"

    .line 799
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 804
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_1/IServiceManager;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p0

    .line 805
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 787
    :pswitch_ee
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 791
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 776
    :pswitch_104
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object p0

    .line 779
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-static {p3, p0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 762
    :pswitch_116
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 767
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p0

    .line 768
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 769
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1b4

    .line 750
    :pswitch_138
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-interface {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 754
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1b4

    .line 739
    :pswitch_14d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->list()Ljava/util/ArrayList;

    move-result-object p0

    .line 742
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 743
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1b4

    .line 726
    :pswitch_15e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 730
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p0

    .line 731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1b4

    .line 713
    :pswitch_177
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 717
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p0

    .line 718
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 719
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_1b4

    .line 700
    :pswitch_194
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 704
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p0

    .line 705
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez p0, :cond_1aa

    const/4 p0, 0x0

    goto :goto_1ae

    .line 706
    :cond_1aa
    invoke-interface {p0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    :goto_1ae
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_1b4
    return-void

    nop

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_194
        :pswitch_177
        :pswitch_15e
        :pswitch_14d
        :pswitch_138
        :pswitch_116
        :pswitch_104
        :pswitch_ee
        :pswitch_ca
    .end packed-switch

    :sswitch_data_1cc
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

    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    .line 679
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

    .line 686
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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
