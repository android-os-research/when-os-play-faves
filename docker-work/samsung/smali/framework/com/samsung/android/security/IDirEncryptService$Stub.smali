.class public abstract Lcom/samsung/android/security/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Lcom/samsung/android/security/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final blacklist TRANSACTION_encryptStorage:I = 0x9

.field static final blacklist TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final blacklist TRANSACTION_getCurrentStatus:I = 0x6

.field static final blacklist TRANSACTION_getLastError:I = 0x7

.field static final blacklist TRANSACTION_getListener:I = 0x2b

.field static final blacklist TRANSACTION_isSdCardEncryped:I = 0xc

.field static final blacklist TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final blacklist TRANSACTION_registerListener:I = 0x1

.field static final blacklist TRANSACTION_setMountSDcardToHelper:I = 0x2a

.field static final blacklist TRANSACTION_setNeedToCreateKey:I = 0x29

.field static final blacklist TRANSACTION_setPassword:I = 0x5

.field static final blacklist TRANSACTION_setSdCardEncryptionPolicy:I = 0xb

.field static final blacklist TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final blacklist TRANSACTION_unmountSDCardByAdmin:I = 0xa

.field static final blacklist TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 350
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 351
    const-string v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 339
    if-nez p0, :cond_4

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_4
    const-string v0, "IDirEncryptService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 343
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/security/IDirEncryptService;

    if-eqz v1, :cond_14

    .line 344
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/security/IDirEncryptService;

    return-object v1

    .line 346
    :cond_14
    new-instance v1, Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 355
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    const-string v1, "IDirEncryptService"

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_11c

    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 364
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    return v2

    .line 486
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getListener()Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 488
    .local v0, "_result":Landroid/os/IVoldTaskListener;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/os/IVoldTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 490
    return v2

    .line 470
    .end local v0    # "_result":Landroid/os/IVoldTaskListener;
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_30

    move v0, v2

    :cond_30
    move v1, v0

    .local v1, "in":Z
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setMountSDcardToHelper(Z)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    return v2

    .line 462
    .end local v1    # "in":Z
    :sswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_42

    move v0, v2

    :cond_42
    move v1, v0

    .restart local v1    # "in":Z
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setNeedToCreateKey(Z)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    return v2

    .line 478
    .end local v1    # "in":Z
    :sswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->isSdCardEncryped()Z

    move-result v0

    .line 480
    .local v0, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    return v2

    .line 399
    .end local v0    # "result":Z
    :sswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v0

    .line 401
    .local v0, "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return v2

    .line 455
    .end local v0    # "_resultCode":I
    :sswitch_72
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->unmountSDCardByAdmin()V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    return v2

    .line 447
    :sswitch_7c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v0

    .line 449
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    return v2

    .line 439
    .end local v0    # "_resultCode":I
    :sswitch_8e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v0

    .line 441
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return v2

    .line 431
    .end local v0    # "_resultCode":I
    :sswitch_9c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getLastError()I

    move-result v0

    .line 433
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    return v2

    .line 423
    .end local v0    # "_resultCode":I
    :sswitch_aa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v0

    .line 425
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    return v2

    .line 415
    .end local v0    # "_resultCode":I
    :sswitch_b8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v0

    .line 417
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return v2

    .line 407
    .end local v0    # "_resultCode":I
    :sswitch_ca
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 409
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    return v2

    .line 390
    .end local v0    # "_resultCode":I
    :sswitch_d8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/security/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v0

    .line 392
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return v2

    .line 379
    .end local v0    # "_resultCode":I
    :sswitch_f2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptServiceListener;

    move-result-object v1

    .line 382
    .local v1, "listener":Lcom/samsung/android/security/IDirEncryptServiceListener;
    if-nez v1, :cond_100

    .line 383
    return v0

    .line 385
    :cond_100
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    return v2

    .line 368
    .end local v1    # "listener":Lcom/samsung/android/security/IDirEncryptServiceListener;
    :sswitch_107
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptServiceListener;

    move-result-object v1

    .line 371
    .restart local v1    # "listener":Lcom/samsung/android/security/IDirEncryptServiceListener;
    if-nez v1, :cond_115

    .line 372
    return v0

    .line 374
    :cond_115
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/IDirEncryptService$Stub;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    return v2

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_107
        0x2 -> :sswitch_f2
        0x3 -> :sswitch_d8
        0x4 -> :sswitch_ca
        0x5 -> :sswitch_b8
        0x6 -> :sswitch_aa
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_8e
        0x9 -> :sswitch_7c
        0xa -> :sswitch_72
        0xb -> :sswitch_58
        0xc -> :sswitch_4a
        0x29 -> :sswitch_38
        0x2a -> :sswitch_26
        0x2b -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
