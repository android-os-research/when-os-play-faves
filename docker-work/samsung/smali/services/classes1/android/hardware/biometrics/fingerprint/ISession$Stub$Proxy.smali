.class public Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession$Stub;
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

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 344
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 345
    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 342
    iput-object p1, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 348
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 416
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 418
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 420
    :cond_2c
    :try_start_2c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method authenticate is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    throw p0
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x0

    .line 620
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 621
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_38

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 623
    :cond_30
    :try_start_30
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method authenticateWithContext is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 631
    throw p0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 546
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method close is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw p0
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 437
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_31

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 440
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method detectInteraction is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw p0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 662
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 663
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 664
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_35

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 666
    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method detectInteractionWithContext is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 674
    throw p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 395
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 399
    :cond_2c
    :try_start_2c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enroll is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw p0
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 641
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 642
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_38

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 645
    :cond_30
    :try_start_30
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enrollWithContext is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw p0
.end method

.method public enumerateEnrollments()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 456
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 459
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method enumerateEnrollments is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw p0
.end method

.method public generateChallenge()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 362
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method generateChallenge is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw p0
.end method

.method public getAuthenticatorId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 494
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getAuthenticatorId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 352
    sget-object p0, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

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

    .line 750
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 754
    :try_start_13
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 759
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    throw v2

    .line 763
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 733
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 737
    :try_start_d
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    throw p0

    .line 746
    :cond_33
    :goto_33
    iget p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public invalidateAuthenticatorId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 511
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method invalidateAuthenticatorId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    throw p0
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 719
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 720
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 722
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onContextChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    throw p0
.end method

.method public onPointerDown(IIIFF)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 565
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 566
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_39

    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 568
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPointerDown is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw p0
.end method

.method public onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 682
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 683
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 686
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPointerDownWithContext is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    throw p0
.end method

.method public onPointerUp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 582
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 586
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPointerUp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw p0
.end method

.method public onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 701
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 702
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 704
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPointerUpWithContext is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    throw p0
.end method

.method public onUiReady()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 600
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 603
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method onUiReady is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw p0
.end method

.method public removeEnrollments([I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 473
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 475
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 477
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method removeEnrollments is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    throw p0
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 525
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 526
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 527
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 529
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method resetLockout is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    throw p0
.end method

.method public revokeChallenge(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    :try_start_8
    sget-object v2, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget-object p0, p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 380
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method revokeChallenge is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    throw p0
.end method
