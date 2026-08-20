.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_cancelGsiInstall:I = 0x8

.field public static final TRANSACTION_closeInstall:I = 0x13

.field public static final TRANSACTION_closePartition:I = 0x15

.field public static final TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field public static final TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field public static final TRANSACTION_createPartition:I = 0x14

.field public static final TRANSACTION_disableGsi:I = 0xc

.field public static final TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field public static final TRANSACTION_enableGsi:I = 0x5

.field public static final TRANSACTION_enableGsiAsync:I = 0x6

.field public static final TRANSACTION_getActiveDsuSlot:I = 0xf

.field public static final TRANSACTION_getAvbPublicKey:I = 0x19

.field public static final TRANSACTION_getInstallProgress:I = 0x2

.field public static final TRANSACTION_getInstalledDsuSlots:I = 0x11

.field public static final TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field public static final TRANSACTION_isGsiEnabled:I = 0x7

.field public static final TRANSACTION_isGsiInstallInProgress:I = 0x9

.field public static final TRANSACTION_isGsiInstalled:I = 0xd

.field public static final TRANSACTION_isGsiRunning:I = 0xe

.field public static final TRANSACTION_openImageService:I = 0x17

.field public static final TRANSACTION_openInstall:I = 0x12

.field public static final TRANSACTION_removeGsi:I = 0xa

.field public static final TRANSACTION_removeGsiAsync:I = 0xb

.field public static final TRANSACTION_setGsiAshmem:I = 0x3

.field public static final TRANSACTION_suggestScratchSize:I = 0x1a

.field public static final TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 250
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.gsi.IGsiService"

    .line 251
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.gsi.IGsiService"

    .line 262
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 263
    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_13

    .line 264
    check-cast v0, Landroid/gsi/IGsiService;

    return-object v0

    .line 266
    :cond_13
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.gsi.IGsiService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 276
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1bb

    packed-switch p1, :pswitch_data_1c0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 509
    :pswitch_1a
    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide p0

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1ba

    .line 499
    :pswitch_26
    new-instance p1, Landroid/gsi/AvbPublicKey;

    invoke-direct {p1}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p0

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1ba

    .line 491
    :pswitch_3d
    invoke-interface {p0}, Landroid/gsi/IGsiService;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object p0

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1ba

    .line 482
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object p0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1ba

    .line 472
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->zeroPartition(Ljava/lang/String;)I

    move-result p0

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1ba

    .line 464
    :pswitch_6f
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result p0

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1ba

    .line 451
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-interface {p0, p1, v1, v2, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result p0

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1ba

    .line 443
    :pswitch_96
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result p0

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1ba

    .line 434
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result p0

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1ba

    .line 426
    :pswitch_b5
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object p0

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_1ba

    .line 419
    :pswitch_c1
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1ba

    .line 412
    :pswitch_cd
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1ba

    .line 405
    :pswitch_d9
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    move-result p0

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 398
    :pswitch_e5
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    move-result p0

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 391
    :pswitch_f1
    invoke-interface {p0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result p0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 384
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    goto/16 :goto_1ba

    .line 376
    :pswitch_10d
    invoke-interface {p0}, Landroid/gsi/IGsiService;->removeGsi()Z

    move-result p0

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 369
    :pswitch_119
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiInstallInProgress()Z

    move-result p0

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 362
    :pswitch_125
    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result p0

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 355
    :pswitch_131
    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result p0

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1ba

    .line 344
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object p4

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-interface {p0, p1, p3, p4}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    goto :goto_1ba

    .line 332
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-interface {p0, p1, p4}, Landroid/gsi/IGsiService;->enableGsi(ZLjava/lang/String;)I

    move-result p0

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ba

    .line 322
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-interface {p0, v1, v2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result p0

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1ba

    .line 310
    :pswitch_17c
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-interface {p0, p1, v1, v2}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1ba

    .line 302
    :pswitch_196
    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1ba

    .line 291
    :pswitch_1a1
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-interface {p0, p1, v1, v2}, Landroid/gsi/IGsiService;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_1ba
    return v0

    .line 282
    :cond_1bb
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1a1
        :pswitch_196
        :pswitch_17c
        :pswitch_16a
        :pswitch_154
        :pswitch_13d
        :pswitch_131
        :pswitch_125
        :pswitch_119
        :pswitch_10d
        :pswitch_fd
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_cd
        :pswitch_c1
        :pswitch_b5
        :pswitch_a2
        :pswitch_96
        :pswitch_7b
        :pswitch_6f
        :pswitch_5c
        :pswitch_49
        :pswitch_3d
        :pswitch_26
        :pswitch_1a
    .end packed-switch
.end method
