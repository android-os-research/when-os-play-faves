.class public Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1573
    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 1574
    iput-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1571
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1577
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2603
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2607
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthAddNaughtyApp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    throw p0
.end method

.method public bandwidthAddNiceApp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2639
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2643
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthAddNiceApp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    throw p0
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1632
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1634
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1636
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthEnableDataSaver is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    throw p0
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2567
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2569
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2571
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthRemoveInterfaceAlert is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    throw p0
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2530
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2532
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2534
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthRemoveInterfaceQuota is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    throw p0
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2621
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x33

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2625
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthRemoveNaughtyApp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw p0
.end method

.method public bandwidthRemoveNiceApp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2657
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2661
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthRemoveNiceApp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2668
    throw p0
.end method

.method public bandwidthSetGlobalAlert(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2585
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2587
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x31

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2589
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthSetGlobalAlert is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2596
    throw p0
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2548
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2551
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2553
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthSetInterfaceAlert is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    throw p0
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2511
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2514
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2516
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method bandwidthSetInterfaceQuota is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    throw p0
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2360
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 2364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 2368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2362
    :cond_2c
    :try_start_2c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method clatdStart is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 2368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2370
    throw p0
.end method

.method public clatdStop(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2379
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2381
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x26

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2383
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method clatdStop is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    throw p0
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3383
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3386
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3388
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallAddUidInterfaceRules is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    throw p0
.end method

.method public firewallEnableChildChain(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3155
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3158
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3160
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallEnableChildChain is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3167
    throw p0
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3404
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3406
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallRemoveUidInterfaceRules is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3413
    throw p0
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .registers 7
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

    .line 1609
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1612
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1613
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1615
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallReplaceUidChain is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    throw p0
.end method

.method public firewallSetFirewallType(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3098
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3102
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallSetFirewallType is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3109
    throw p0
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3116
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3121
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallSetInterfaceRule is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3128
    throw p0
.end method

.method public firewallSetUidRule(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3135
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3139
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 3146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3141
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method firewallSetUidRule is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 3146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3148
    throw p0
.end method

.method public getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3476
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x60

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 3482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3483
    sget-object p0, Landroid/net/MarkMaskParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/MarkMaskParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_35

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3480
    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getFwmarkForNetwork is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 1581
    sget-object p0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "-1"

    .line 3722
    iget-object v1, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 3726
    :try_start_13
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3727
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3729
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 3731
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 3731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    throw v2

    .line 3735
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3709
    :try_start_d
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3710
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    throw p0

    .line 3718
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3438
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3439
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3444
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 3447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3441
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getOemNetd is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 3447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3449
    throw p0
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1905
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3a

    .line 1918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1912
    :cond_32
    :try_start_32
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getProcSysNet is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    .line 1918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1920
    throw p0
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2296
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2300
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x22

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 2304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2302
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method idletimerAddInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2309
    throw p0
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2316
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x23

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2322
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method idletimerRemoveInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw p0
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1864
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1870
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceAddAddress is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    throw p0
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3252
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3254
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x54

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3256
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceClearAddrs is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    throw p0
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1884
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1890
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceDelAddress is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    throw p0
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3195
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3197
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x51

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3202
    sget-object p0, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/InterfaceConfigurationParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_35

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3199
    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceGetCfg is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    throw p0
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3175
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3176
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3178
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method interfaceGetList is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    throw p0
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3215
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3216
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3217
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x52

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3219
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceSetCfg is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    throw p0
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3273
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3275
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceSetEnableIPv6 is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    throw p0
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3233
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3236
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x53

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3238
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceSetIPv6PrivacyExtensions is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3245
    throw p0
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3289
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3292
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x56

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3294
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method interfaceSetMtu is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    throw p0
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1993
    :try_start_8
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 1994
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 1995
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p3

    .line 1996
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p4

    .line 1997
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 1998
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 1999
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 2000
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 2001
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p9

    .line 2002
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p10

    .line 2003
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p11

    .line 2004
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p12

    .line 2005
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p13

    .line 2006
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p14

    .line 2007
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p15

    .line 2008
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p16

    .line 2009
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p17

    .line 2010
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2011
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 2012
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 2013
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 2014
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 2015
    iget-object v0, v0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2019
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_8a

    .line 2022
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2017
    :cond_82
    :try_start_82
    new-instance v0, Landroid/os/RemoteException;

    const-string v3, "Method ipSecAddSecurityAssociation is unimplemented."

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    .line 2022
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2096
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_45

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2108
    :cond_3d
    :try_start_3d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecAddSecurityPolicy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2115
    throw p0
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2171
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3c

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2180
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecAddTunnelInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2187
    throw p0
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1970
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3a

    .line 1983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1977
    :cond_32
    :try_start_32
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecAllocateSpi is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    .line 1983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    throw p0
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2055
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2056
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2057
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3c

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2064
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecApplyTransportModeTransform is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    throw p0
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2031
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 2043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3f

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2041
    :cond_37
    :try_start_37
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecDeleteSecurityAssociation is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2048
    throw p0
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2148
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3c

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2157
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecDeleteSecurityPolicy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    throw p0
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2078
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2079
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2080
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2082
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecRemoveTransportModeTransform is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    throw p0
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2217
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2219
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2221
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecRemoveTunnelInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw p0
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1950
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1951
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1955
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecSetEncapSocketOwner is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    throw p0
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2122
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_45

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2134
    :cond_3d
    :try_start_3d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecUpdateSecurityPolicy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2141
    throw p0
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2194
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2201
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3c

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2203
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipSecUpdateTunnelInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2210
    throw p0
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2473
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2476
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2478
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipfwdAddInterfaceForward is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    throw p0
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2455
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2457
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2459
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipfwdDisableForwarding is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    throw p0
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2437
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2441
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipfwdEnableForwarding is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    throw p0
.end method

.method public ipfwdEnabled()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2398
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2404
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2401
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method ipfwdEnabled is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    throw p0
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2418
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2419
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2421
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method ipfwdGetRequesterList is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    throw p0
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2492
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2495
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2497
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method ipfwdRemoveInterfaceForward is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    throw p0
.end method

.method public isAlive()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1589
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1590
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1592
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method isAlive is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw p0
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1710
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1713
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1715
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw p0
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2867
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2873
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_39

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2875
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddLegacyRoute is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2882
    throw p0
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2825
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2830
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 2837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2832
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddRoute is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 2837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    throw p0
.end method

.method public networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3496
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 3498
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3499
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x61

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3501
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddRouteParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3508
    throw p0
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1748
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 1750
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1751
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1753
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddUidRanges is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    throw p0
.end method

.method public networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3672
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3673
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3674
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6a

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3676
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkAddUidRangesParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3683
    throw p0
.end method

.method public networkCanProtect(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3078
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3080
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_31

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3082
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkCanProtect is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    throw p0
.end method

.method public networkClearDefault()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2950
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2952
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method networkClearDefault is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    throw p0
.end method

.method public networkClearPermissionForUser([I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3006
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x47

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3008
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkClearPermissionForUser is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3015
    throw p0
.end method

.method public networkCreate(Landroid/net/NativeNetworkConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3654
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3655
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3656
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x69

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3658
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkCreate is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3665
    throw p0
.end method

.method public networkCreatePhysical(II)V
    .registers 6
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

    .line 1653
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1658
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkCreatePhysical is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    throw p0
.end method

.method public networkCreateVpn(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1673
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1676
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1678
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkCreateVpn is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw p0
.end method

.method public networkDestroy(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1692
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1696
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkDestroy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    throw p0
.end method

.method public networkGetDefault()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2915
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method networkGetDefault is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    throw p0
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1786
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 p1, 0x0

    .line 1788
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1789
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1791
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRejectNonSecureVpn is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    throw p0
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1732
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1734
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    throw p0
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2889
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_39

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2897
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveLegacyRoute is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    throw p0
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2846
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2851
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 2858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2853
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveRoute is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 2858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2860
    throw p0
.end method

.method public networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3534
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 3536
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3537
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x63

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3539
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveRouteParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    throw p0
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1767
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 1769
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1770
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1772
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveUidRanges is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw p0
.end method

.method public networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3690
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3691
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3692
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6b

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3694
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkRemoveUidRangesParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    throw p0
.end method

.method public networkSetDefault(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2931
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2935
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkSetDefault is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    throw p0
.end method

.method public networkSetPermissionForNetwork(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2971
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkSetPermissionForNetwork is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2978
    throw p0
.end method

.method public networkSetPermissionForUser(I[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2985
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2988
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x46

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2990
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkSetPermissionForUser is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    throw p0
.end method

.method public networkSetProtectAllow(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3041
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3043
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x49

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3045
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkSetProtectAllow is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3052
    throw p0
.end method

.method public networkSetProtectDeny(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3059
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3061
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3063
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkSetProtectDeny is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    throw p0
.end method

.method public networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3515
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 3517
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3518
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x62

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3520
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method networkUpdateRouteParcel is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3527
    throw p0
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3365
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3367
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3369
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method registerUnsolicitedEventListener is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3376
    throw p0
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2277
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2282
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setIPv6AddrGenMode is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    throw p0
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1928
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1934
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 1938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_39

    .line 1941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1936
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setProcSysNet is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 1941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    throw p0
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3346
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3349
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x59

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3351
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setTcpRWmemorySize is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    throw p0
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1805
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1806
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1808
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1810
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method socketDestroy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    throw p0
.end method

.method public strictUidCleartextPenalty(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2336
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2341
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method strictUidCleartextPenalty is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2348
    throw p0
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3308
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3313
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherAddForward is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3320
    throw p0
.end method

.method public tetherApplyDnsInterfaces()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1825
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1828
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherApplyDnsInterfaces is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    throw p0
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2806
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2807
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2809
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherDnsList is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    throw p0
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2786
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2789
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2791
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherDnsSet is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    throw p0
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1845
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1846
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1851
    sget-object p0, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/TetherStatsParcel;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_32

    .line 1854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1848
    :cond_2a
    :try_start_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherGetStats is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 1854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    throw p0
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2730
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2732
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2734
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherInterfaceAdd is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    throw p0
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
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

    .line 2767
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2768
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2773
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2770
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherInterfaceList is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw p0
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
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

    .line 2748
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2750
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2752
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherInterfaceRemove is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    throw p0
.end method

.method public tetherIsEnabled()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2711
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2714
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherIsEnabled is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    throw p0
.end method

.method public tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3634
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3636
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x68

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 3640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3641
    sget-object p0, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/TetherStatsParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_35

    .line 3644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3638
    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherOffloadGetAndClearStats is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 3644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    throw p0
.end method

.method public tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3593
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3599
    sget-object p0, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/TetherStatsParcel;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_32

    .line 3602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3596
    :cond_2a
    :try_start_2a
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherOffloadGetStats is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 3602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3604
    throw p0
.end method

.method public tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3554
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3555
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3556
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x64

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3558
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherOffloadRuleAdd is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw p0
.end method

.method public tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3573
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3574
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3575
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x65

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3577
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherOffloadRuleRemove is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3584
    throw p0
.end method

.method public tetherOffloadSetInterfaceQuota(IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3613
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3616
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x67

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3618
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherOffloadSetInterfaceQuota is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3625
    throw p0
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3327
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3330
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x58

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3332
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherRemoveForward is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    throw p0
.end method

.method public tetherStart([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2675
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2677
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x36

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2679
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherStart is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    throw p0
.end method

.method public tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3457
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3458
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3459
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5f

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3461
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method tetherStartWithConfiguration is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    throw p0
.end method

.method public tetherStop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2693
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2694
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2696
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method tetherStop is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    throw p0
.end method

.method public trafficSetNetPermForUids(I[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3022
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3025
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x48

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3027
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method trafficSetNetPermForUids is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3034
    throw p0
.end method

.method public trafficSwapActiveStatsMap()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3420
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3423
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method trafficSwapActiveStatsMap is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    throw p0
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2235
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2242
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method wakeupAddInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2249
    throw p0
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2261
    iget-object p0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x20

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 2265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 2268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2263
    :cond_2e
    :try_start_2e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method wakeupDelInterface is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 2268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    throw p0
.end method
