.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;
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

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 3247
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3248
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3249
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 3250
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3252
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3254
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3255
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 3258
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3259
    throw p0
.end method

.method public disable()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2185
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2189
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2190
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2193
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2194
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 2197
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2198
    throw p0
.end method

.method public enable(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2164
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2167
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2169
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2170
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2173
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2174
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2177
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2178
    throw p0
.end method

.method public enableSaePkOnlyMode(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3206
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3207
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3210
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3212
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x71

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3213
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3216
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3217
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3220
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3221
    throw p0
.end method

.method public enableSuiteBEapOpenSslCiphers()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2597
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2599
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2601
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2602
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2605
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2606
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 2609
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2610
    throw p0
.end method

.method public enableTlsSuiteBEapPhase1Param(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2576
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2579
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2581
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x53

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2582
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2585
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2586
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2589
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2590
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 781
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAuthAlg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1651
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1653
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1655
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1656
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1657
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1659
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1660
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1661
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1662
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1664
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1665
    throw p0
.end method

.method public getAuthAlg_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getAuthAlg_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2995
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2996
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2998
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3000
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3001
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3002
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3004
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3005
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3006
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3007
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getAuthAlg_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 3009
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3010
    throw p0
.end method

.method public getBssid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1559
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1561
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1563
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1564
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1567
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1568
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    const/4 v0, 0x6

    new-array v2, v0, [B

    const-wide/16 v3, 0x6

    .line 1571
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1574
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1578
    invoke-interface {p1, p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3a

    .line 1580
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1581
    throw p0
.end method

.method public getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3360
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3362
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3364
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3365
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3366
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3368
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3369
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    .line 3372
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3373
    throw p0
.end method

.method public getEapAltSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2038
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2040
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2042
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2043
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2044
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2046
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2047
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2048
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2051
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2052
    throw p0
.end method

.method public getEapAnonymousIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1890
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1891
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1895
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1896
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1897
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1899
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1900
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1901
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1902
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1904
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1905
    throw p0
.end method

.method public getEapCACert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1932
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1933
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1937
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1938
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1941
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1942
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1943
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1946
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1947
    throw p0
.end method

.method public getEapCAPath(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1954
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1956
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1958
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1959
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1962
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1963
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1964
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1967
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1968
    throw p0
.end method

.method public getEapClientCert(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1975
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1977
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1979
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1980
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1983
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1984
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1985
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1986
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1988
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1989
    throw p0
.end method

.method public getEapDomainSuffixMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2101
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2103
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2105
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2106
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2107
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2109
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2110
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2111
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2112
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2114
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2115
    throw p0
.end method

.method public getEapEngine(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2058
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2059
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2063
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2064
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2067
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2068
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2069
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 2070
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2072
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2073
    throw p0
.end method

.method public getEapEngineID(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2079
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2080
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2082
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2084
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2085
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2086
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2088
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2089
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2090
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2091
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2093
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2094
    throw p0
.end method

.method public getEapIdentity(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1870
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1872
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1874
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1875
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1878
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1879
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1880
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1881
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1883
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1884
    throw p0
.end method

.method public getEapMethod(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1827
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1828
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1830
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1832
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1833
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1834
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1836
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1837
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1839
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1841
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1842
    throw p0
.end method

.method public getEapPassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1912
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1914
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1916
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1917
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1918
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1920
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1921
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1922
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1923
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1925
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1926
    throw p0
.end method

.method public getEapPhase2Method(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1849
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1851
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1853
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1854
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1857
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1858
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1859
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1860
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1862
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1863
    throw p0
.end method

.method public getEapPrivateKeyId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1996
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2000
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2001
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2002
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2004
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2005
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2006
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2009
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2010
    throw p0
.end method

.method public getEapSubjectMatch(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2017
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2019
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2021
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2022
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2025
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2026
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2027
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2028
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2030
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2031
    throw p0
.end method

.method public getEdmg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getEdmgCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3143
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3144
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3146
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3148
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3149
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3150
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3152
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3153
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3154
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 3155
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getEdmgCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;Z)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 3157
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3158
    throw p0
.end method

.method public getGroupCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1672
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1676
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1677
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1680
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1681
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1682
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1683
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1685
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1686
    throw p0
.end method

.method public getGroupCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupCipher_1_2Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2512
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2513
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2515
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2517
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2518
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2519
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2521
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2522
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2523
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2524
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupCipher_1_2Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2526
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2527
    throw p0
.end method

.method public getGroupCipher_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getGroupCipher_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2890
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2891
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2893
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2895
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2896
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2897
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2899
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2900
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2901
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2902
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getGroupCipher_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2904
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2905
    throw p0
.end method

.method public getGroupCipher_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getGroupCipher_1_4Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3060
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3064
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3065
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3066
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3068
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3069
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3070
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3071
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getGroupCipher_1_4Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 3073
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3074
    throw p0
.end method

.method public getGroupMgmtCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupMgmtCipherCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2554
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2555
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2557
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2559
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x52

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2560
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2563
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2564
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2565
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2566
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getGroupMgmtCipherCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2569
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

    .line 3284
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3285
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3287
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3289
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v2, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3290
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3291
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3293
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    .line 3295
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    .line 3297
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v2, v11, 0x20

    int-to-long v3, v2

    .line 3299
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    .line 3298
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 3302
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_41
    if-ge v10, v11, :cond_53

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v10, 0x20

    int-to-long v4, v4

    .line 3307
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3310
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_57

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 3316
    :cond_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3317
    throw p0
.end method

.method public getId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    .line 794
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 798
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 799
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 800
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 802
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 803
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 804
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 805
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 807
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 808
    throw p0
.end method

.method public getIdStr(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2122
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2124
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2126
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2127
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2130
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2131
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2132
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2133
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2135
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2136
    throw p0
.end method

.method public getInterfaceName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    .line 815
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 817
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 819
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 820
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 821
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 823
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 824
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 825
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 828
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 829
    throw p0
.end method

.method public getKeyMgmt(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1609
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1613
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1614
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1615
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1617
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1618
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1619
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1620
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1622
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1623
    throw p0
.end method

.method public getKeyMgmt_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getKeyMgmt_1_2Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2429
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2431
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2433
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2434
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2435
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2437
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2438
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2439
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2440
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getKeyMgmt_1_2Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2442
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2443
    throw p0
.end method

.method public getKeyMgmt_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getKeyMgmt_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2764
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2765
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2769
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2770
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2771
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2773
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2774
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2775
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2776
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getKeyMgmt_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2778
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2779
    throw p0
.end method

.method public getOcsp(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getOcspCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2722
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2723
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2725
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2727
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2728
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2729
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2731
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2732
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2733
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2734
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getOcspCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2736
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2737
    throw p0
.end method

.method public getPairwiseCipher(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1693
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1697
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1698
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1701
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1702
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1703
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1704
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1706
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1707
    throw p0
.end method

.method public getPairwiseCipher_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getPairwiseCipher_1_2Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2470
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2471
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2473
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2475
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2476
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2477
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2479
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2480
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2481
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2482
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getPairwiseCipher_1_2Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2484
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2485
    throw p0
.end method

.method public getPairwiseCipher_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getPairwiseCipher_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2848
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2849
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2851
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2853
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x60

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2854
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2857
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2858
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2859
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2860
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getPairwiseCipher_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2862
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2863
    throw p0
.end method

.method public getPairwiseCipher_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getPairwiseCipher_1_4Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3101
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3102
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3104
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3106
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3107
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3110
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3111
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3112
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3113
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$getPairwiseCipher_1_4Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 3115
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3116
    throw p0
.end method

.method public getProto(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1630
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1632
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1634
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1635
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1638
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1639
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1640
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1641
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1643
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1644
    throw p0
.end method

.method public getProto_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getProto_1_3Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2807
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2809
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2811
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2812
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2815
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2816
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2817
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2818
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getProto_1_3Callback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2821
    throw p0
.end method

.method public getPsk(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1735
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1737
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1739
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1740
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1741
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1743
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1744
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    const/16 v0, 0x20

    new-array v2, v0, [B

    const-wide/16 v3, 0x20

    .line 1747
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1750
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1754
    invoke-interface {p1, p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_3b

    .line 1756
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1757
    throw p0
.end method

.method public getPskPassphrase(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1713
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1714
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1718
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1719
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1722
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1723
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1724
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1727
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1728
    throw p0
.end method

.method public getRequirePmf(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1807
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1811
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1812
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1815
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1816
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1817
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1818
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1821
    throw p0
.end method

.method public getSaePassword(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2616
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2617
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2621
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x55

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2622
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2625
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2626
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2627
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2630
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2631
    throw p0
.end method

.method public getSaePasswordId(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordIdCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2638
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2642
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x56

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2643
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2646
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2647
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2648
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2649
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$getSaePasswordIdCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2652
    throw p0
.end method

.method public getScanSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1588
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1590
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1592
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1593
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1596
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1597
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1598
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1599
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1601
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1602
    throw p0
.end method

.method public getSsid(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1538
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1540
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1542
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1543
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1546
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1547
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1548
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1549
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1551
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1552
    throw p0
.end method

.method public getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    .line 836
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 838
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 840
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 841
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 842
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 844
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 845
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 846
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 847
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2f

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 850
    throw p0
.end method

.method public getWapiCertSuite(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getWapiCertSuiteCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2933
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2937
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2938
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2941
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2942
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2943
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2944
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getWapiCertSuiteCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2946
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2947
    throw p0
.end method

.method public getWepKey(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1764
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1767
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1769
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1770
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1773
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1774
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1775
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1776
    invoke-interface {p2, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_33

    .line 1778
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1779
    throw p0
.end method

.method public getWepTxKeyIdx(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1786
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1790
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1791
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1792
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1794
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1795
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1796
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1797
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 1799
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1800
    throw p0
.end method

.method public getWpsNfcConfigurationToken(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2143
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2147
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2148
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2149
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2151
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2152
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2153
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 2154
    invoke-interface {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;->onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    .line 2156
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2157
    throw p0
.end method

.method public final hashCode()I
    .registers 1

    .line 786
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 3228
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3229
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3231
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3233
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3234
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3237
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 3240
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3241
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3266
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3270
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3271
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3272
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3274
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_26

    .line 3277
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3278
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3338
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 3379
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3380
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3382
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3384
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3385
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 3387
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3388
    throw p0
.end method

.method public ping()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3343
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3344
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3346
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3348
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3349
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 3352
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_22
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3353
    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 858
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 859
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 861
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 863
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 864
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 865
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 867
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 868
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_33

    .line 871
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_33
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 872
    throw p0
.end method

.method public registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetworkCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3164
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3165
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 3166
    :cond_e
    invoke-interface {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetworkCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3168
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3170
    :try_start_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3171
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3174
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3175
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_34

    .line 3178
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3179
    throw p0
.end method

.method public select()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2204
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2205
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2207
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2209
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2210
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2213
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2214
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 2217
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2218
    throw p0
.end method

.method public sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 2341
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2342
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2345
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2347
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2348
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2351
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2352
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2355
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2356
    throw p0
.end method

.method public sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 2384
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    .line 2385
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2387
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2389
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2391
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x4a

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2392
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2393
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2395
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2396
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 2399
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2400
    throw p0
.end method

.method public sendNetworkEapSimGsmAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2245
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2246
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2248
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2250
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2251
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2252
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2254
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2255
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 2258
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2259
    throw p0
.end method

.method public sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;",
            ">;)",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2225
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2226
    invoke-static {v0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2228
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2230
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x43

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2231
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2232
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2234
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2235
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2238
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2239
    throw p0
.end method

.method public sendNetworkEapSimUmtsAuthFailure()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2322
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2324
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2326
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2327
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2330
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2331
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 2334
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2335
    throw p0
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2266
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2269
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2271
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x45

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2272
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2275
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2276
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2279
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2280
    throw p0
.end method

.method public sendNetworkEapSimUmtsAutsResponse([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 2287
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_42

    .line 2294
    array-length v3, p1

    if-ne v3, v2, :cond_42

    const-wide/16 v2, 0x0

    .line 2298
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2301
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2304
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2306
    :try_start_23
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x46

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2307
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2310
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2311
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3d

    .line 2314
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2315
    throw p0

    .line 2295
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthAlg(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 998
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1001
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1003
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1004
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1007
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1008
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1011
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1012
    throw p0
.end method

.method public setAuthAlg_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2975
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2978
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2980
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2981
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2984
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2985
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2988
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2989
    throw p0
.end method

.method public setBssid([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 900
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 902
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_3f

    .line 907
    array-length v3, p1

    if-ne v3, v2, :cond_3f

    const-wide/16 v3, 0x0

    .line 911
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 914
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 917
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 919
    :try_start_22
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 920
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 921
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 923
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 924
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_3a

    .line 927
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3a
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 928
    throw p0

    .line 908
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEapAltSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1391
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1394
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1396
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1397
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1400
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1401
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1404
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1405
    throw p0
.end method

.method public setEapAnonymousIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 1243
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1244
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1247
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1249
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1250
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1253
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1254
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1257
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1258
    throw p0
.end method

.method public setEapCACert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1285
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1286
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1289
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1291
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1292
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1295
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1296
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1299
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1300
    throw p0
.end method

.method public setEapCAPath(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1307
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1310
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1312
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1313
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1316
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1317
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1320
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1321
    throw p0
.end method

.method public setEapClientCert(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1328
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1331
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1333
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1334
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1335
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1337
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1338
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1341
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1342
    throw p0
.end method

.method public setEapDomainSuffixMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1454
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1457
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1459
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1460
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1463
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1464
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1467
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1468
    throw p0
.end method

.method public setEapEncryptedImsiIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 2363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaNetwork"

    .line 2364
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2367
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2369
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2370
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2373
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2374
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2377
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2378
    throw p0
.end method

.method public setEapEngine(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1411
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1412
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1415
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1417
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1418
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1419
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1421
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1422
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1425
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1426
    throw p0
.end method

.method public setEapEngineID(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1433
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1436
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1438
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1439
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1442
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1443
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1446
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1447
    throw p0
.end method

.method public setEapErp(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 3017
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3020
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3022
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3023
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3026
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3027
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3030
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3031
    throw p0
.end method

.method public setEapIdentity(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 1222
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1223
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1226
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1228
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1229
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1230
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1232
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1233
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1236
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1237
    throw p0
.end method

.method public setEapMethod(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1181
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1184
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1186
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1187
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1188
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1190
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1191
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1194
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1195
    throw p0
.end method

.method public setEapPassword(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 1264
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1265
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1268
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1270
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1271
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1274
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1275
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1278
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1279
    throw p0
.end method

.method public setEapPhase2Method(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1202
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1205
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1207
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1208
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1211
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1212
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1215
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1216
    throw p0
.end method

.method public setEapPrivateKeyId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1349
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1352
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1354
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1355
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1358
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1359
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1362
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1363
    throw p0
.end method

.method public setEapSubjectMatch(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1370
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1373
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1375
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1376
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1379
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1380
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1383
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1384
    throw p0
.end method

.method public setEdmg(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3122
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3123
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3126
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3128
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3129
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3132
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3133
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3136
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3137
    throw p0
.end method

.method public setGroupCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1019
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1022
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1024
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1025
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1028
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1029
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1032
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1033
    throw p0
.end method

.method public setGroupCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2492
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2495
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2497
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2498
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2499
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2501
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2502
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2505
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2506
    throw p0
.end method

.method public setGroupCipher_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2827
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2828
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2831
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2833
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5f

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2834
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2837
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2838
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2841
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2842
    throw p0
.end method

.method public setGroupCipher_1_4(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3039
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3042
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3044
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3045
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3046
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3048
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3049
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3052
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3053
    throw p0
.end method

.method public setGroupMgmtCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2533
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2534
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2537
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2539
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2540
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2543
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2544
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2547
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2548
    throw p0
.end method

.method public setHALInstrumentation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3323
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 3324
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3326
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3328
    :try_start_f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3329
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1f

    .line 3331
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3332
    throw p0
.end method

.method public setIdStr(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1496
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1499
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1501
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1502
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1503
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1505
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1506
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1509
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1510
    throw p0
.end method

.method public setKeyMgmt(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 956
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 959
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 961
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 962
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 963
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 965
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 966
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 969
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 970
    throw p0
.end method

.method public setKeyMgmt_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2407
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2408
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2411
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2413
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2414
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2417
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2418
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2421
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2422
    throw p0
.end method

.method public setKeyMgmt_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2744
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2747
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2749
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2750
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2751
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2753
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2754
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2757
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2758
    throw p0
.end method

.method public setOcsp(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2702
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2705
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2707
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x59

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2708
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2709
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2711
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2712
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2715
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2716
    throw p0
.end method

.method public setPairwiseCipher(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1040
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1043
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1045
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1046
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1049
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1050
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1053
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1054
    throw p0
.end method

.method public setPairwiseCipher_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2450
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2453
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2455
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2456
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2459
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2460
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2463
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2464
    throw p0
.end method

.method public setPairwiseCipher_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2870
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2873
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2875
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x61

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2876
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2877
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2879
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2880
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2883
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2884
    throw p0
.end method

.method public setPairwiseCipher_1_4(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3080
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3081
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3084
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3086
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3087
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3088
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3090
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3091
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3094
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3095
    throw p0
.end method

.method public setPmkCache(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 2953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2954
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2957
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2959
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2960
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2961
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2963
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2964
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2967
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2968
    throw p0
.end method

.method public setProactiveKeyCaching(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1475
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1478
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1480
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1481
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1482
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1484
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1485
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1488
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1489
    throw p0
.end method

.method public setProto(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 977
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 980
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 982
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 983
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 986
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 987
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 990
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 991
    throw p0
.end method

.method public setProto_1_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2785
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2786
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2789
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2791
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5d

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2792
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2795
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2796
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2799
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2800
    throw p0
.end method

.method public setPsk([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1082
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1084
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p1, :cond_42

    .line 1089
    array-length v3, p1

    if-ne v3, v2, :cond_42

    const-wide/16 v2, 0x0

    .line 1093
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1096
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1099
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1101
    :try_start_23
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1102
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1103
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1105
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1106
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3d

    .line 1109
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1110
    throw p0

    .line 1090
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPskPassphrase(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1061
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1064
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1066
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1067
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1068
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1070
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1071
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1074
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1075
    throw p0
.end method

.method public setRequirePmf(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1160
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1163
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1165
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1166
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1169
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1170
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1173
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1174
    throw p0
.end method

.method public setSaeH2eMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork"

    .line 3186
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 3189
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3191
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3192
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3193
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3195
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;-><init>()V

    .line 3196
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 3199
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3200
    throw p0
.end method

.method public setSaePassword(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2659
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2662
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2664
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x57

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2665
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2668
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2669
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2672
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2673
    throw p0
.end method

.method public setSaePasswordId(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2679
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaNetwork"

    .line 2680
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2681
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2683
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2685
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2686
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2689
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2690
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2693
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2694
    throw p0
.end method

.method public setScanSsid(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 935
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 938
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 940
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 941
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 942
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 944
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 945
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 948
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 949
    throw p0
.end method

.method public setSsid(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
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

    .line 878
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 879
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 882
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 884
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 885
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 886
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 888
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 889
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 892
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 893
    throw p0
.end method

.method public setUpdateIdentifier(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1517
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1520
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1522
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1523
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1526
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1527
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1530
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1531
    throw p0
.end method

.method public setWapiCertSuite(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2911
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaNetwork"

    .line 2912
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2915
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2917
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2918
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2919
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2921
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2922
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 2925
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2926
    throw p0
.end method

.method public setWepKey(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 1116
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1117
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1119
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1121
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1123
    :try_start_15
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0xf

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1124
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1125
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1127
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1128
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2f

    .line 1131
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1132
    throw p0
.end method

.method public setWepTxKeyIdx(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    .line 1139
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1142
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1144
    :try_start_12
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1145
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1148
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1149
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1152
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1153
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 772
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string p0, "[class or subclass of android.hardware.wifi.supplicant@1.4::ISupplicantStaNetwork]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3394
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
