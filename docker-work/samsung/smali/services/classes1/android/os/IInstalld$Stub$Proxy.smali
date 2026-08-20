.class public Landroid/os/IInstalld$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    iput-object p1, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1405
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2389
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2393
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2399
    throw p0
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1560
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p0

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw p0
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1959
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw p0
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1857
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    throw p0
.end method

.method public compressFile(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2785
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2788
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x48

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    throw p0
.end method

.method public controlDexOptBlocking(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1841
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1843
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    throw p0
.end method

.method public copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2448
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2450
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2451
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2452
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x37

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_32
    move-exception p0

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2461
    throw p0
.end method

.method public copyKnoxCancel(Ljava/lang/String;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2498
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_29
    move-exception p0

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2505
    throw p0
.end method

.method public copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2470
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2473
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2475
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2477
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 2478
    invoke-virtual {v0, p10, p11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2479
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x38

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_3b

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3b
    move-exception p0

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2486
    throw p0
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw p0
.end method

.method public createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1467
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1468
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1470
    sget-object p0, Landroid/os/CreateAppDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CreateAppDataResult;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    throw p0
.end method

.method public createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1485
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1486
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1488
    sget-object p0, Landroid/os/CreateAppDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CreateAppDataResult;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 1491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    .line 1491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1493
    throw p0
.end method

.method public createEncAppData(Ljava/lang/String;III)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2572
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2575
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2576
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2579
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2584
    throw p0
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2095
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    throw p0
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2004
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2009
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 2014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    .line 2014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2016
    throw p0
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1416
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2a

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p0

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    throw p0
.end method

.method public deleteDirectoryContents(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2767
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2769
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x47

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_26
    move-exception p0

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw p0
.end method

.method public deleteKnoxFile(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2552
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2554
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2556
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_26
    move-exception p0

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw p0
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2150
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x27

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p0

    :catchall_2f
    move-exception p0

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    throw p0
.end method

.method public deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1987
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1990
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 1994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 1994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1996
    throw p0
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1573
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1579
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p0

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    throw p0
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2308
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2312
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2313
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2314
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2321
    throw p0
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1972
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1974
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    throw p0
.end method

.method public destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2332
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    throw p0
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2024
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2027
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x20

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    throw p0
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p0

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    throw p0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "android.os.IInstalld"

    .line 1754
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 1755
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p2

    .line 1756
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p3

    .line 1757
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p4

    .line 1758
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 1759
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p6

    .line 1760
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p7

    .line 1761
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p8

    .line 1762
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 1763
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p10

    .line 1764
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p11

    .line 1765
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p12

    .line 1766
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p13

    .line 1767
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p14

    .line 1768
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p15

    .line 1769
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p16

    .line 1770
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 1771
    iget-object v0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1772
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1773
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_6a

    .line 1776
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_6a
    move-exception v0

    .line 1776
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    throw v0
.end method

.method public dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "android.os.IInstalld"

    .line 1788
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 1789
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p2

    .line 1790
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p3

    .line 1791
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p4

    .line 1792
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 1793
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p6

    .line 1794
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p7

    .line 1795
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p8

    .line 1796
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 1797
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p10

    .line 1798
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p11

    .line 1799
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p12

    .line 1800
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p13

    .line 1801
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p14

    .line 1802
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p15

    .line 1803
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p16

    .line 1804
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p17

    .line 1805
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 1806
    iget-object v0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1807
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1808
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_6f

    .line 1811
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_6f
    move-exception v0

    .line 1811
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1914
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1920
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_32
    move-exception p0

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    throw p0
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1592
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    throw p0
.end method

.method public freeCache(Ljava/lang/String;JI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2056
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2059
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x22

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    throw p0
.end method

.method public getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1675
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1681
    sget-object p0, Landroid/os/storage/CrateMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/CrateMetadata;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_30
    move-exception p0

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1686
    throw p0
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1609
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1616
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1617
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_38

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_38
    move-exception p0

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1624
    throw p0
.end method

.method public getAsyncResult()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1822
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1823
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1825
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_23
    move-exception p0

    .line 1828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    throw p0
.end method

.method public getCompressedStats(Ljava/lang/String;[J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2802
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-nez p2, :cond_17

    const/4 p1, -0x1

    .line 2805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 2808
    :cond_17
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    :goto_1b
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x49

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 2813
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_34
    move-exception p0

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2818
    throw p0
.end method

.method public getDualDARLockstate()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2749
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_23
    move-exception p0

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2757
    throw p0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1659
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.os.IInstalld"

    return-object p0
.end method

.method public getKnoxFileInfo(Ljava/lang/String;)[J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2516
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_26
    move-exception p0

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    throw p0
.end method

.method public getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2535
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2537
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 2538
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 2541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2c
    move-exception p0

    .line 2541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2543
    throw p0
.end method

.method public getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2407
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2412
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 2417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    .line 2417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2419
    throw p0
.end method

.method public getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1695
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1700
    sget-object p0, Landroid/os/storage/CrateMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/CrateMetadata;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2d

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2d
    move-exception p0

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw p0
.end method

.method public getUserSize(Ljava/lang/String;II[I)[J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1633
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1638
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_2f
    move-exception p0

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw p0
.end method

.method public hasDualDARPolicy(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2712
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2714
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x44

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_26
    move-exception p0

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2721
    throw p0
.end method

.method public hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2730
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2732
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 2735
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_29
    move-exception p0

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2740
    throw p0
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2195
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 2200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_32
    move-exception p0

    .line 2200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2202
    throw p0
.end method

.method public invalidateMounts()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2211
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 2215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    .line 2215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    throw p0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2227
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_26
    move-exception p0

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    throw p0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2110
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2113
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    throw p0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2073
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x23

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 2082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 2082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2084
    throw p0
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1898
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2c
    move-exception p0

    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1905
    throw p0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 1545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 1545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw p0
.end method

.method public migrateLegacyObbData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2376
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 2380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    .line 2380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2382
    throw p0
.end method

.method public migrateSdpDb(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_29
    move-exception p0

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2640
    throw p0
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2126
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2131
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x26

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    throw p0
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1739
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    throw p0
.end method

.method public onPrivateVolumeRemoved(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2362
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2368
    throw p0
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2250
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2252
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_35
    move-exception p0

    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    throw p0
.end method

.method public reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1501
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1502
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1503
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p0

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1509
    throw p0
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2175
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 2178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_35
    move-exception p0

    .line 2178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    throw p0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2595
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2596
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_29
    move-exception p0

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2603
    throw p0
.end method

.method public removeEncUserDir(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2612
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_26
    move-exception p0

    .line 2619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2621
    throw p0
.end method

.method public removeNotTargetedPreloadApksIfNeeded()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2429
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2430
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_23
    move-exception p0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    throw p0
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    throw p0
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1516
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1523
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1529
    throw p0
.end method

.method public rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2040
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2043
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    throw p0
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1877
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw p0
.end method

.method public scanApkStats(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2826
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2829
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 2833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception p0

    .line 2833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2835
    throw p0
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1713
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1718
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1724
    throw p0
.end method

.method public setDualDARPolicyDir(IILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2675
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2676
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x42

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 2681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2c
    move-exception p0

    .line 2681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2683
    throw p0
.end method

.method public setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2694
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2696
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2c
    move-exception p0

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    throw p0
.end method

.method public setEviction(IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2651
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2654
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_29
    move-exception p0

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    throw p0
.end method

.method public setFirstBoot()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 1451
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1452
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1e
    move-exception p0

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    throw p0
.end method

.method public snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2272
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p0

    :catchall_32
    move-exception p0

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2279
    throw p0
.end method

.method public tryMountDataMirror(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.os.IInstalld"

    .line 2345
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2347
    iget-object p0, p0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x31

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p0

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2353
    throw p0
.end method
