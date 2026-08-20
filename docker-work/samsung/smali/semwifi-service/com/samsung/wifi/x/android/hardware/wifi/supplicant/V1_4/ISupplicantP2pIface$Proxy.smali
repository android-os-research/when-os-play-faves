.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;
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

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1166
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1168
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1170
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1172
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x23

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1173
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1176
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1177
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1180
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1181
    throw p0
.end method

.method public addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 864
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 866
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 868
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 870
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x19

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 871
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 872
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 874
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 875
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 878
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 879
    throw p0
.end method

.method public addGroup_1_2(Ljava/util/ArrayList;Ljava/lang/String;ZI[BZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "ZI[BZ)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1628
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 1629
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1631
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1633
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1635
    new-instance p1, Landroid/os/HwBlob;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p5, :cond_50

    .line 1640
    array-length p3, p5

    if-ne p3, p2, :cond_50

    const-wide/16 p2, 0x0

    .line 1644
    invoke-virtual {p1, p2, p3, p5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1647
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1649
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1651
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1653
    :try_start_31
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x36

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1654
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1655
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1657
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1658
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_4b

    .line 1661
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_4b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1662
    throw p0

    .line 1641
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 344
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 348
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 349
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 352
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 353
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 354
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v0

    .line 355
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 357
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 358
    throw p0
.end method

.method public addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1209
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1211
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1213
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1215
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x25

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1216
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1219
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1220
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1223
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1224
    throw p0
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 808
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 812
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 813
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 814
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 816
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 817
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 821
    throw p0
.end method

.method public cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1310
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1313
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1315
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x29

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1316
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1319
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1320
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1323
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1324
    throw p0
.end method

.method public cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1447
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1450
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1452
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1453
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1456
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1457
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1460
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1461
    throw p0
.end method

.method public configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1029
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1031
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1033
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1035
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1e

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1036
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1039
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1040
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1043
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1044
    throw p0
.end method

.method public connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 767
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_57

    .line 774
    array-length v3, p1

    if-ne v3, v2, :cond_57

    const-wide/16 v2, 0x0

    .line 778
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 781
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 786
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 787
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 789
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 791
    :try_start_31
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x16

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 792
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 795
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 796
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 797
    invoke-virtual {p1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 798
    invoke-interface {p7, p0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_52

    .line 800
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_52
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 801
    throw p0

    .line 775
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1524
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1528
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1529
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1532
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1533
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1534
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1535
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1537
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1538
    throw p0
.end method

.method public createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1545
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1547
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1549
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1550
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1553
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1554
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1555
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1556
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1558
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1559
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

    .line 1808
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1809
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1811
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1813
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1815
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1816
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1817
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 1819
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1820
    throw p0
.end method

.method public enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1468
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1471
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1473
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1474
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1477
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1478
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1481
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1482
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 289
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 706
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 709
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 711
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 712
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 713
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 715
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 716
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 719
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 720
    throw p0
.end method

.method public flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 747
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 751
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 752
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 753
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 755
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 756
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 759
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 760
    throw p0
.end method

.method public flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1252
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1253
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1257
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1258
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1261
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1262
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1265
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1266
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1921
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1925
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1926
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1929
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1930
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 1933
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1934
    throw p0
.end method

.method public getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 612
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 616
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 617
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 618
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 620
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 621
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    const/4 v0, 0x6

    new-array v2, v0, [B

    const-wide/16 v3, 0x6

    .line 624
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 627
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 631
    invoke-interface {p1, p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3a

    .line 633
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 634
    throw p0
.end method

.method public getEdmg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$getEdmgCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 1712
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1716
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1717
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1718
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1720
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 1721
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1722
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1723
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$getEdmgCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;Z)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1725
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1726
    throw p0
.end method

.method public getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1130
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_48

    .line 1137
    array-length v3, p1

    if-ne v3, v2, :cond_48

    const-wide/16 v2, 0x0

    .line 1141
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1144
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1147
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1149
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1150
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1153
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1154
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1155
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1156
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_43

    .line 1158
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_43
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1159
    throw p0

    .line 1138
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 1845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1846
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1850
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1851
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1854
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 1856
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 1858
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 1860
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 1859
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1863
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 1868
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1871
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1877
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1878
    throw p0
.end method

.method public getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 306
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 307
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 308
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 310
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 311
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 312
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 315
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 316
    throw p0
.end method

.method public getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 386
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 389
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 391
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 392
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 393
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 395
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 396
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 397
    invoke-virtual {p1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v0

    .line 398
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_36

    .line 400
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 401
    throw p0
.end method

.method public getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1094
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_48

    .line 1101
    array-length v3, p1

    if-ne v3, v2, :cond_48

    const-wide/16 v2, 0x0

    .line 1105
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1108
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1111
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1113
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1114
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1117
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1118
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1119
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1120
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_43

    .line 1122
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_43
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1123
    throw p0

    .line 1102
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 323
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 327
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 328
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 329
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 331
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 332
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 333
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 334
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 336
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 337
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 294
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 1789
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1790
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1792
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1794
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1795
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1798
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1801
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1802
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1827
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1829
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1831
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1832
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1835
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 1838
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1839
    throw p0
.end method

.method public invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 942
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 945
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-string v2, "Array element is not of the expected length"

    if-eqz p2, :cond_5c

    .line 950
    array-length v3, p2

    if-ne v3, v1, :cond_5c

    const-wide/16 v3, 0x0

    .line 954
    invoke-virtual {p1, v3, v4, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 960
    new-instance p1, Landroid/os/HwBlob;

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p3, :cond_56

    .line 965
    array-length p2, p3

    if-ne p2, v1, :cond_56

    .line 969
    invoke-virtual {p1, v3, v4, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 972
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 975
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 977
    :try_start_37
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1c

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 978
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 979
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 981
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 982
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_51

    .line 985
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_51
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 986
    throw p0

    .line 966
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 951
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1899
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 412
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 413
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 414
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 416
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 417
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 418
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 419
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 421
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 422
    throw p0
.end method

.method public notifySyspropsChanged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1940
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1941
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1943
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1945
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1946
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1948
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1949
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1904
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1905
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1907
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1909
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1910
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 1913
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1914
    throw p0
.end method

.method public provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 828
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 830
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_44

    .line 835
    array-length v3, p1

    if-ne v3, v2, :cond_44

    const-wide/16 v2, 0x0

    .line 839
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 842
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 844
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 846
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 848
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x18

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 849
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 852
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 853
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3f

    .line 856
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 857
    throw p0

    .line 836
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 591
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 592
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 594
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 596
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 597
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 598
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 600
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 601
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 604
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 605
    throw p0
.end method

.method public registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1732
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 1733
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 1734
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1736
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1738
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1739
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1742
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 1743
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 1746
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1747
    throw p0
.end method

.method public reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 993
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 996
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_44

    .line 1001
    array-length v2, p2

    if-ne v2, v1, :cond_44

    const-wide/16 v1, 0x0

    .line 1005
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1008
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1011
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1013
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1d

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1014
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1017
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1018
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3f

    .line 1021
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1022
    throw p0

    .line 1002
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 907
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 909
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_41

    .line 914
    array-length v3, p1

    if-ne v3, v2, :cond_41

    const-wide/16 v2, 0x0

    .line 918
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 921
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 924
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 926
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 927
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 928
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 930
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 931
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_3c

    .line 934
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 935
    throw p0

    .line 915
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1188
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1191
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1193
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1194
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1197
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1198
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1201
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1202
    throw p0
.end method

.method public removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 886
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 889
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 891
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 892
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 893
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 895
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 896
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 899
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 900
    throw p0
.end method

.method public removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 365
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 368
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 370
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 371
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 372
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 374
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 375
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 378
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 379
    throw p0
.end method

.method public removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1231
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1233
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1235
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1237
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x26

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1238
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1241
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1242
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1245
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1246
    throw p0
.end method

.method public reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1587
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1590
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1592
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1593
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1596
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1597
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1600
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1601
    throw p0
.end method

.method public reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1566
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1569
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1571
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1572
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1573
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1575
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1576
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1579
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1580
    throw p0
.end method

.method public requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1273
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_4b

    .line 1280
    array-length v3, p1

    if-ne v3, v2, :cond_4b

    const-wide/16 v2, 0x0

    .line 1284
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1287
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1289
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1291
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1293
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x28

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1294
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1297
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1298
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1299
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1300
    invoke-interface {p3, p0, v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_46

    .line 1302
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_46
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1303
    throw p0

    .line 1281
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1608
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1612
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1613
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1614
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1616
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1617
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 1620
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1621
    throw p0
.end method

.method public setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1073
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    invoke-static {v0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1076
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1078
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1079
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1082
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1083
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1086
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1087
    throw p0
.end method

.method public setEdmg(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 1691
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1694
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1696
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1697
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1698
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1700
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 1701
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1704
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1705
    throw p0
.end method

.method public setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 662
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 666
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 668
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x11

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 669
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 670
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 672
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 673
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 676
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 677
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 1885
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1887
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1889
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 1892
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1893
    throw p0
.end method

.method public setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1051
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1053
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1055
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1057
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x1f

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1058
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1061
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1062
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1065
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1066
    throw p0
.end method

.method public setMacRandomization(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1668
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 1669
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1672
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1674
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x37

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1675
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1676
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1678
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1679
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1682
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1683
    throw p0
.end method

.method public setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1331
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 1334
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1336
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1337
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1340
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1341
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1344
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1345
    throw p0
.end method

.method public setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 688
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 690
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x12

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 691
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 692
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 694
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 695
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 698
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 699
    throw p0
.end method

.method public setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 641
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 644
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 646
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 647
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 648
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 650
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 651
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 654
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 655
    throw p0
.end method

.method public setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1489
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1491
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_41

    .line 1496
    array-length v3, p1

    if-ne v3, v2, :cond_41

    const-wide/16 v2, 0x0

    .line 1500
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1503
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1506
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1508
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1509
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1512
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1513
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_3c

    .line 1516
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1517
    throw p0

    .line 1497
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWfdR2DeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 1754
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_41

    .line 1761
    array-length v3, p1

    if-ne v3, v2, :cond_41

    const-wide/16 v2, 0x0

    .line 1765
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1768
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1771
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1773
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1774
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1775
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1777
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 1778
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_3c

    .line 1781
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1782
    throw p0

    .line 1762
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 569
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 572
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 574
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 575
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 576
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 578
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 579
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 582
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 583
    throw p0
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 429
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 432
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 434
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 435
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 436
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 438
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 439
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 442
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 443
    throw p0
.end method

.method public setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 450
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_40

    .line 457
    array-length v3, p1

    if-ne v3, v2, :cond_40

    const-wide/16 v3, 0x0

    .line 461
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 467
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 469
    :try_start_23
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 470
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 473
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_3b

    .line 477
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 478
    throw p0

    .line 458
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 485
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 488
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 490
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 491
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 492
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 494
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 495
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 498
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 499
    throw p0
.end method

.method public setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 506
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 509
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 511
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 512
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 513
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 515
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 516
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 519
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 520
    throw p0
.end method

.method public setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 527
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 530
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 532
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 533
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 536
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 537
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 540
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 541
    throw p0
.end method

.method public setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 551
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 553
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 554
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 555
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 557
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 558
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 561
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 562
    throw p0
.end method

.method public startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1352
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1355
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_44

    .line 1360
    array-length v2, p2

    if-ne v2, v1, :cond_44

    const-wide/16 v1, 0x0

    .line 1364
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1367
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1370
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1372
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x2b

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1373
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1376
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1377
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3f

    .line 1380
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1381
    throw p0

    .line 1361
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1410
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1413
    new-instance p1, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_4b

    .line 1418
    array-length v2, p2

    if-ne v2, v1, :cond_4b

    const-wide/16 v1, 0x0

    .line 1422
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1425
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1428
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1430
    :try_start_25
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x2d

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1431
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1434
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1435
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1436
    invoke-virtual {p1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1437
    invoke-interface {p3, p0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_46

    .line 1439
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_46
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1440
    throw p0

    .line 1419
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 1388
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1392
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1394
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x2c

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1395
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1396
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1398
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1399
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1402
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1403
    throw p0
.end method

.method public stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 727
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 729
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 731
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 732
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 733
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 735
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 736
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 739
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 740
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1955
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
