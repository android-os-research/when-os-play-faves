.class public abstract Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;
.super Landroid/os/HwBinder;
.source "IFpsensorHidlSvc.java"

# interfaces
.implements Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 525
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 528
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 578
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 579
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 580
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 581
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 582
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x25t
        -0x20t
        0x1dt
        0x7at
        -0x70t
        0x6et
        -0x22t
        0x1t
        0x56t
        0x3at
        0x0t
        0x44t
        0x8t
        -0xbt
        0x20t
        0x5t
        0x16t
        0x66t
        0x1at
        -0x59t
        -0x5bt
        -0x78t
        -0x41t
        0x31t
        -0x23t
        0x2bt
        0x8t
        -0x50t
        0x7t
        0x25t
        -0x14t
        -0x78t
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
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

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvc"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 547
    const-string v0, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvc"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 588
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 590
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvc"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_180

    goto/16 :goto_17f

    .line 841
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->notifySyspropsChanged()V

    .line 844
    goto/16 :goto_17f

    .line 830
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 833
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 836
    goto/16 :goto_17f

    .line 825
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    goto/16 :goto_17f

    .line 820
    :sswitch_26
    goto/16 :goto_17f

    .line 812
    :sswitch_28
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->setHALInstrumentation()V

    .line 815
    goto/16 :goto_17f

    .line 778
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 781
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 785
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 786
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 787
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 788
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 789
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_57
    if-ge v4, v3, :cond_78

    .line 791
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 792
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 794
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_70

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_70

    .line 798
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 799
    nop

    .line 789
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 795
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_70
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 802
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_78
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 804
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 806
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_17f

    .line 762
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_85
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8b

    const/4 v1, 0x1

    goto :goto_8c

    :cond_8b
    move v1, v2

    .line 763
    .local v1, "_hidl_is_oneway":Z
    :goto_8c
    if-eqz v1, :cond_98

    .line 764
    const/high16 v0, -0x80000000

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 766
    goto/16 :goto_17f

    .line 767
    :cond_98
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 773
    goto/16 :goto_17f

    .line 750
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 753
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 754
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 755
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 757
    goto/16 :goto_17f

    .line 739
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 742
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 743
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_17f

    .line 723
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 726
    .local v0, "cmd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$3;-><init>(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->ext_cmd(Ljava/util/ArrayList;Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$ext_cmdCallback;)V

    .line 734
    goto/16 :goto_17f

    .line 708
    .end local v0    # "cmd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    new-instance v0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$2;-><init>(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->get_size(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_sizeCallback;)V

    .line 718
    goto/16 :goto_17f

    .line 693
    :sswitch_f0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    new-instance v0, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub$1;-><init>(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->get_img_quality(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_img_qualityCallback;)V

    .line 703
    goto/16 :goto_17f

    .line 681
    :sswitch_fd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;

    move-result-object v0

    .line 684
    .local v0, "clientCb":Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;
    invoke-virtual {p0, v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->set_callback(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;)I

    move-result v1

    .line 685
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 688
    goto :goto_17f

    .line 670
    .end local v0    # "clientCb":Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;
    .end local v1    # "_hidl_out_result":I
    :sswitch_116
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->finger_detect_async()I

    move-result v0

    .line 673
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 674
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 676
    goto :goto_17f

    .line 658
    .end local v0    # "_hidl_out_result":I
    :sswitch_127
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 661
    .local v0, "para":I
    invoke-virtual {p0, v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->capture_raw_img(I)I

    move-result v1

    .line 662
    .restart local v1    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 665
    goto :goto_17f

    .line 647
    .end local v0    # "para":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_13c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->cancel()I

    move-result v0

    .line 650
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto :goto_17f

    .line 634
    .end local v0    # "_hidl_out_result":I
    :sswitch_14d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 637
    .local v0, "tag":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 638
    .local v1, "value":I
    invoke-virtual {p0, v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->set_property(II)I

    move-result v3

    .line 639
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 640
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 642
    goto :goto_17f

    .line 621
    .end local v0    # "tag":I
    .end local v1    # "value":I
    .end local v3    # "_hidl_out_result":I
    :sswitch_166
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 624
    .restart local v0    # "tag":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 625
    .restart local v1    # "value":I
    invoke-virtual {p0, v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->svc_ctrl(II)I

    move-result v3

    .line 626
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    nop

    .line 853
    .end local v0    # "tag":I
    .end local v1    # "value":I
    .end local v3    # "_hidl_out_result":I
    :goto_17f
    return-void

    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_166
        0x2 -> :sswitch_14d
        0x3 -> :sswitch_13c
        0x4 -> :sswitch_127
        0x5 -> :sswitch_116
        0x6 -> :sswitch_fd
        0x7 -> :sswitch_f0
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_d2
        0xf43484e -> :sswitch_c0
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_85
        0xf485348 -> :sswitch_30
        0xf494e54 -> :sswitch_28
        0xf4c5444 -> :sswitch_26
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 572
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 600
    const-string v0, "vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 601
    return-object p0

    .line 603
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->registerService(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 594
    const/4 v0, 0x1

    return v0
.end method
