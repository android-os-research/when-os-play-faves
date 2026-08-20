.class public abstract Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.super Landroid/os/Binder;
.source "ISemMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/display/ISemMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/ISemMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_afpcDataApply:I = 0x1d

.field static final blacklist TRANSACTION_afpcDataOff:I = 0x1e

.field static final blacklist TRANSACTION_afpcDataVerify:I = 0x1b

.field static final blacklist TRANSACTION_afpcDataWrite:I = 0x1c

.field static final blacklist TRANSACTION_afpcWorkOff:I = 0x1f

.field static final blacklist TRANSACTION_disableNightMode:I = 0xc

.field static final blacklist TRANSACTION_enableNightMode:I = 0xb

.field static final blacklist TRANSACTION_getContentMode:I = 0x2

.field static final blacklist TRANSACTION_getNightModeBlock:I = 0xe

.field static final blacklist TRANSACTION_getNightModeStep:I = 0x10

.field static final blacklist TRANSACTION_getScreenMode:I = 0x1

.field static final blacklist TRANSACTION_getSupportedContentMode:I = 0x6

.field static final blacklist TRANSACTION_getSupportedScreenMode:I = 0x4

.field static final blacklist TRANSACTION_isContentModeSupported:I = 0x5

.field static final blacklist TRANSACTION_isNightModeSupported:I = 0xa

.field static final blacklist TRANSACTION_isScreenModeSupported:I = 0x3

.field static final blacklist TRANSACTION_setAmoledACL:I = 0x9

.field static final blacklist TRANSACTION_setColorFadeNightDim:I = 0x12

.field static final blacklist TRANSACTION_setColorVision:I = 0x13

.field static final blacklist TRANSACTION_setContentMode:I = 0x8

.field static final blacklist TRANSACTION_setLightNotificationMode:I = 0x19

.field static final blacklist TRANSACTION_setNightMode:I = 0x11

.field static final blacklist TRANSACTION_setNightModeBlock:I = 0xd

.field static final blacklist TRANSACTION_setNightModeStep:I = 0xf

.field static final blacklist TRANSACTION_setScreenMode:I = 0x7

.field static final blacklist TRANSACTION_setmDNIeAccessibilityMode:I = 0x18

.field static final blacklist TRANSACTION_setmDNIeColorBlind:I = 0x14

.field static final blacklist TRANSACTION_setmDNIeEmergencyMode:I = 0x17

.field static final blacklist TRANSACTION_setmDNIeNegative:I = 0x15

.field static final blacklist TRANSACTION_setmDNIeScreenCurtain:I = 0x16

.field static final blacklist TRANSACTION_updateAlwaysOnDisplay:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/display/ISemMdnieManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 153
    if-nez p0, :cond_4

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_4
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 157
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v1, :cond_14

    .line 158
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-object v1

    .line 160
    :cond_14
    new-instance v1, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 169
    packed-switch p0, :pswitch_data_72

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 293
    :pswitch_5
    const-string v0, "afpcWorkOff"

    return-object v0

    .line 289
    :pswitch_8
    const-string v0, "afpcDataOff"

    return-object v0

    .line 285
    :pswitch_b
    const-string v0, "afpcDataApply"

    return-object v0

    .line 281
    :pswitch_e
    const-string v0, "afpcDataWrite"

    return-object v0

    .line 277
    :pswitch_11
    const-string v0, "afpcDataVerify"

    return-object v0

    .line 273
    :pswitch_14
    const-string/jumbo v0, "updateAlwaysOnDisplay"

    return-object v0

    .line 269
    :pswitch_18
    const-string/jumbo v0, "setLightNotificationMode"

    return-object v0

    .line 265
    :pswitch_1c
    const-string/jumbo v0, "setmDNIeAccessibilityMode"

    return-object v0

    .line 261
    :pswitch_20
    const-string/jumbo v0, "setmDNIeEmergencyMode"

    return-object v0

    .line 257
    :pswitch_24
    const-string/jumbo v0, "setmDNIeScreenCurtain"

    return-object v0

    .line 253
    :pswitch_28
    const-string/jumbo v0, "setmDNIeNegative"

    return-object v0

    .line 249
    :pswitch_2c
    const-string/jumbo v0, "setmDNIeColorBlind"

    return-object v0

    .line 245
    :pswitch_30
    const-string/jumbo v0, "setColorVision"

    return-object v0

    .line 241
    :pswitch_34
    const-string/jumbo v0, "setColorFadeNightDim"

    return-object v0

    .line 237
    :pswitch_38
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 233
    :pswitch_3c
    const-string v0, "getNightModeStep"

    return-object v0

    .line 229
    :pswitch_3f
    const-string/jumbo v0, "setNightModeStep"

    return-object v0

    .line 225
    :pswitch_43
    const-string v0, "getNightModeBlock"

    return-object v0

    .line 221
    :pswitch_46
    const-string/jumbo v0, "setNightModeBlock"

    return-object v0

    .line 217
    :pswitch_4a
    const-string v0, "disableNightMode"

    return-object v0

    .line 213
    :pswitch_4d
    const-string v0, "enableNightMode"

    return-object v0

    .line 209
    :pswitch_50
    const-string v0, "isNightModeSupported"

    return-object v0

    .line 205
    :pswitch_53
    const-string/jumbo v0, "setAmoledACL"

    return-object v0

    .line 201
    :pswitch_57
    const-string/jumbo v0, "setContentMode"

    return-object v0

    .line 197
    :pswitch_5b
    const-string/jumbo v0, "setScreenMode"

    return-object v0

    .line 193
    :pswitch_5f
    const-string v0, "getSupportedContentMode"

    return-object v0

    .line 189
    :pswitch_62
    const-string v0, "isContentModeSupported"

    return-object v0

    .line 185
    :pswitch_65
    const-string v0, "getSupportedScreenMode"

    return-object v0

    .line 181
    :pswitch_68
    const-string v0, "isScreenModeSupported"

    return-object v0

    .line 177
    :pswitch_6b
    const-string v0, "getContentMode"

    return-object v0

    .line 173
    :pswitch_6e
    const-string v0, "getScreenMode"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 164
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1201
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 304
    invoke-static {p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 308
    const-string v0, "com.samsung.android.hardware.display.ISemMdnieManager"

    .line 309
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 310
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    :cond_d
    packed-switch p1, :pswitch_data_20c

    .line 320
    packed-switch p1, :pswitch_data_212

    .line 600
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 316
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v1

    .line 593
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcWorkOff()Z

    move-result v2

    .line 594
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 596
    goto/16 :goto_20b

    .line 586
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataOff()Z

    move-result v2

    .line 587
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    goto/16 :goto_20b

    .line 579
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataApply()Z

    move-result v2

    .line 580
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 582
    goto/16 :goto_20b

    .line 572
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataWrite()Z

    move-result v2

    .line 573
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    goto/16 :goto_20b

    .line 565
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->afpcDataVerify()Z

    move-result v2

    .line 566
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    goto/16 :goto_20b

    .line 555
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 557
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 558
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->updateAlwaysOnDisplay(ZI)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_20b

    .line 545
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 546
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setLightNotificationMode(Z)Z

    move-result v3

    .line 548
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 550
    goto/16 :goto_20b

    .line 533
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 536
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result v4

    .line 538
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 540
    goto/16 :goto_20b

    .line 523
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 524
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeEmergencyMode(Z)Z

    move-result v3

    .line 526
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto/16 :goto_20b

    .line 513
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 514
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeScreenCurtain(Z)Z

    move-result v3

    .line 516
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_20b

    .line 503
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 504
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeNegative(Z)Z

    move-result v3

    .line 506
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 508
    goto/16 :goto_20b

    .line 491
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 493
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 494
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result v4

    .line 496
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 498
    goto/16 :goto_20b

    .line 477
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Z
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 479
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 481
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 482
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorVision(ZII)Z

    move-result v5

    .line 484
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_20b

    .line 467
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 468
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setColorFadeNightDim(Z)Z

    move-result v3

    .line 470
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 472
    goto/16 :goto_20b

    .line 455
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 457
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 458
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightMode(ZI)Z

    move-result v4

    .line 460
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 462
    goto/16 :goto_20b

    .line 447
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12a
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeStep()I

    move-result v2

    .line 448
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    goto/16 :goto_20b

    .line 438
    .end local v2    # "_result":I
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeStep(I)Z

    move-result v3

    .line 441
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    goto/16 :goto_20b

    .line 430
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_149
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getNightModeBlock()Z

    move-result v2

    .line 431
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    goto/16 :goto_20b

    .line 421
    .end local v2    # "_result":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 422
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setNightModeBlock(Z)Z

    move-result v3

    .line 424
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto/16 :goto_20b

    .line 413
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_168
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->disableNightMode()Z

    move-result v2

    .line 414
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    goto/16 :goto_20b

    .line 404
    .end local v2    # "_result":Z
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->enableNightMode(I)Z

    move-result v3

    .line 407
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    goto/16 :goto_20b

    .line 396
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_187
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isNightModeSupported()Z

    move-result v2

    .line 397
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_20b

    .line 387
    .end local v2    # "_result":Z
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setAmoledACL(I)Z

    move-result v3

    .line 390
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto :goto_20b

    .line 377
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setContentMode(I)Z

    move-result v3

    .line 380
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    goto :goto_20b

    .line 367
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->setScreenMode(I)Z

    move-result v3

    .line 370
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto :goto_20b

    .line 359
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1c9
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedContentMode()[I

    move-result-object v2

    .line 360
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 362
    goto :goto_20b

    .line 352
    .end local v2    # "_result":[I
    :pswitch_1d4
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isContentModeSupported()Z

    move-result v2

    .line 353
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    goto :goto_20b

    .line 345
    .end local v2    # "_result":Z
    :pswitch_1df
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getSupportedScreenMode()[I

    move-result-object v2

    .line 346
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 348
    goto :goto_20b

    .line 338
    .end local v2    # "_result":[I
    :pswitch_1ea
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->isScreenModeSupported()Z

    move-result v2

    .line 339
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    goto :goto_20b

    .line 331
    .end local v2    # "_result":Z
    :pswitch_1f5
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getContentMode()I

    move-result v2

    .line 332
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto :goto_20b

    .line 324
    .end local v2    # "_result":I
    :pswitch_200
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;->getScreenMode()I

    move-result v2

    .line 325
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    nop

    .line 603
    .end local v2    # "_result":I
    :goto_20b
    return v1

    :pswitch_data_20c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_200
        :pswitch_1f5
        :pswitch_1ea
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c9
        :pswitch_1b7
        :pswitch_1a5
        :pswitch_193
        :pswitch_187
        :pswitch_174
        :pswitch_168
        :pswitch_155
        :pswitch_149
        :pswitch_136
        :pswitch_12a
        :pswitch_113
        :pswitch_100
        :pswitch_e5
        :pswitch_ce
        :pswitch_bb
        :pswitch_a8
        :pswitch_95
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
