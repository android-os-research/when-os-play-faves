.class public final Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
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

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 257
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 261
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 623
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 624
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 626
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 628
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 630
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 631
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 632
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 634
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 635
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 276
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

    .line 735
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 736
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 740
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 741
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 742
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 744
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 745
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 746
    nop

    .line 748
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 746
    return-object v2

    .line 748
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 749
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

    .line 660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 667
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 671
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 673
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 674
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 675
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 674
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 678
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 679
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_45
    if-ge v3, v12, :cond_59

    .line 680
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 682
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 683
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 684
    nop

    .line 686
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_5e

    .line 679
    nop

    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 690
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v11    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 692
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 690
    return-object v10

    .line 692
    .end local v10    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 693
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

    .line 288
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 289
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 294
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 295
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 296
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 298
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 299
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 302
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 303
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

    .line 498
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 499
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 503
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 504
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 505
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 507
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 508
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 511
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 512
    nop

    .line 513
    return-void

    .line 511
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 512
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

    .line 478
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 479
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 481
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 483
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 484
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 485
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 487
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 488
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 491
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 492
    nop

    .line 493
    return-void

    .line 491
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 492
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

    .line 394
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 395
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 398
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 400
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 401
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 404
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 405
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 408
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 409
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

    .line 373
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 374
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 380
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 383
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 384
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 387
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 388
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

    .line 415
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 416
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 419
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 421
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 422
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 423
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 425
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 426
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 429
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 430
    nop

    .line 431
    return-void

    .line 429
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 430
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

    .line 436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 437
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 440
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 442
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 443
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 444
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 446
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 447
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 450
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 451
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

    .line 331
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 332
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 338
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 339
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 341
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 342
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 345
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 346
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

    .line 352
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 353
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 356
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 358
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 359
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 362
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 363
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 366
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 367
    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 281
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 605
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 610
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 611
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 613
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 614
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 616
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 614
    return-object v2

    .line 616
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 617
    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 642
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 646
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 648
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 650
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 651
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 651
    return-object v2

    .line 653
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 654
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

    .line 714
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 755
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 756
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 760
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 761
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 763
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 764
    nop

    .line 765
    return-void

    .line 763
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 764
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 720
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 724
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 725
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 726
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 728
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 729
    nop

    .line 730
    return-void

    .line 728
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 729
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

    .line 457
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 458
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 461
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 463
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 464
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 465
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 467
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 468
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 471
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 472
    nop

    .line 473
    return-void

    .line 471
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 472
    throw v2
.end method

.method public runSpenCmdNoRead(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmdname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 541
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 544
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 546
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 547
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 548
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 550
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 551
    .local v2, "_hidl_out_retval":I
    nop

    .line 553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 551
    return v2

    .line 553
    .end local v2    # "_hidl_out_retval":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 554
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

    .line 309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 314
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 316
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 317
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 318
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 320
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 321
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 324
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 325
    throw v2
.end method

.method public runTspCmdNoRead(ILjava/lang/String;)I
    .registers 8
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 520
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 522
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 524
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 526
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 527
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 530
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 531
    .local v2, "_hidl_out_retval":I
    nop

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 531
    return v2

    .line 533
    .end local v2    # "_hidl_out_retval":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 534
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 700
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 704
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 705
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 707
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 708
    nop

    .line 709
    return-void

    .line 707
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 708
    throw v2
.end method

.method public setSpenEnable(IZ)I
    .registers 8
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 583
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 585
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 587
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 589
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 590
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 591
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 593
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 594
    .local v2, "_hidl_out_retval":I
    nop

    .line 596
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 594
    return v2

    .line 596
    .end local v2    # "_hidl_out_retval":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 597
    throw v2
.end method

.method public setTspEnable(IIZ)I
    .registers 9
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 563
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 564
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 566
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 568
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 569
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 570
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 572
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2f

    .line 573
    .local v2, "_hidl_out_retval":I
    nop

    .line 575
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 573
    return v2

    .line 575
    .end local v2    # "_hidl_out_retval":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 576
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 267
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 268
    :catch_18
    move-exception v0

    .line 271
    const-string v0, "[class or subclass of vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev]@Proxy"

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

    .line 770
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
