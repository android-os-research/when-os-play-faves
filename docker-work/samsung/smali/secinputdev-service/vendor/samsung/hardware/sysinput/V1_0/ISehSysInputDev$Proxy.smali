.class public final Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 395
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 399
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 677
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 679
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 681
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 683
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 684
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 685
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 687
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 688
    nop

    .line 689
    return-void

    .line 687
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 688
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 414
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 789
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 791
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 793
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 794
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 795
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 797
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 798
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 799
    nop

    .line 801
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 799
    return-object v2

    .line 801
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 802
    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 714
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 718
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 719
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 720
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 724
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 726
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 727
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 728
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 727
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 731
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 732
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_45
    if-ge v3, v12, :cond_59

    .line 733
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 735
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 736
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 737
    nop

    .line 739
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_5e

    .line 732
    nop

    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 743
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v11    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 745
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 743
    return-object v10

    .line 745
    .end local v10    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 746
    throw v2
.end method

.method public getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V
    .registers 8
    .param p1, "keycode"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 427
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 430
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 432
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 433
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 434
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 436
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 437
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 440
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 441
    throw v2
.end method

.method public getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V
    .registers 7
    .param p1, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 637
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 641
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 642
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 643
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 645
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 646
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 649
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 650
    nop

    .line 651
    return-void

    .line 649
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 650
    throw v2
.end method

.method public getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V
    .registers 7
    .param p1, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 617
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 621
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 622
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 626
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 629
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 630
    throw v2
.end method

.method public getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 533
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 536
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 538
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 539
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 540
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 542
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 543
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 546
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    throw v2
.end method

.method public getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 512
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 515
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 517
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 518
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 519
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 521
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 522
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 525
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 526
    nop

    .line 527
    return-void

    .line 525
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 526
    throw v2
.end method

.method public getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 554
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 557
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 563
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 564
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 567
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 568
    throw v2
.end method

.method public getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 575
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 578
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 580
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 581
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 582
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 584
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 585
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 588
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 589
    nop

    .line 590
    return-void

    .line 588
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 589
    throw v2
.end method

.method public getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 470
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 473
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 475
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 476
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 477
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 479
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 480
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 483
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 484
    nop

    .line 485
    return-void

    .line 483
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 484
    throw v2
.end method

.method public getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 491
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 494
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 496
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 497
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 500
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 501
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 504
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 419
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 658
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 662
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 663
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 664
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 666
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 667
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 669
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 667
    return-object v2

    .line 669
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 670
    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 695
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 701
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 703
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 704
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 706
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 704
    return-object v2

    .line 706
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 707
    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 809
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 813
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 814
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 816
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 817
    nop

    .line 818
    return-void

    .line 816
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 817
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 773
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 777
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 778
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 779
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 781
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 782
    nop

    .line 783
    return-void

    .line 781
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 782
    throw v2
.end method

.method public runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V
    .registers 8
    .param p1, "cmdname"    # Ljava/lang/String;
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 596
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 599
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 601
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 602
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 605
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 606
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 609
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 610
    nop

    .line 611
    return-void

    .line 609
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 610
    throw v2
.end method

.method public runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V
    .registers 9
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;
    .param p3, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 448
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 450
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 454
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 455
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 459
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 462
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 463
    nop

    .line 464
    return-void

    .line 462
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 463
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 753
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 760
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 761
    nop

    .line 762
    return-void

    .line 760
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 761
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 405
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 406
    :catch_18
    move-exception v0

    .line 409
    const-string v0, "[class or subclass of vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
