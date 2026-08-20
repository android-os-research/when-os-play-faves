.class public abstract Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "ISemDisplaySolutionManager.java"

# interfaces
.implements Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAlphaMaskLevel:I = 0x8

.field static final blacklist TRANSACTION_getAutoCurrentLimitOffModeEnabled:I = 0x4

.field static final blacklist TRANSACTION_getDouAppModeEnable:I = 0x3

.field static final blacklist TRANSACTION_getFingerPrintBacklightValue:I = 0x7

.field static final blacklist TRANSACTION_getGalleryModeEnable:I = 0x2

.field static final blacklist TRANSACTION_getOnPixelRatioValueForPMS:I = 0x5

.field static final blacklist TRANSACTION_getVideoEnhancerSettingState:I = 0x6

.field static final blacklist TRANSACTION_getVideoModeEnable:I = 0x1

.field static final blacklist TRANSACTION_isBlueLightFilterScheduledTime:I = 0x1f

.field static final blacklist TRANSACTION_isMdnieScenarioControlServiceEnabled:I = 0x9

.field static final blacklist TRANSACTION_onAutoCurrentLimitOffMode:I = 0x10

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedInt:I = 0xf

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedWithBrightness:I = 0xe

.field static final blacklist TRANSACTION_onBurnInPreventionDisabled:I = 0x11

.field static final blacklist TRANSACTION_onDetailVeiwStateChanged:I = 0xc

.field static final blacklist TRANSACTION_setAutoCurrentLimitOffModeEnabled:I = 0x15

.field static final blacklist TRANSACTION_setBlfEnableTimeBySchedule:I = 0x1e

.field static final blacklist TRANSACTION_setDouAppModeEnable:I = 0x14

.field static final blacklist TRANSACTION_setEyeComfortWeightingFactor:I = 0x1b

.field static final blacklist TRANSACTION_setGalleryModeEnable:I = 0x13

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0xa

.field static final blacklist TRANSACTION_setIRCompensationMode:I = 0xb

.field static final blacklist TRANSACTION_setMdnieScenarioControlServiceEnable:I = 0x16

.field static final blacklist TRANSACTION_setMultipleScreenBrightness:I = 0x18

.field static final blacklist TRANSACTION_setMultipleScreenBrightnessValueForHDR:I = 0x1a

.field static final blacklist TRANSACTION_setOnPixelRatioValueForPMS:I = 0x19

.field static final blacklist TRANSACTION_setScreenBrightnessForPreview:I = 0x17

.field static final blacklist TRANSACTION_setSleepPatternBLF:I = 0x1d

.field static final blacklist TRANSACTION_setVideoEnhancerSettingState:I = 0x1c

.field static final blacklist TRANSACTION_setVideoModeEnable:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_4
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 137
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v1, :cond_14

    .line 138
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-object v1

    .line 140
    :cond_14
    new-instance v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 149
    packed-switch p0, :pswitch_data_72

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 273
    :pswitch_5
    const-string v0, "isBlueLightFilterScheduledTime"

    return-object v0

    .line 269
    :pswitch_8
    const-string/jumbo v0, "setBlfEnableTimeBySchedule"

    return-object v0

    .line 265
    :pswitch_c
    const-string/jumbo v0, "setSleepPatternBLF"

    return-object v0

    .line 261
    :pswitch_10
    const-string/jumbo v0, "setVideoEnhancerSettingState"

    return-object v0

    .line 257
    :pswitch_14
    const-string/jumbo v0, "setEyeComfortWeightingFactor"

    return-object v0

    .line 253
    :pswitch_18
    const-string/jumbo v0, "setMultipleScreenBrightnessValueForHDR"

    return-object v0

    .line 249
    :pswitch_1c
    const-string/jumbo v0, "setOnPixelRatioValueForPMS"

    return-object v0

    .line 245
    :pswitch_20
    const-string/jumbo v0, "setMultipleScreenBrightness"

    return-object v0

    .line 241
    :pswitch_24
    const-string/jumbo v0, "setScreenBrightnessForPreview"

    return-object v0

    .line 237
    :pswitch_28
    const-string/jumbo v0, "setMdnieScenarioControlServiceEnable"

    return-object v0

    .line 233
    :pswitch_2c
    const-string/jumbo v0, "setAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 229
    :pswitch_30
    const-string/jumbo v0, "setDouAppModeEnable"

    return-object v0

    .line 225
    :pswitch_34
    const-string/jumbo v0, "setGalleryModeEnable"

    return-object v0

    .line 221
    :pswitch_38
    const-string/jumbo v0, "setVideoModeEnable"

    return-object v0

    .line 217
    :pswitch_3c
    const-string v0, "onBurnInPreventionDisabled"

    return-object v0

    .line 213
    :pswitch_3f
    const-string v0, "onAutoCurrentLimitOffMode"

    return-object v0

    .line 209
    :pswitch_42
    const-string v0, "onAutoCurrentLimitStateChangedInt"

    return-object v0

    .line 205
    :pswitch_45
    const-string v0, "onAutoCurrentLimitStateChangedWithBrightness"

    return-object v0

    .line 201
    :pswitch_48
    const-string v0, "onAutoCurrentLimitStateChanged"

    return-object v0

    .line 197
    :pswitch_4b
    const-string v0, "onDetailVeiwStateChanged"

    return-object v0

    .line 193
    :pswitch_4e
    const-string/jumbo v0, "setIRCompensationMode"

    return-object v0

    .line 189
    :pswitch_52
    const-string/jumbo v0, "setHighDynamicRangeMode"

    return-object v0

    .line 185
    :pswitch_56
    const-string v0, "isMdnieScenarioControlServiceEnabled"

    return-object v0

    .line 181
    :pswitch_59
    const-string v0, "getAlphaMaskLevel"

    return-object v0

    .line 177
    :pswitch_5c
    const-string v0, "getFingerPrintBacklightValue"

    return-object v0

    .line 173
    :pswitch_5f
    const-string v0, "getVideoEnhancerSettingState"

    return-object v0

    .line 169
    :pswitch_62
    const-string v0, "getOnPixelRatioValueForPMS"

    return-object v0

    .line 165
    :pswitch_65
    const-string v0, "getAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 161
    :pswitch_68
    const-string v0, "getDouAppModeEnable"

    return-object v0

    .line 157
    :pswitch_6b
    const-string v0, "getGalleryModeEnable"

    return-object v0

    .line 153
    :pswitch_6e
    const-string v0, "getVideoModeEnable"

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
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
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
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 144
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1136
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 284
    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    .line 289
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 290
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 289
    :cond_16
    move-object/from16 v12, p2

    .line 292
    :goto_18
    packed-switch v8, :pswitch_data_20c

    .line 300
    packed-switch v8, :pswitch_data_212

    .line 586
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 296
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    return v11

    .line 579
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isBlueLightFilterScheduledTime()Z

    move-result v0

    .line 580
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 582
    goto/16 :goto_20b

    .line 569
    .end local v0    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 571
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 572
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setBlfEnableTimeBySchedule(ZI)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_20b

    .line 554
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 556
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 558
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 560
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 561
    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setSleepPatternBLF(Ljava/lang/String;JJF)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_20b

    .line 543
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":F
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_20b

    .line 534
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 535
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEyeComfortWeightingFactor(F)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_20b

    .line 525
    .end local v0    # "_arg0":F
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 526
    .restart local v0    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightnessValueForHDR(F)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_20b

    .line 516
    .end local v0    # "_arg0":F
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_20b

    .line 507
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_20b

    .line 498
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 499
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setScreenBrightnessForPreview(I)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_20b

    .line 489
    .end local v0    # "_arg0":I
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 490
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMdnieScenarioControlServiceEnable(Z)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_20b

    .line 480
    .end local v0    # "_arg0":Z
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 481
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto/16 :goto_20b

    .line 471
    .end local v0    # "_arg0":Z
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 472
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setDouAppModeEnable(Z)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_20b

    .line 462
    .end local v0    # "_arg0":Z
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 463
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setGalleryModeEnable(Z)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_20b

    .line 453
    .end local v0    # "_arg0":Z
    :pswitch_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 454
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoModeEnable(Z)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_20b

    .line 444
    .end local v0    # "_arg0":Z
    :pswitch_112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 445
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onBurnInPreventionDisabled(Z)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    goto/16 :goto_20b

    .line 435
    .end local v0    # "_arg0":Z
    :pswitch_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 436
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitOffMode(Z)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto/16 :goto_20b

    .line 426
    .end local v0    # "_arg0":Z
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedInt(I)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_20b

    .line 417
    .end local v0    # "_arg0":I
    :pswitch_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 418
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_20b

    .line 408
    .end local v0    # "_arg0":Z
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 409
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChanged(Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_20b

    .line 399
    .end local v0    # "_arg0":Z
    :pswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 400
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onDetailVeiwStateChanged(Z)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_20b

    .line 390
    .end local v0    # "_arg0":Z
    :pswitch_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 391
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setIRCompensationMode(Z)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto/16 :goto_20b

    .line 381
    .end local v0    # "_arg0":Z
    :pswitch_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 382
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setHighDynamicRangeMode(Z)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    goto/16 :goto_20b

    .line 373
    .end local v0    # "_arg0":Z
    :pswitch_18a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    .line 374
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 376
    goto/16 :goto_20b

    .line 360
    .end local v0    # "_result":Z
    :pswitch_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 362
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 364
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 365
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAlphaMaskLevel(FFF)F

    move-result v3

    .line 367
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 369
    goto :goto_20b

    .line 350
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":F
    :pswitch_1b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getFingerPrintBacklightValue(I)F

    move-result v1

    .line 353
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 355
    goto :goto_20b

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v1

    .line 343
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    goto :goto_20b

    .line 332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1d4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    goto :goto_20b

    .line 325
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1df
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    .line 326
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto :goto_20b

    .line 318
    .end local v0    # "_result":Z
    :pswitch_1ea
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDouAppModeEnable()Z

    move-result v0

    .line 319
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto :goto_20b

    .line 311
    .end local v0    # "_result":Z
    :pswitch_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getGalleryModeEnable()Z

    move-result v0

    .line 312
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto :goto_20b

    .line 304
    .end local v0    # "_result":Z
    :pswitch_200
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoModeEnable()Z

    move-result v0

    .line 305
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    nop

    .line 589
    .end local v0    # "_result":Z
    :goto_20b
    return v11

    :pswitch_data_20c
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_200
        :pswitch_1f5
        :pswitch_1ea
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c2
        :pswitch_1b0
        :pswitch_196
        :pswitch_18a
        :pswitch_17b
        :pswitch_16c
        :pswitch_15d
        :pswitch_14e
        :pswitch_13f
        :pswitch_130
        :pswitch_121
        :pswitch_112
        :pswitch_103
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_c7
        :pswitch_b8
        :pswitch_a9
        :pswitch_9a
        :pswitch_8b
        :pswitch_7c
        :pswitch_69
        :pswitch_46
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method
