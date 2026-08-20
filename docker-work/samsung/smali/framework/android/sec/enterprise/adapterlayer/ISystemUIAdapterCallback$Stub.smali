.class public abstract Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "ISystemUIAdapterCallback.java"

# interfaces
.implements Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x7

.field static final blacklist TRANSACTION_setAdminLock:I = 0x1d

.field static final blacklist TRANSACTION_setAirplaneModeAllowed:I = 0xd

.field static final blacklist TRANSACTION_setApplicationNameControlEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setBluetoothAllowed:I = 0x12

.field static final blacklist TRANSACTION_setCameraAllowed:I = 0x10

.field static final blacklist TRANSACTION_setCellularDataAllowed:I = 0xe

.field static final blacklist TRANSACTION_setFaceRecognitionEvenCameraBlockedAllowed:I = 0x11

.field static final blacklist TRANSACTION_setGPSStateChangeAllowed:I = 0x18

.field static final blacklist TRANSACTION_setKioskModeEnabled:I = 0x3

.field static final blacklist TRANSACTION_setLocationProviderAllowed:I = 0x17

.field static final blacklist TRANSACTION_setLockedIccIds:I = 0x19

.field static final blacklist TRANSACTION_setLockscreenInvisibleOverlay:I = 0x1a

.field static final blacklist TRANSACTION_setLockscreenWallpaper:I = 0x1b

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x4

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForProfileDisable:I = 0x5

.field static final blacklist TRANSACTION_setMultifactorAuthEnabled:I = 0x9

.field static final blacklist TRANSACTION_setNFCStateChangeAllowed:I = 0x13

.field static final blacklist TRANSACTION_setNavigationBarHidden:I = 0x2

.field static final blacklist TRANSACTION_setPasswordLockDelay:I = 0x8

.field static final blacklist TRANSACTION_setPasswordVisibilityEnabled:I = 0xa

.field static final blacklist TRANSACTION_setPwdChangeRequested:I = 0x6

.field static final blacklist TRANSACTION_setRoamingAllowed:I = 0x14

.field static final blacklist TRANSACTION_setSettingsChangeAllowed:I = 0xb

.field static final blacklist TRANSACTION_setStatusBarExpansionAllowed:I = 0xc

.field static final blacklist TRANSACTION_setStatusBarHidden:I = 0x1

.field static final blacklist TRANSACTION_setWifiAllowed:I = 0x16

.field static final blacklist TRANSACTION_setWifiStateChangeAllowed:I = 0x15

.field static final blacklist TRANSACTION_setWifiTetheringAllowed:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 129
    if-nez p0, :cond_4

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_4
    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 133
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_14

    .line 134
    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v1

    .line 136
    :cond_14
    new-instance v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 145
    packed-switch p0, :pswitch_data_78

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 261
    :pswitch_5
    const-string/jumbo v0, "setAdminLock"

    return-object v0

    .line 257
    :pswitch_9
    const-string/jumbo v0, "setApplicationNameControlEnabled"

    return-object v0

    .line 253
    :pswitch_d
    const-string/jumbo v0, "setLockscreenWallpaper"

    return-object v0

    .line 249
    :pswitch_11
    const-string/jumbo v0, "setLockscreenInvisibleOverlay"

    return-object v0

    .line 245
    :pswitch_15
    const-string/jumbo v0, "setLockedIccIds"

    return-object v0

    .line 241
    :pswitch_19
    const-string/jumbo v0, "setGPSStateChangeAllowed"

    return-object v0

    .line 237
    :pswitch_1d
    const-string/jumbo v0, "setLocationProviderAllowed"

    return-object v0

    .line 233
    :pswitch_21
    const-string/jumbo v0, "setWifiAllowed"

    return-object v0

    .line 229
    :pswitch_25
    const-string/jumbo v0, "setWifiStateChangeAllowed"

    return-object v0

    .line 225
    :pswitch_29
    const-string/jumbo v0, "setRoamingAllowed"

    return-object v0

    .line 221
    :pswitch_2d
    const-string/jumbo v0, "setNFCStateChangeAllowed"

    return-object v0

    .line 217
    :pswitch_31
    const-string/jumbo v0, "setBluetoothAllowed"

    return-object v0

    .line 213
    :pswitch_35
    const-string/jumbo v0, "setFaceRecognitionEvenCameraBlockedAllowed"

    return-object v0

    .line 209
    :pswitch_39
    const-string/jumbo v0, "setCameraAllowed"

    return-object v0

    .line 205
    :pswitch_3d
    const-string/jumbo v0, "setWifiTetheringAllowed"

    return-object v0

    .line 201
    :pswitch_41
    const-string/jumbo v0, "setCellularDataAllowed"

    return-object v0

    .line 197
    :pswitch_45
    const-string/jumbo v0, "setAirplaneModeAllowed"

    return-object v0

    .line 193
    :pswitch_49
    const-string/jumbo v0, "setStatusBarExpansionAllowed"

    return-object v0

    .line 189
    :pswitch_4d
    const-string/jumbo v0, "setSettingsChangeAllowed"

    return-object v0

    .line 185
    :pswitch_51
    const-string/jumbo v0, "setPasswordVisibilityEnabled"

    return-object v0

    .line 181
    :pswitch_55
    const-string/jumbo v0, "setMultifactorAuthEnabled"

    return-object v0

    .line 177
    :pswitch_59
    const-string/jumbo v0, "setPasswordLockDelay"

    return-object v0

    .line 173
    :pswitch_5d
    const-string v0, "excludeExternalStorageForFailedPasswordsWipe"

    return-object v0

    .line 169
    :pswitch_60
    const-string/jumbo v0, "setPwdChangeRequested"

    return-object v0

    .line 165
    :pswitch_64
    const-string/jumbo v0, "setMaximumFailedPasswordsForProfileDisable"

    return-object v0

    .line 161
    :pswitch_68
    const-string/jumbo v0, "setMaximumFailedPasswordsForDisable"

    return-object v0

    .line 157
    :pswitch_6c
    const-string/jumbo v0, "setKioskModeEnabled"

    return-object v0

    .line 153
    :pswitch_70
    const-string/jumbo v0, "setNavigationBarHidden"

    return-object v0

    .line 149
    :pswitch_74
    const-string/jumbo v0, "setStatusBarHidden"

    return-object v0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 140
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 946
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 272
    invoke-static {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 276
    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    .line 277
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 278
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    :cond_d
    packed-switch p1, :pswitch_data_17c

    .line 288
    packed-switch p1, :pswitch_data_182

    .line 530
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 284
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return v1

    .line 521
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 523
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 524
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAdminLock(ZZ)V

    .line 526
    goto/16 :goto_17a

    .line 513
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 514
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setApplicationNameControlEnabled(Z)V

    .line 516
    goto/16 :goto_17a

    .line 505
    .end local v2    # "_arg0":Z
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 506
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenWallpaper(Z)V

    .line 508
    goto/16 :goto_17a

    .line 497
    .end local v2    # "_arg0":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 498
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenInvisibleOverlay(Z)V

    .line 500
    goto/16 :goto_17a

    .line 489
    .end local v2    # "_arg0":Z
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockedIccIds([Ljava/lang/String;)V

    .line 492
    goto/16 :goto_17a

    .line 481
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 482
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setGPSStateChangeAllowed(Z)V

    .line 484
    goto/16 :goto_17a

    .line 471
    .end local v2    # "_arg0":Z
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 474
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLocationProviderAllowed(Ljava/lang/String;Z)V

    .line 476
    goto/16 :goto_17a

    .line 463
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 464
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiAllowed(Z)V

    .line 466
    goto/16 :goto_17a

    .line 455
    .end local v2    # "_arg0":Z
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 456
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiStateChangeAllowed(Z)V

    .line 458
    goto/16 :goto_17a

    .line 447
    .end local v2    # "_arg0":Z
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 448
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setRoamingAllowed(Z)V

    .line 450
    goto/16 :goto_17a

    .line 439
    .end local v2    # "_arg0":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 440
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCStateChangeAllowed(Z)V

    .line 442
    goto/16 :goto_17a

    .line 431
    .end local v2    # "_arg0":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 432
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setBluetoothAllowed(Z)V

    .line 434
    goto/16 :goto_17a

    .line 423
    .end local v2    # "_arg0":Z
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 424
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setFaceRecognitionEvenCameraBlockedAllowed(Z)V

    .line 426
    goto/16 :goto_17a

    .line 415
    .end local v2    # "_arg0":Z
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 416
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCameraAllowed(Z)V

    .line 418
    goto/16 :goto_17a

    .line 407
    .end local v2    # "_arg0":Z
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 408
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiTetheringAllowed(Z)V

    .line 410
    goto/16 :goto_17a

    .line 399
    .end local v2    # "_arg0":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 400
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCellularDataAllowed(Z)V

    .line 402
    goto/16 :goto_17a

    .line 391
    .end local v2    # "_arg0":Z
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 392
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAirplaneModeAllowed(Z)V

    .line 394
    goto/16 :goto_17a

    .line 383
    .end local v2    # "_arg0":Z
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 384
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarExpansionAllowed(Z)V

    .line 386
    goto/16 :goto_17a

    .line 375
    .end local v2    # "_arg0":Z
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 376
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setSettingsChangeAllowed(Z)V

    .line 378
    goto/16 :goto_17a

    .line 367
    .end local v2    # "_arg0":Z
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 368
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordVisibilityEnabled(Z)V

    .line 370
    goto :goto_17a

    .line 359
    .end local v2    # "_arg0":Z
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 360
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMultifactorAuthEnabled(Z)V

    .line 362
    goto :goto_17a

    .line 351
    .end local v2    # "_arg0":Z
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordLockDelay(I)V

    .line 354
    goto :goto_17a

    .line 343
    .end local v2    # "_arg0":I
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 344
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->excludeExternalStorageForFailedPasswordsWipe(Z)V

    .line 346
    goto :goto_17a

    .line 335
    .end local v2    # "_arg0":Z
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPwdChangeRequested(I)V

    .line 338
    goto :goto_17a

    .line 327
    .end local v2    # "_arg0":I
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForProfileDisable(I)V

    .line 330
    goto :goto_17a

    .line 317
    .end local v2    # "_arg0":I
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V

    .line 322
    goto :goto_17a

    .line 309
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_159
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 310
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setKioskModeEnabled(Z)V

    .line 312
    goto :goto_17a

    .line 301
    .end local v2    # "_arg0":Z
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 302
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNavigationBarHidden(Z)V

    .line 304
    goto :goto_17a

    .line 293
    .end local v2    # "_arg0":Z
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 294
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarHidden(Z)V

    .line 296
    nop

    .line 533
    .end local v2    # "_arg0":Z
    :goto_17a
    return v1

    nop

    :pswitch_data_17c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_16f
        :pswitch_164
        :pswitch_159
        :pswitch_14a
        :pswitch_13f
        :pswitch_134
        :pswitch_129
        :pswitch_11e
        :pswitch_113
        :pswitch_108
        :pswitch_fc
        :pswitch_f0
        :pswitch_e4
        :pswitch_d8
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
