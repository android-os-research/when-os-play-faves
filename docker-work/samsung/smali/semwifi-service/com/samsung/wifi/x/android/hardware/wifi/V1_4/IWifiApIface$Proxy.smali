.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;
.super Ljava/lang/Object;
.source "IWifiApIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface;
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

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 456
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 458
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 460
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 462
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 463
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 466
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 467
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 258
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

    .line 567
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 568
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 572
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 573
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 574
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 576
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 577
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 580
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 581
    throw p0
.end method

.method public getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$getFactoryMacAddressCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.4::IWifiApIface"

    .line 407
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 411
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 412
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 415
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 416
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-array v0, v3, [B

    const-wide/16 v4, 0x6

    .line 419
    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 422
    invoke-virtual {v2, v4, v5, v0, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 426
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$getFactoryMacAddressCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;[B)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_38

    .line 428
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_38
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 429
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

    .line 492
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 493
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 497
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 498
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 499
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 501
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 503
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 505
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 507
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 506
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 515
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 518
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 524
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 525
    throw p0
.end method

.method public getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    .line 292
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 296
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 297
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 298
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 300
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 301
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 305
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 306
    throw p0
.end method

.method public getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    .line 271
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 275
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 276
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 279
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 280
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 281
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 282
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 284
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 285
    throw p0
.end method

.method public getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$getValidFrequenciesForBandCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiApIface"

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 352
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 354
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 355
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 358
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 359
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 360
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiApIface$getValidFrequenciesForBandCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_32

    .line 363
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 364
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 263
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 437
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 441
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 442
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 443
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 445
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 448
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 449
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 478
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 479
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 480
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 482
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 486
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 588
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 592
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 593
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 595
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 596
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 556
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 557
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 558
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 560
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 561
    throw p0
.end method

.method public setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.0::IWifiApIface"

    .line 314
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_40

    .line 321
    array-length v3, p1

    if-ne v3, v2, :cond_40

    const-wide/16 v2, 0x0

    .line 325
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 331
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 333
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 334
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 335
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 337
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 338
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_3b

    .line 341
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 342
    throw p0

    .line 322
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 532
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 536
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 537
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 539
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 540
    throw p0
.end method

.method public setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi@1.4::IWifiApIface"

    .line 372
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_40

    .line 379
    array-length v3, p1

    if-ne v3, v2, :cond_40

    const-wide/16 v2, 0x0

    .line 383
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 389
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 391
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 392
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 393
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 395
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;-><init>()V

    .line 396
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_3b

    .line 399
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 400
    throw p0

    .line 380
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 249
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi@1.4::IWifiApIface]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiApIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
