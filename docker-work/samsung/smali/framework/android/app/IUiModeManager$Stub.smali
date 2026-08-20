.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x14

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x2

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x3

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x1

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x17

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x4

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x10

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0xe

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x6

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0x8

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x16

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0xb

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0xa

.field static final blacklist TRANSACTION_releaseProjection:I = 0x13

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x15

.field static final blacklist TRANSACTION_requestProjection:I = 0x12

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0x9

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x11

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0xf

.field static final blacklist TRANSACTION_setDesktopMode:I = 0x18

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x5

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0xd

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0xc

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 185
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 193
    if-nez p0, :cond_4

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_4
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 197
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_14

    .line 198
    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    .line 200
    :cond_14
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 209
    packed-switch p0, :pswitch_data_58

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 305
    :pswitch_5
    const-string/jumbo v0, "setDesktopMode"

    return-object v0

    .line 301
    :pswitch_9
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    .line 297
    :pswitch_c
    const-string v0, "getProjectingPackages"

    return-object v0

    .line 293
    :pswitch_f
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    .line 289
    :pswitch_13
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    .line 285
    :pswitch_16
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    .line 281
    :pswitch_1a
    const-string/jumbo v0, "requestProjection"

    return-object v0

    .line 277
    :pswitch_1e
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    .line 273
    :pswitch_22
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    .line 269
    :pswitch_25
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    .line 265
    :pswitch_29
    const-string v0, "getCustomNightModeStart"

    return-object v0

    .line 261
    :pswitch_2c
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    .line 257
    :pswitch_30
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    .line 253
    :pswitch_34
    const-string v0, "isNightModeLocked"

    return-object v0

    .line 249
    :pswitch_37
    const-string v0, "isUiModeLocked"

    return-object v0

    .line 245
    :pswitch_3a
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    .line 241
    :pswitch_3e
    const-string v0, "getNightModeCustomType"

    return-object v0

    .line 237
    :pswitch_41
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    .line 233
    :pswitch_45
    const-string v0, "getNightMode"

    return-object v0

    .line 229
    :pswitch_48
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 225
    :pswitch_4c
    const-string v0, "getCurrentModeType"

    return-object v0

    .line 221
    :pswitch_4f
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    .line 217
    :pswitch_52
    const-string v0, "disableCarMode"

    return-object v0

    .line 213
    :pswitch_55
    const-string v0, "enableCarMode"

    return-object v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 204
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1080
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 316
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    const-string v0, "android.app.IUiModeManager"

    .line 321
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 322
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    :cond_d
    packed-switch p1, :pswitch_data_1a2

    .line 332
    packed-switch p1, :pswitch_data_1a8

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 328
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return v1

    .line 549
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 550
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setDesktopMode(Z)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_1a0

    .line 541
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    .line 542
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    goto/16 :goto_1a0

    .line 532
    .end local v2    # "_result":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    .line 535
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 537
    goto/16 :goto_1a0

    .line 523
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 524
    .local v2, "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_1a0

    .line 512
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 514
    .restart local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 515
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_1a0

    .line 500
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    .line 505
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    goto/16 :goto_1a0

    .line 486
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 488
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 493
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    goto/16 :goto_1a0

    .line 477
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 478
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_1a0

    .line 469
    .end local v2    # "_arg0":J
    :pswitch_b5
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 470
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 472
    goto/16 :goto_1a0

    .line 461
    .end local v2    # "_result":J
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 462
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    goto/16 :goto_1a0

    .line 453
    .end local v2    # "_arg0":J
    :pswitch_d0
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    .line 454
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 456
    goto/16 :goto_1a0

    .line 444
    .end local v2    # "_result":J
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 445
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    .line 447
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_1a0

    .line 432
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 435
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    .line 437
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto/16 :goto_1a0

    .line 424
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_106
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    .line 425
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    goto/16 :goto_1a0

    .line 417
    .end local v2    # "_result":Z
    :pswitch_112
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    .line 418
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    goto/16 :goto_1a0

    .line 409
    .end local v2    # "_result":Z
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_1a0

    .line 401
    .end local v2    # "_arg0":I
    :pswitch_12d
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    .line 402
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    goto :goto_1a0

    .line 393
    .end local v2    # "_result":I
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto :goto_1a0

    .line 385
    .end local v2    # "_arg0":I
    :pswitch_146
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    .line 386
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    goto :goto_1a0

    .line 377
    .end local v2    # "_result":I
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto :goto_1a0

    .line 369
    .end local v2    # "_arg0":I
    :pswitch_15f
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    .line 370
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto :goto_1a0

    .line 359
    .end local v2    # "_result":I
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto :goto_1a0

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto :goto_1a0

    .line 337
    .end local v2    # "_arg0":I
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    nop

    .line 560
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_1a0
    return v1

    nop

    :pswitch_data_1a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_17c
        :pswitch_16a
        :pswitch_15f
        :pswitch_151
        :pswitch_146
        :pswitch_138
        :pswitch_12d
        :pswitch_11e
        :pswitch_112
        :pswitch_106
        :pswitch_ef
        :pswitch_dc
        :pswitch_d0
        :pswitch_c1
        :pswitch_b5
        :pswitch_a6
        :pswitch_8b
        :pswitch_74
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
