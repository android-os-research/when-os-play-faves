.class public final Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 226
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 513
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 514
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 516
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 518
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 520
    :try_start_15
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 521
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 522
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 524
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 525
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 241
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 626
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 628
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 630
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 631
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 632
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 634
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 635
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 638
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 639
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

    .line 550
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 551
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 555
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 556
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 557
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 559
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 561
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 563
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 565
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 564
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 573
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 576
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 582
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 583
    throw p0
.end method

.method public getModelState(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 477
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 479
    :try_start_12
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 480
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 481
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 483
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_28

    .line 486
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 487
    throw p0
.end method

.method public getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 258
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 259
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 260
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 262
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 263
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;-><init>()V

    .line 264
    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readFromParcel(Landroid/os/HwParcel;)V

    .line 265
    invoke-interface {p1, p0, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;->onValues(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 267
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 268
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 246
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 494
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 495
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 499
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 500
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 501
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 503
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 506
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 507
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
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
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 537
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 538
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 540
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 543
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 544
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    .line 300
    :cond_11
    invoke-interface {p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 301
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 303
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 305
    :try_start_20
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 306
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 309
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 310
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 311
    invoke-interface {p4, p0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;->onValues(II)V
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3c

    .line 313
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 314
    throw p0
.end method

.method public loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 427
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    .line 429
    :cond_11
    invoke-interface {p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 430
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 432
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 434
    :try_start_20
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 435
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 436
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 438
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 439
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 440
    invoke-interface {p4, p0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;->onValues(II)V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_3d

    .line 442
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 443
    throw p0
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    .line 277
    :cond_11
    invoke-interface {p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 278
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 280
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 282
    :try_start_20
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 283
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 284
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 286
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 287
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 288
    invoke-interface {p4, p0, p2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;->onValues(II)V
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_3c

    .line 290
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 291
    throw p0
.end method

.method public loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 404
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    .line 406
    :cond_11
    invoke-interface {p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 407
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 409
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 411
    :try_start_20
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x8

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 412
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 415
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 416
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 417
    invoke-interface {p4, p0, p2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;->onValues(II)V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_3d

    .line 419
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 420
    throw p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 646
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 650
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 651
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 654
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 610
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 614
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 615
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 616
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 618
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 619
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 590
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 594
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 598
    throw p0
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 341
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 343
    invoke-virtual {p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p3, :cond_14

    const/4 p1, 0x0

    goto :goto_18

    .line 344
    :cond_14
    invoke-interface {p3}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_18
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 345
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 347
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 349
    :try_start_23
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 350
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 351
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 353
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_38

    .line 356
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_38
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 357
    throw p0
.end method

.method public startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 450
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 452
    invoke-virtual {p2, v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->writeToParcel(Landroid/os/HwParcel;)V

    if-nez p3, :cond_14

    const/4 p1, 0x0

    goto :goto_18

    .line 453
    :cond_14
    invoke-interface {p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_18
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 454
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 456
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 458
    :try_start_23
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xa

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 459
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 460
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 462
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 465
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_39
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 466
    throw p0
.end method

.method public stopAllRecognitions()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 384
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 388
    :try_start_f
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 389
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 390
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 392
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    .line 395
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_24
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 396
    throw p0
.end method

.method public stopRecognition(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 364
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 367
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 369
    :try_start_12
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 370
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 371
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 373
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_27

    .line 376
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_27
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 377
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.soundtrigger@2.2::ISoundTriggerHw]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method

.method public unloadSoundModel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 324
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 326
    :try_start_12
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 327
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 330
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_27

    .line 333
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_27
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 334
    throw p0
.end method
