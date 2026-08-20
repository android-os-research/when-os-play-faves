.class public final Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
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

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 270
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 274
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public closeTaas()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 701
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 705
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 706
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 709
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    .line 710
    .local v2, "_hidl_out_retval":I
    nop

    .line 712
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 710
    return v2

    .line 712
    .end local v2    # "_hidl_out_retval":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 713
    throw v2
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

    .line 906
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 907
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 909
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 911
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 913
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 914
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 915
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 917
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 918
    nop

    .line 919
    return-void

    .line 917
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 918
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 289
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

    .line 1018
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1019
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1023
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1024
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1025
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1027
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1028
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 1029
    nop

    .line 1031
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1029
    return-object v2

    .line 1031
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1032
    throw v2
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .registers 7
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 761
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 764
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 766
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 767
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 768
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 770
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 771
    .local v2, "_hidl_out_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .line 773
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 771
    return-object v2

    .line 773
    .end local v2    # "_hidl_out_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 774
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

    .line 943
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 944
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 949
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 950
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 954
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 956
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 957
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 958
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 957
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 961
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 962
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_45
    if-ge v3, v12, :cond_59

    .line 963
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 965
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 966
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 967
    nop

    .line 969
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_5e

    .line 962
    nop

    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 973
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v11    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 975
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 973
    return-object v10

    .line 975
    .end local v10    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 976
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

    .line 301
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 302
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 305
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 307
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 308
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 309
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 311
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 312
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 315
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 316
    nop

    .line 317
    return-void

    .line 315
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 316
    throw v2
.end method

.method public getProperty(II)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 803
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 805
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 807
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 809
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 810
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 811
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 813
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 814
    .local v2, "_hidl_out_information":Ljava/lang/String;
    nop

    .line 816
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 814
    return-object v2

    .line 816
    .end local v2    # "_hidl_out_information":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 817
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

    .line 511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 512
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 516
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 517
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 518
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 520
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 521
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 524
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 525
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

    .line 491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 492
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 496
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

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
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 504
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
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

    .line 407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 408
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 411
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 413
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 414
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 415
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 417
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 418
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 421
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 422
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

    .line 386
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 387
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 390
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 392
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 393
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 396
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 397
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 400
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
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

    .line 428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 429
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 434
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 435
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 436
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 438
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 439
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 442
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 443
    nop

    .line 444
    return-void

    .line 442
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 443
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

    .line 449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 450
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 453
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 455
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 456
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 457
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 459
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 460
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 463
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 464
    nop

    .line 465
    return-void

    .line 463
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 464
    throw v2
.end method

.method public getTspRawdata(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;
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
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 664
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 666
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 667
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 668
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 670
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 671
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 672
    .local v3, "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 674
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 675
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

    .line 344
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 345
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 348
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 350
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 351
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 352
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 354
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 355
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 358
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 359
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

    .line 365
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 366
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 369
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 371
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 372
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 373
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 375
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 376
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;->onValues(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 379
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 380
    nop

    .line 381
    return-void

    .line 379
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 380
    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 294
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initTspRawData(IILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;)V
    .registers 9
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 618
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 620
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 622
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 624
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 628
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 629
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 630
    .local v3, "_hidl_out_mmap_max_num":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-interface {p3, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_33

    .line 632
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_mmap_max_num":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 633
    nop

    .line 634
    return-void

    .line 632
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 633
    throw v2
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

    .line 887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 888
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 892
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 893
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 894
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 896
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 897
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 899
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 897
    return-object v2

    .line 899
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 900
    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 925
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 929
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 930
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 931
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 933
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 934
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 936
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 934
    return-object v2

    .line 936
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 937
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

    .line 997
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1038
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1039
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1041
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1043
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1044
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1046
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1047
    nop

    .line 1048
    return-void

    .line 1046
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1047
    throw v2
.end method

.method public openTaas()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 682
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 686
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 687
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 688
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 690
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    .line 691
    .local v2, "_hidl_out_retval":I
    nop

    .line 693
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 691
    return v2

    .line 693
    .end local v2    # "_hidl_out_retval":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 694
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1003
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1005
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1007
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1008
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 1011
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1012
    nop

    .line 1013
    return-void

    .line 1011
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1012
    throw v2
.end method

.method public pollTspIrq(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;)V
    .registers 8
    .param p1, "devid"    # I
    .param p2, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 640
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 645
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 646
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 647
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 649
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 650
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 651
    .local v3, "_hidl_out_count":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 653
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_count":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 654
    nop

    .line 655
    return-void

    .line 653
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 654
    throw v2
.end method

.method public readTaas(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;)V
    .registers 7
    .param p1, "_hidl_cb"    # Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;
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
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 724
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 725
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 726
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 728
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 729
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 732
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 733
    nop

    .line 734
    return-void

    .line 732
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 733
    throw v2
.end method

.method public registerCallback(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;)I
    .registers 7
    .param p1, "callback"    # Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 846
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 849
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 851
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 852
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 853
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 856
    .local v2, "_hidl_out_retval":I
    nop

    .line 858
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 856
    return v2

    .line 858
    .end local v2    # "_hidl_out_retval":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 859
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

    .line 470
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 471
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 474
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 476
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 477
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 478
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 480
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 481
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p2, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 484
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 485
    nop

    .line 486
    return-void

    .line 484
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 485
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

    .line 553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 554
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 557
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 563
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 564
    .local v2, "_hidl_out_retval":I
    nop

    .line 566
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 564
    return v2

    .line 566
    .end local v2    # "_hidl_out_retval":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 567
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

    .line 322
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 323
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 325
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 329
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 331
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 333
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 334
    .local v2, "_hidl_out_retval":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "_hidl_out_outbuf":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;->onValues(ILjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 337
    .end local v2    # "_hidl_out_retval":I
    .end local v3    # "_hidl_out_outbuf":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 338
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

    .line 532
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 533
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 535
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 537
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 539
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 540
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 543
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 544
    .local v2, "_hidl_out_retval":I
    nop

    .line 546
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 544
    return v2

    .line 546
    .end local v2    # "_hidl_out_retval":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 547
    throw v2
.end method

.method public sendRawdataTsp(ILjava/util/ArrayList;I)I
    .registers 9
    .param p1, "type"    # I
    .param p3, "inputSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    .local p2, "inputData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 824
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 826
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt16Vector(Ljava/util/ArrayList;)V

    .line 827
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 829
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 831
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 832
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 833
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 835
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2f

    .line 836
    .local v2, "_hidl_out_result":I
    nop

    .line 838
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 836
    return v2

    .line 838
    .end local v2    # "_hidl_out_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 839
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 983
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 985
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 987
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 988
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 990
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 991
    nop

    .line 992
    return-void

    .line 990
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 991
    throw v2
.end method

.method public setKeyboardEnable(IZ)I
    .registers 8
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 866
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 868
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 870
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 872
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 873
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 874
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 876
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 877
    .local v2, "_hidl_out_retval":I
    nop

    .line 879
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 877
    return v2

    .line 879
    .end local v2    # "_hidl_out_retval":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 880
    throw v2
.end method

.method public setProperty(IILjava/lang/String;)I
    .registers 9
    .param p1, "type"    # I
    .param p2, "property"    # I
    .param p3, "vaule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 781
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 786
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 788
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 789
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 790
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 792
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2f

    .line 793
    .local v2, "_hidl_out_result":I
    nop

    .line 795
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 793
    return v2

    .line 795
    .end local v2    # "_hidl_out_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 796
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

    .line 595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 596
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 598
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 600
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 602
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 603
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 604
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 606
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 607
    .local v2, "_hidl_out_retval":I
    nop

    .line 609
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 607
    return v2

    .line 609
    .end local v2    # "_hidl_out_retval":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 610
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

    .line 573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 574
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 576
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 577
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 579
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 581
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 582
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 585
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2f

    .line 586
    .local v2, "_hidl_out_retval":I
    nop

    .line 588
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 586
    return v2

    .line 588
    .end local v2    # "_hidl_out_retval":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 589
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 281
    :catch_18
    move-exception v0

    .line 284
    const-string v0, "[class or subclass of vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev]@Proxy"

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

    .line 1053
    iget-object v0, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .registers 7
    .param p1, "buf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 740
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 743
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 745
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 746
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 747
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 749
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 750
    .local v2, "_hidl_out_retval":I
    nop

    .line 752
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 750
    return v2

    .line 752
    .end local v2    # "_hidl_out_retval":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 753
    throw v2
.end method
