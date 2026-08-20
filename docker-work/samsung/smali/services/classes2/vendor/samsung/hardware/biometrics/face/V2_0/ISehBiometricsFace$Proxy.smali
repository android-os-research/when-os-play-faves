.class public final Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;
.super Ljava/lang/Object;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
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

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 461
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public authenticate(J)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 716
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 719
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 721
    :try_start_12
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xc

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 722
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 723
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 725
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_28

    .line 728
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 729
    throw p0
.end method

.method public cancel()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 658
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 662
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 663
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 664
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 666
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 669
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 670
    throw p0
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

    .line 1193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1194
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1196
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1198
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1200
    :try_start_15
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1201
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1204
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1205
    throw p0
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 554
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 555
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 557
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    :try_start_18
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 563
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2d

    .line 566
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_2d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 567
    throw p0
.end method

.method public enumerate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 677
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 681
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 682
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 683
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 685
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 688
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 689
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 476
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 531
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 534
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 536
    :try_start_12
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 537
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 538
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 540
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 541
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 544
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 545
    throw p0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 638
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 642
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 643
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 646
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 647
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 650
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 651
    throw p0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1306
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1310
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1311
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1314
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1315
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1318
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1319
    throw p0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 616
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 618
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 620
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 622
    :try_start_15
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x7

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 623
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 624
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 626
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    .line 627
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2e

    .line 630
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2e
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 631
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

    .line 1230
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1231
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1235
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1236
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1237
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1239
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1241
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1243
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1245
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1244
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1253
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1256
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1262
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1263
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 481
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 1174
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1175
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1179
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1180
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1181
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1183
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1186
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1187
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1211
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1212
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1216
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1217
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1220
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1223
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1224
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1325
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1326
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1328
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1330
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1331
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1333
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1334
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1290
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1294
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1295
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1298
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1299
    throw p0
.end method

.method public remove(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 696
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 699
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 701
    :try_start_12
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 702
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 703
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 705
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_28

    .line 708
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 709
    throw p0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 755
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 758
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 760
    :try_start_12
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 761
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 762
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 764
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_28

    .line 767
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 768
    throw p0
.end method

.method public revokeChallenge()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 574
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 578
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 579
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 580
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 582
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    .line 585
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_24
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 586
    throw p0
.end method

.method public sehAuthenticate(JILjava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 797
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 799
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 800
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 802
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 804
    :try_start_19
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x10

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 805
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 806
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 808
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_2f

    .line 811
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 812
    throw p0
.end method

.method public sehCloseTaSession()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 838
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 842
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 843
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 844
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 846
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 850
    throw p0
.end method

.method public sehConfigurePreview(ILjava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1031
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1033
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1035
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1037
    :try_start_16
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1c

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1038
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1041
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 1044
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1045
    throw p0
.end method

.method public sehFinishTaInstallation(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1011
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1014
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1016
    :try_start_13
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1017
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1020
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 1023
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1024
    throw p0
.end method

.method public sehGetEngineVersion()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 933
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 937
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 938
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 939
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 941
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 944
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 945
    throw p0
.end method

.method public sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1131
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1134
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1136
    :try_start_13
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1137
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1140
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1141
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;

    invoke-direct {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;-><init>()V

    .line 1142
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1143
    invoke-interface {p2, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;->onValues(ILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_34

    .line 1145
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1146
    throw p0
.end method

.method public sehGetFaceTagList(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1111
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1113
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1115
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1116
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1119
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1120
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1121
    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    .line 1123
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1124
    throw p0
.end method

.method public sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1071
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1075
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1076
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    .line 1080
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1081
    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;->onValues(II)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    .line 1083
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1084
    throw p0
.end method

.method public sehGetServicePid()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1052
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1056
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1057
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1060
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 1063
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1064
    throw p0
.end method

.method public sehGetTaInfo()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 914
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 918
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 919
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 920
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 922
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 925
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 926
    throw p0
.end method

.method public sehInstallTaDataChunk(Landroid/os/HidlMemory;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 991
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeHidlMemory(Landroid/os/HidlMemory;)V

    .line 994
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 996
    :try_start_13
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 997
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 998
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1000
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 1003
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1004
    throw p0
.end method

.method public sehIsTaSessionClosed()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 857
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 861
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 862
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 863
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 865
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 868
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 869
    throw p0
.end method

.method public sehOpenTaSession()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 819
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 823
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 824
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 825
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 827
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 830
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 831
    throw p0
.end method

.method public sehPauseEnrollment()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 876
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 880
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 881
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 882
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 884
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 887
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 888
    throw p0
.end method

.method public sehPrepareTaInstallation()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 971
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 972
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 974
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 976
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 977
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 978
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 980
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 983
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 984
    throw p0
.end method

.method public sehResumeEnrollment()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 895
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 897
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 899
    :try_start_10
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 900
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 901
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 903
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 906
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 907
    throw p0
.end method

.method public sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 776
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    .line 777
    :cond_f
    invoke-interface {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 779
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 781
    :try_start_1b
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 782
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 783
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 785
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 786
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_35

    .line 789
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 790
    throw p0
.end method

.method public sehSetFaceTag(ILjava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1153
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1155
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1157
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1159
    :try_start_16
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x22

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1160
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1161
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1163
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 1166
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1167
    throw p0
.end method

.method public sehSetRotation(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 952
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 955
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 957
    :try_start_13
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 958
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 959
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 961
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 964
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 965
    throw p0
.end method

.method public sehSetSecurityLevel(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 1091
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1094
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1096
    :try_start_13
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1097
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1098
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1100
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 1103
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1104
    throw p0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 510
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 512
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 514
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 516
    :try_start_15
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 517
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 518
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 520
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2a

    .line 523
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_2a
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 524
    throw p0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 489
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 490
    :cond_e
    invoke-interface {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 492
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 494
    :try_start_1a
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 495
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 496
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 498
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 499
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_33

    .line 502
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 503
    throw p0
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 595
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 596
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 597
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 599
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 601
    :try_start_1b
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 602
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 605
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_30

    .line 608
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_30
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 609
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1270
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1272
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1274
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1275
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1277
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1278
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 467
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method

.method public userActivity()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 736
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 740
    :try_start_f
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 741
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 742
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 744
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 747
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 748
    throw p0
.end method
