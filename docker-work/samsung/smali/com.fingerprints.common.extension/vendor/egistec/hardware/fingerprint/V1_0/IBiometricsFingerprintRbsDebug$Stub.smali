.class public abstract Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprintRbsDebug.java"

# interfaces
.implements Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 515
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 518
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 560
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 561
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 562
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 563
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

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

    .line 536
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
        0x5t
        -0x66t
        0x63t
        -0x35t
        -0x38t
        -0x31t
        -0x36t
        -0x49t
        0x64t
        -0x28t
        0x14t
        0x5dt
        0x61t
        -0x1at
        0x16t
        0x75t
        -0x63t
        0x79t
        -0x5at
        -0x6et
        0x5at
        -0x34t
        0x1at
        -0x26t
        -0x6ct
        0x6dt
        -0x50t
        0x6ft
        0x63t
        0x70t
        0x21t
        0x2ct
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

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.egistec.hardware.fingerprint@1.0::IBiometricsFingerprintRbsDebug"

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

    .line 530
    const-string v0, "vendor.egistec.hardware.fingerprint@1.0::IBiometricsFingerprintRbsDebug"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 569
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 20
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.egistec.hardware.fingerprint@1.0::IBiometricsFingerprintRbsDebug"

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_1d2

    goto/16 :goto_1d1

    .line 838
    :sswitch_f
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->notifySyspropsChanged()V

    .line 841
    goto/16 :goto_1d1

    .line 827
    :sswitch_17
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 830
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_1d1

    .line 822
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_29
    goto/16 :goto_1d1

    .line 817
    :sswitch_2b
    goto/16 :goto_1d1

    .line 809
    :sswitch_2d
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->setHALInstrumentation()V

    .line 812
    goto/16 :goto_1d1

    .line 779
    :sswitch_35
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 782
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 786
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 787
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 788
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 789
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 790
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_5c
    if-ge v4, v2, :cond_7a

    .line 792
    mul-int/lit8 v5, v4, 0x20

    int-to-long v9, v5

    .line 793
    .local v9, "_hidl_array_offset_1":J
    const/4 v5, 0x0

    .local v5, "_hidl_index_1_0":I
    :goto_62
    const/16 v11, 0x20

    if-ge v5, v11, :cond_77

    .line 794
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    aget-byte v11, v11, v5

    invoke-virtual {v3, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 795
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 793
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 790
    .end local v5    # "_hidl_index_1_0":I
    .end local v9    # "_hidl_array_offset_1":J
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 799
    .end local v4    # "_hidl_index_0":I
    :cond_7a
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 801
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 803
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_1d1

    .line 768
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_87
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_1d1

    .line 759
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_99
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 763
    goto/16 :goto_1d1

    .line 748
    :sswitch_a4
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 751
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto/16 :goto_1d1

    .line 736
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b6
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 739
    .local v0, "user_id":I
    invoke-virtual {p0, v0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->get_fingerprint_ids(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 740
    .local v1, "_hidl_out_figner":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 741
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 743
    goto/16 :goto_1d1

    .line 723
    .end local v0    # "user_id":I
    .end local v1    # "_hidl_out_figner":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_cc
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 726
    .restart local v0    # "user_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 727
    .local v1, "finger_id":I
    invoke-virtual {p0, v0, v1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->remove_fingerprint(II)I

    move-result v2

    .line 728
    .local v2, "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 731
    goto/16 :goto_1d1

    .line 708
    .end local v0    # "user_id":I
    .end local v1    # "finger_id":I
    .end local v2    # "_hidl_out_ret":I
    :sswitch_e6
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 711
    .local v10, "user_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v11

    .line 712
    .local v11, "finger_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 713
    .local v12, "finger_count":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v13

    .line 714
    .local v13, "challenge":J
    move-object v0, p0

    move v1, v10

    move-object v2, v11

    move v3, v12

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->verify(ILjava/util/ArrayList;IJ)I

    move-result v0

    .line 715
    .local v0, "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 718
    goto/16 :goto_1d1

    .line 697
    .end local v0    # "_hidl_out_ret":I
    .end local v10    # "user_id":I
    .end local v11    # "finger_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "finger_count":I
    .end local v13    # "challenge":J
    :sswitch_10d
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->post_enroll()I

    move-result v0

    .line 700
    .restart local v0    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 701
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 703
    goto/16 :goto_1d1

    .line 686
    .end local v0    # "_hidl_out_ret":I
    :sswitch_11f
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->enroll()I

    move-result v0

    .line 689
    .restart local v0    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto/16 :goto_1d1

    .line 673
    .end local v0    # "_hidl_out_ret":I
    :sswitch_131
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 676
    .local v0, "user_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 677
    .local v1, "fingerprint_id":I
    invoke-virtual {p0, v0, v1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->pre_enroll(II)I

    move-result v2

    .line 678
    .restart local v2    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 681
    goto/16 :goto_1d1

    .line 660
    .end local v0    # "user_id":I
    .end local v1    # "fingerprint_id":I
    .end local v2    # "_hidl_out_ret":I
    :sswitch_14b
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 663
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "pathname":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->set_data_path(ILjava/lang/String;)I

    move-result v2

    .line 665
    .restart local v2    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto :goto_1d1

    .line 647
    .end local v0    # "type":I
    .end local v1    # "pathname":Ljava/lang/String;
    .end local v2    # "_hidl_out_ret":I
    :sswitch_164
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 650
    .local v0, "user_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 651
    .restart local v1    # "pathname":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->active_user_group(ILjava/lang/String;)I

    move-result v2

    .line 652
    .restart local v2    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 655
    goto :goto_1d1

    .line 636
    .end local v0    # "user_id":I
    .end local v1    # "pathname":Ljava/lang/String;
    .end local v2    # "_hidl_out_ret":I
    :sswitch_17d
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->cancel()I

    move-result v0

    .line 639
    .local v0, "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 640
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 642
    goto :goto_1d1

    .line 625
    .end local v0    # "_hidl_out_ret":I
    :sswitch_18e
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->uninitialize()I

    move-result v0

    .line 628
    .restart local v0    # "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 631
    goto :goto_1d1

    .line 613
    .end local v0    # "_hidl_out_ret":I
    :sswitch_19f
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebugCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebugCallback;

    move-result-object v0

    .line 616
    .local v0, "clientCallback":Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebugCallback;
    invoke-virtual {p0, v0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->set_on_callback_proc(Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebugCallback;)I

    move-result v1

    .line 617
    .local v1, "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 620
    goto :goto_1d1

    .line 600
    .end local v0    # "clientCallback":Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebugCallback;
    .end local v1    # "_hidl_out_ret":I
    :sswitch_1b8
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 603
    .local v0, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 604
    .local v1, "in_buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->extra_api(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 605
    .local v2, "_hidl_out_out_buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 606
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 608
    nop

    .line 850
    .end local v0    # "pid":I
    .end local v1    # "in_buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_out_out_buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_1d1
    return-void

    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_1b8
        0x2 -> :sswitch_19f
        0x3 -> :sswitch_18e
        0x4 -> :sswitch_17d
        0x5 -> :sswitch_164
        0x6 -> :sswitch_14b
        0x7 -> :sswitch_131
        0x8 -> :sswitch_11f
        0x9 -> :sswitch_10d
        0xa -> :sswitch_e6
        0xb -> :sswitch_cc
        0xc -> :sswitch_b6
        0xf43484e -> :sswitch_a4
        0xf444247 -> :sswitch_99
        0xf445343 -> :sswitch_87
        0xf485348 -> :sswitch_35
        0xf494e54 -> :sswitch_2d
        0xf4c5444 -> :sswitch_2b
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 554
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 579
    const-string v0, "vendor.egistec.hardware.fingerprint@1.0::IBiometricsFingerprintRbsDebug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 580
    return-object p0

    .line 582
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

    .line 586
    invoke-virtual {p0, p1}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->registerService(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 545
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/egistec/hardware/fingerprint/V1_0/IBiometricsFingerprintRbsDebug$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 573
    const/4 v0, 0x1

    return v0
.end method
