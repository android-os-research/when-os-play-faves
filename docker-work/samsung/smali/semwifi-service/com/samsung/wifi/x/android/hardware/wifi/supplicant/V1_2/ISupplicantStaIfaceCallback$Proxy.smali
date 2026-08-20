.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;
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

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 5
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

    .line 808
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 809
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 811
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 813
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 815
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 816
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 817
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 819
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 820
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 250
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 921
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 925
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 926
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 929
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 930
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 933
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 934
    throw p0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 13
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

    .line 845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 846
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 851
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 852
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 854
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 856
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 858
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 860
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 859
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 863
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 868
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 871
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 877
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 878
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 255
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 5
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

    .line 789
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 790
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 794
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 795
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 796
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 798
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 801
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 802
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 827
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 831
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 832
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 833
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 835
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 838
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 839
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 941
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 945
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 946
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 948
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 949
    throw p0
.end method

.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 328
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3b

    .line 335
    array-length v3, p1

    if-ne v3, v2, :cond_3b

    const-wide/16 v2, 0x0

    .line 339
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 344
    invoke-virtual {p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 345
    invoke-virtual {p3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 347
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 349
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 352
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 353
    throw p0

    .line 336
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAssociationRejected([BIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 489
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 496
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 500
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 506
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 508
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 510
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 511
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 513
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 514
    throw p0

    .line 497
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 521
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_36

    .line 528
    array-length v3, p1

    if-ne v3, v2, :cond_36

    const-wide/16 v2, 0x0

    .line 532
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 538
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 540
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 543
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_31
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 544
    throw p0

    .line 529
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBssidChanged(B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 566
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 569
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_39

    .line 574
    array-length v2, p2

    if-ne v2, v1, :cond_39

    const-wide/16 v1, 0x0

    .line 578
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 584
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 586
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xc

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 589
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 590
    throw p0

    .line 575
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDisconnected([BZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 457
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 464
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 468
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 473
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 474
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 476
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 478
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x8

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 479
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 481
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 482
    throw p0

    .line 465
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDppFailure(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 773
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 776
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 778
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 779
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 781
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 782
    throw p0
.end method

.method public onDppProgress(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 757
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 760
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 762
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 763
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 765
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 766
    throw p0
.end method

.method public onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 709
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 713
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p3, :cond_40

    .line 718
    array-length v1, p3

    if-ne v1, p2, :cond_40

    const-wide/16 v1, 0x0

    .line 722
    invoke-virtual {p1, v1, v2, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 727
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 729
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 731
    :try_start_2c
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x13

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 732
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    .line 734
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 735
    throw p0

    .line 719
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDppSuccessConfigSent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 742
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 746
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 747
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 749
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 750
    throw p0
.end method

.method public onEapFailure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 551
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 555
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 556
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 558
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 559
    throw p0
.end method

.method public onEapFailure_1_1(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 692
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 695
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 697
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 698
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 700
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 701
    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 659
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 662
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 664
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 667
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 668
    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 675
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 678
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 680
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 681
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    .line 683
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 684
    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3e

    .line 431
    array-length v3, p1

    if-ne v3, v2, :cond_3e

    const-wide/16 v2, 0x0

    .line 435
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 441
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 442
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 444
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 446
    :try_start_2b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 447
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    .line 449
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 450
    throw p0

    .line 432
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 362
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3b

    .line 367
    array-length v3, p1

    if-ne v3, v2, :cond_3b

    const-wide/16 v2, 0x0

    .line 371
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 376
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 379
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 381
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 382
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    .line 384
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 385
    throw p0

    .line 368
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 392
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3a

    .line 399
    array-length v3, p1

    if-ne v3, v2, :cond_3a

    const-wide/16 v3, 0x0

    .line 403
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 408
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 409
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 411
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 413
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x1

    invoke-interface {p0, v2, v0, p1, p2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 414
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 416
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 417
    throw p0

    .line 400
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 263
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 266
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 268
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 269
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 271
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 272
    throw p0
.end method

.method public onNetworkRemoved(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 284
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 287
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_20
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 288
    throw p0
.end method

.method public onStateChanged(I[BILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 298
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_3e

    .line 303
    array-length v2, p2

    if-ne v2, v1, :cond_3e

    const-wide/16 v1, 0x0

    .line 307
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 312
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 313
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 315
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 317
    :try_start_2b
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 318
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    .line 320
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 321
    throw p0

    .line 304
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWpsEventFail([BSS)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 612
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3c

    .line 619
    array-length v3, p1

    if-ne v3, v2, :cond_3c

    const-wide/16 v2, 0x0

    .line 623
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 626
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 628
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 629
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 631
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 633
    :try_start_28
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xe

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 634
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 636
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 637
    throw p0

    .line 620
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 644
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 646
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 648
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    throw p0
.end method

.method public onWpsEventSuccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 597
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 601
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 602
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 605
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 905
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 909
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 910
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 913
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 914
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 885
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 889
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 892
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 893
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    const-string p0, "[class or subclass of android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
