.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final blacklist TRANSACTION_acquireLowRefreshRateToken:I = 0x4e

.field static final blacklist TRANSACTION_acquireRefreshRateMaxLimitToken:I = 0x4f

.field static final blacklist TRANSACTION_acquireRefreshRateMinLimitToken:I = 0x50

.field static final blacklist TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_connectWifiDisplay:I = 0x8

.field static final blacklist TRANSACTION_connectWifiDisplayWithConfig:I = 0x1a

.field static final blacklist TRANSACTION_convertToBrightness:I = 0x4b

.field static final greylist-max-o TRANSACTION_createVirtualDisplay:I = 0x14

.field static final greylist-max-o TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final blacklist TRANSACTION_fitToActiveDisplay:I = 0x28

.field static final greylist-max-o TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_getAmbientBrightnessStats:I = 0x30

.field static final blacklist TRANSACTION_getBackupBrightnessConfiguration:I = 0x4a

.field static final blacklist TRANSACTION_getBrightness:I = 0x39

.field static final blacklist TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x33

.field static final greylist-max-o TRANSACTION_getBrightnessConfigurationForUser:I = 0x34

.field static final greylist-max-o TRANSACTION_getBrightnessEvents:I = 0x2f

.field static final blacklist TRANSACTION_getBrightnessInfo:I = 0x3c

.field static final greylist-max-o TRANSACTION_getDefaultBrightnessConfiguration:I = 0x35

.field static final blacklist TRANSACTION_getDeviceMaxVolume:I = 0x26

.field static final blacklist TRANSACTION_getDeviceMinVolume:I = 0x24

.field static final blacklist TRANSACTION_getDisplayDecorationSupport:I = 0x45

.field static final greylist-max-o TRANSACTION_getDisplayIds:I = 0x2

.field static final greylist-max-o TRANSACTION_getDisplayInfo:I = 0x1

.field static final blacklist TRANSACTION_getDlnaDevice:I = 0x20

.field static final blacklist TRANSACTION_getMaximumBrightnessCurve:I = 0x4c

.field static final greylist-max-o TRANSACTION_getMinimumBrightnessCurve:I = 0x3b

.field static final blacklist TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x3d

.field static final blacklist TRANSACTION_getPresentationOwner:I = 0x2a

.field static final blacklist TRANSACTION_getPrimaryPhysicalDisplayId:I = 0x51

.field static final blacklist TRANSACTION_getRefreshRateSwitchingType:I = 0x44

.field static final blacklist TRANSACTION_getScreenSharingStatus:I = 0x1d

.field static final greylist-max-o TRANSACTION_getStableDisplaySize:I = 0x2e

.field static final blacklist TRANSACTION_getSystemPreferredDisplayMode:I = 0x40

.field static final blacklist TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final blacklist TRANSACTION_getUserPreferredDisplayMode:I = 0x3f

.field static final greylist-max-o TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final blacklist TRANSACTION_isDeviceVolumeMuted:I = 0x25

.field static final blacklist TRANSACTION_isFitToActiveDisplay:I = 0x29

.field static final blacklist TRANSACTION_isMinimalPostProcessingRequested:I = 0x36

.field static final blacklist TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final blacklist TRANSACTION_isWifiDisplayWithPinSupported:I = 0x27

.field static final greylist-max-o TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final greylist-max-o TRANSACTION_releaseVirtualDisplay:I = 0x17

.field static final greylist-max-o TRANSACTION_renameWifiDisplay:I = 0xa

.field static final greylist-max-o TRANSACTION_requestColorMode:I = 0x13

.field static final blacklist TRANSACTION_requestSetWifiDisplayParameters:I = 0x2c

.field static final blacklist TRANSACTION_requestWifiDisplayParameter:I = 0x2d

.field static final blacklist TRANSACTION_resetBrightnessConfigurationForUser:I = 0x47

.field static final greylist-max-o TRANSACTION_resizeVirtualDisplay:I = 0x15

.field static final greylist-max-o TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final blacklist TRANSACTION_rotateVirtualDisplay:I = 0x19

.field static final blacklist TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final blacklist TRANSACTION_setBackupBrightnessConfiguration:I = 0x49

.field static final blacklist TRANSACTION_setBrightness:I = 0x38

.field static final blacklist TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x32

.field static final greylist-max-o TRANSACTION_setBrightnessConfigurationForUser:I = 0x31

.field static final blacklist TRANSACTION_setBrightnessConfigurationForUserWithStats:I = 0x46

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0x21

.field static final blacklist TRANSACTION_setDeviceVolumeMuted:I = 0x22

.field static final blacklist TRANSACTION_setDisplayStateLimit:I = 0x4d

.field static final blacklist TRANSACTION_setDlnaDevice:I = 0x1f

.field static final blacklist TRANSACTION_setRefreshRateSwitchingType:I = 0x43

.field static final blacklist TRANSACTION_setScreenSharingStatus:I = 0x1e

.field static final blacklist TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x41

.field static final greylist-max-o TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x3a

.field static final greylist-max-o TRANSACTION_setTemporaryBrightness:I = 0x37

.field static final blacklist TRANSACTION_setTemporaryBrightnessForSlowChange:I = 0x48

.field static final blacklist TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final blacklist TRANSACTION_setUserPreferredDisplayMode:I = 0x3e

.field static final blacklist TRANSACTION_setVirtualDisplayState:I = 0x18

.field static final greylist-max-o TRANSACTION_setVirtualDisplaySurface:I = 0x16

.field static final blacklist TRANSACTION_setVolumeKeyEvent:I = 0x23

.field static final blacklist TRANSACTION_setWifiDisplayParam:I = 0x2b

.field static final blacklist TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x42

.field static final blacklist TRANSACTION_startWifiDisplayChannelScan:I = 0x1b

.field static final blacklist TRANSACTION_startWifiDisplayChannelScanAndInterval:I = 0x1c

.field static final greylist-max-o TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final greylist-max-o TRANSACTION_stopWifiDisplayScan:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 372
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 373
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 381
    if-nez p0, :cond_4

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 385
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_14

    .line 386
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 388
    :cond_14
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 397
    packed-switch p0, :pswitch_data_120

    .line 725
    const/4 v0, 0x0

    return-object v0

    .line 721
    :pswitch_5
    const-string v0, "getPrimaryPhysicalDisplayId"

    return-object v0

    .line 717
    :pswitch_8
    const-string v0, "acquireRefreshRateMinLimitToken"

    return-object v0

    .line 713
    :pswitch_b
    const-string v0, "acquireRefreshRateMaxLimitToken"

    return-object v0

    .line 709
    :pswitch_e
    const-string v0, "acquireLowRefreshRateToken"

    return-object v0

    .line 705
    :pswitch_11
    const-string/jumbo v0, "setDisplayStateLimit"

    return-object v0

    .line 701
    :pswitch_15
    const-string v0, "getMaximumBrightnessCurve"

    return-object v0

    .line 697
    :pswitch_18
    const-string v0, "convertToBrightness"

    return-object v0

    .line 693
    :pswitch_1b
    const-string v0, "getBackupBrightnessConfiguration"

    return-object v0

    .line 689
    :pswitch_1e
    const-string/jumbo v0, "setBackupBrightnessConfiguration"

    return-object v0

    .line 685
    :pswitch_22
    const-string/jumbo v0, "setTemporaryBrightnessForSlowChange"

    return-object v0

    .line 681
    :pswitch_26
    const-string/jumbo v0, "resetBrightnessConfigurationForUser"

    return-object v0

    .line 677
    :pswitch_2a
    const-string/jumbo v0, "setBrightnessConfigurationForUserWithStats"

    return-object v0

    .line 673
    :pswitch_2e
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    .line 669
    :pswitch_31
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    .line 665
    :pswitch_34
    const-string/jumbo v0, "setRefreshRateSwitchingType"

    return-object v0

    .line 661
    :pswitch_38
    const-string/jumbo v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 657
    :pswitch_3c
    const-string/jumbo v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 653
    :pswitch_40
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    .line 649
    :pswitch_43
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    .line 645
    :pswitch_46
    const-string/jumbo v0, "setUserPreferredDisplayMode"

    return-object v0

    .line 641
    :pswitch_4a
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    .line 637
    :pswitch_4d
    const-string v0, "getBrightnessInfo"

    return-object v0

    .line 633
    :pswitch_50
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    .line 629
    :pswitch_53
    const-string/jumbo v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    .line 625
    :pswitch_57
    const-string v0, "getBrightness"

    return-object v0

    .line 621
    :pswitch_5a
    const-string/jumbo v0, "setBrightness"

    return-object v0

    .line 617
    :pswitch_5e
    const-string/jumbo v0, "setTemporaryBrightness"

    return-object v0

    .line 613
    :pswitch_62
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    .line 609
    :pswitch_65
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    .line 605
    :pswitch_68
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    .line 601
    :pswitch_6b
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    .line 597
    :pswitch_6e
    const-string/jumbo v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    .line 593
    :pswitch_72
    const-string/jumbo v0, "setBrightnessConfigurationForUser"

    return-object v0

    .line 589
    :pswitch_76
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    .line 585
    :pswitch_79
    const-string v0, "getBrightnessEvents"

    return-object v0

    .line 581
    :pswitch_7c
    const-string v0, "getStableDisplaySize"

    return-object v0

    .line 577
    :pswitch_7f
    const-string/jumbo v0, "requestWifiDisplayParameter"

    return-object v0

    .line 573
    :pswitch_83
    const-string/jumbo v0, "requestSetWifiDisplayParameters"

    return-object v0

    .line 569
    :pswitch_87
    const-string/jumbo v0, "setWifiDisplayParam"

    return-object v0

    .line 565
    :pswitch_8b
    const-string v0, "getPresentationOwner"

    return-object v0

    .line 561
    :pswitch_8e
    const-string v0, "isFitToActiveDisplay"

    return-object v0

    .line 557
    :pswitch_91
    const-string v0, "fitToActiveDisplay"

    return-object v0

    .line 553
    :pswitch_94
    const-string v0, "isWifiDisplayWithPinSupported"

    return-object v0

    .line 549
    :pswitch_97
    const-string v0, "getDeviceMaxVolume"

    return-object v0

    .line 545
    :pswitch_9a
    const-string v0, "isDeviceVolumeMuted"

    return-object v0

    .line 541
    :pswitch_9d
    const-string v0, "getDeviceMinVolume"

    return-object v0

    .line 537
    :pswitch_a0
    const-string/jumbo v0, "setVolumeKeyEvent"

    return-object v0

    .line 533
    :pswitch_a4
    const-string/jumbo v0, "setDeviceVolumeMuted"

    return-object v0

    .line 529
    :pswitch_a8
    const-string/jumbo v0, "setDeviceVolume"

    return-object v0

    .line 525
    :pswitch_ac
    const-string v0, "getDlnaDevice"

    return-object v0

    .line 521
    :pswitch_af
    const-string/jumbo v0, "setDlnaDevice"

    return-object v0

    .line 517
    :pswitch_b3
    const-string/jumbo v0, "setScreenSharingStatus"

    return-object v0

    .line 513
    :pswitch_b7
    const-string v0, "getScreenSharingStatus"

    return-object v0

    .line 509
    :pswitch_ba
    const-string/jumbo v0, "startWifiDisplayChannelScanAndInterval"

    return-object v0

    .line 505
    :pswitch_be
    const-string/jumbo v0, "startWifiDisplayChannelScan"

    return-object v0

    .line 501
    :pswitch_c2
    const-string v0, "connectWifiDisplayWithConfig"

    return-object v0

    .line 497
    :pswitch_c5
    const-string/jumbo v0, "rotateVirtualDisplay"

    return-object v0

    .line 493
    :pswitch_c9
    const-string/jumbo v0, "setVirtualDisplayState"

    return-object v0

    .line 489
    :pswitch_cd
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    .line 485
    :pswitch_d1
    const-string/jumbo v0, "setVirtualDisplaySurface"

    return-object v0

    .line 481
    :pswitch_d5
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    .line 477
    :pswitch_d9
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 473
    :pswitch_dc
    const-string/jumbo v0, "requestColorMode"

    return-object v0

    .line 469
    :pswitch_e0
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    .line 465
    :pswitch_e3
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    .line 461
    :pswitch_e6
    const-string/jumbo v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    .line 457
    :pswitch_ea
    const-string/jumbo v0, "setUserDisabledHdrTypes"

    return-object v0

    .line 453
    :pswitch_ee
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    .line 449
    :pswitch_f1
    const-string/jumbo v0, "resumeWifiDisplay"

    return-object v0

    .line 445
    :pswitch_f5
    const-string/jumbo v0, "pauseWifiDisplay"

    return-object v0

    .line 441
    :pswitch_f9
    const-string v0, "forgetWifiDisplay"

    return-object v0

    .line 437
    :pswitch_fc
    const-string/jumbo v0, "renameWifiDisplay"

    return-object v0

    .line 433
    :pswitch_100
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    .line 429
    :pswitch_103
    const-string v0, "connectWifiDisplay"

    return-object v0

    .line 425
    :pswitch_106
    const-string/jumbo v0, "stopWifiDisplayScan"

    return-object v0

    .line 421
    :pswitch_10a
    const-string/jumbo v0, "startWifiDisplayScan"

    return-object v0

    .line 417
    :pswitch_10e
    const-string/jumbo v0, "registerCallbackWithEventMask"

    return-object v0

    .line 413
    :pswitch_112
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 409
    :pswitch_116
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    .line 405
    :pswitch_119
    const-string v0, "getDisplayIds"

    return-object v0

    .line 401
    :pswitch_11c
    const-string v0, "getDisplayInfo"

    return-object v0

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_112
        :pswitch_10e
        :pswitch_10a
        :pswitch_106
        :pswitch_103
        :pswitch_100
        :pswitch_fc
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dc
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
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

    .line 392
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3063
    const/16 v0, 0x50

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 732
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 736
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.hardware.display.IDisplayManager"

    .line 737
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 738
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    :cond_15
    packed-switch v8, :pswitch_data_5e2

    .line 748
    packed-switch v8, :pswitch_data_5e8

    .line 1536
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 744
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    return v12

    .line 1529
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    .line 1530
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1532
    goto/16 :goto_5e0

    .line 1516
    .end local v0    # "_result":J
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1518
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v3

    .line 1523
    .local v3, "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1525
    goto/16 :goto_5e0

    .line 1502
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1504
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1506
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1507
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v3

    .line 1509
    .restart local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1511
    goto/16 :goto_5e0

    .line 1490
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1492
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v2

    .line 1495
    .local v2, "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1497
    goto/16 :goto_5e0

    .line 1479
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1481
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1482
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1483
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    goto/16 :goto_5e0

    .line 1471
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_90
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMaximumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1472
    .local v0, "_result":Landroid/hardware/display/Curve;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1474
    goto/16 :goto_5e0

    .line 1462
    .end local v0    # "_result":Landroid/hardware/display/Curve;
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1463
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->convertToBrightness(F)I

    move-result v1

    .line 1465
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    goto/16 :goto_5e0

    .line 1452
    .end local v0    # "_arg0":F
    .end local v1    # "_result":I
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1453
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1455
    .local v1, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1457
    goto/16 :goto_5e0

    .line 1439
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_c2
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1441
    .local v0, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1444
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    goto/16 :goto_5e0

    .line 1428
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1430
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1431
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightnessForSlowChange(FZ)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_5e0

    .line 1417
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":Z
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1419
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    goto/16 :goto_5e0

    .line 1398
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_103
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/display/BrightnessConfiguration;

    .line 1400
    .local v13, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1402
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1404
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1406
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1408
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 1409
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    goto/16 :goto_5e0

    .line 1388
    .end local v13    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1389
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v1

    .line 1391
    .local v1, "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1393
    goto/16 :goto_5e0

    .line 1380
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    :pswitch_149
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v0

    .line 1381
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    goto/16 :goto_5e0

    .line 1372
    .end local v0    # "_result":I
    :pswitch_155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1373
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    goto/16 :goto_5e0

    .line 1364
    .end local v0    # "_arg0":I
    :pswitch_164
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    .line 1365
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1367
    goto/16 :goto_5e0

    .line 1356
    .end local v0    # "_result":Z
    :pswitch_170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1357
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    goto/16 :goto_5e0

    .line 1346
    .end local v0    # "_arg0":Z
    :pswitch_17f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1347
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v1

    .line 1349
    .local v1, "_result":Landroid/view/Display$Mode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1351
    goto/16 :goto_5e0

    .line 1336
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/Display$Mode;
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1337
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v1

    .line 1339
    .restart local v1    # "_result":Landroid/view/Display$Mode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1341
    goto/16 :goto_5e0

    .line 1325
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/Display$Mode;
    :pswitch_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1327
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$Mode;

    .line 1328
    .local v1, "_arg1":Landroid/view/Display$Mode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    goto/16 :goto_5e0

    .line 1317
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Display$Mode;
    :pswitch_1bc
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v0

    .line 1318
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    goto/16 :goto_5e0

    .line 1308
    .end local v0    # "_result":I
    :pswitch_1c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    .line 1311
    .local v1, "_result":Landroid/hardware/display/BrightnessInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1313
    goto/16 :goto_5e0

    .line 1300
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessInfo;
    :pswitch_1db
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1301
    .local v0, "_result":Landroid/hardware/display/Curve;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1303
    goto/16 :goto_5e0

    .line 1292
    .end local v0    # "_result":Landroid/hardware/display/Curve;
    :pswitch_1e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1293
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    goto/16 :goto_5e0

    .line 1282
    .end local v0    # "_arg0":F
    :pswitch_1f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1283
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v1

    .line 1285
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1287
    goto/16 :goto_5e0

    .line 1271
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1273
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1274
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    goto/16 :goto_5e0

    .line 1260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_21c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1262
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1263
    .restart local v1    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    goto/16 :goto_5e0

    .line 1250
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_22f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1251
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v1

    .line 1253
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    goto/16 :goto_5e0

    .line 1242
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_242
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 1243
    .local v0, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1245
    goto/16 :goto_5e0

    .line 1233
    .end local v0    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_24e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1236
    .local v1, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1238
    goto/16 :goto_5e0

    .line 1221
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1224
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 1226
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1228
    goto/16 :goto_5e0

    .line 1206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_278
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1208
    .local v0, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1212
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    goto/16 :goto_5e0

    .line 1193
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_297
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 1195
    .restart local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1197
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_5e0

    .line 1185
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2b2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1186
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1188
    goto/16 :goto_5e0

    .line 1176
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1179
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1181
    goto/16 :goto_5e0

    .line 1168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2d1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1169
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1171
    goto/16 :goto_5e0

    .line 1157
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_2dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 1160
    .local v1, "_arg1":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1161
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result v2

    .line 1162
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1164
    goto/16 :goto_5e0

    .line 1147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/hardware/display/SemWifiDisplayParameter;
    .end local v2    # "_result":Z
    :pswitch_2f8
    sget-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1148
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result v1

    .line 1150
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1152
    goto/16 :goto_5e0

    .line 1136
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    .end local v1    # "_result":Z
    :pswitch_30d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    goto/16 :goto_5e0

    .line 1126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1127
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1131
    goto/16 :goto_5e0

    .line 1118
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_333
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isFitToActiveDisplay()Z

    move-result v0

    .line 1119
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1121
    goto/16 :goto_5e0

    .line 1110
    .end local v0    # "_result":Z
    :pswitch_33f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1111
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->fitToActiveDisplay(Z)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    goto/16 :goto_5e0

    .line 1100
    .end local v0    # "_arg0":Z
    :pswitch_34e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1103
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1105
    goto/16 :goto_5e0

    .line 1092
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_361
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMaxVolume()I

    move-result v0

    .line 1093
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    goto/16 :goto_5e0

    .line 1085
    .end local v0    # "_result":I
    :pswitch_36d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDeviceVolumeMuted()Z

    move-result v0

    .line 1086
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1088
    goto/16 :goto_5e0

    .line 1078
    .end local v0    # "_result":Z
    :pswitch_379
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDeviceMinVolume()I

    move-result v0

    .line 1079
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    goto/16 :goto_5e0

    .line 1070
    .end local v0    # "_result":I
    :pswitch_385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1071
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVolumeKeyEvent(I)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_5e0

    .line 1061
    .end local v0    # "_arg0":I
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1062
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolumeMuted(Z)V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_5e0

    .line 1052
    .end local v0    # "_arg0":Z
    :pswitch_3a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1053
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setDeviceVolume(I)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    goto/16 :goto_5e0

    .line 1044
    .end local v0    # "_arg0":I
    :pswitch_3b2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    .line 1045
    .local v0, "_result":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1047
    goto/16 :goto_5e0

    .line 1034
    .end local v0    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :pswitch_3be
    sget-object v0, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemDlnaDevice;

    .line 1036
    .local v0, "_arg0":Landroid/hardware/display/SemDlnaDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1037
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    goto/16 :goto_5e0

    .line 1025
    .end local v0    # "_arg0":Landroid/hardware/display/SemDlnaDevice;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_3d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenSharingStatus(I)V

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    goto/16 :goto_5e0

    .line 1017
    .end local v0    # "_arg0":I
    :pswitch_3e4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getScreenSharingStatus()I

    move-result v0

    .line 1018
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    goto/16 :goto_5e0

    .line 1007
    .end local v0    # "_result":I
    :pswitch_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1009
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1010
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayChannelScanAndInterval(II)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_5e0

    .line 998
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayChannelScan(I)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    goto/16 :goto_5e0

    .line 987
    .end local v0    # "_arg0":I
    :pswitch_412
    sget-object v0, Landroid/hardware/display/SemWifiDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemWifiDisplayConfig;

    .line 989
    .local v0, "_arg0":Landroid/hardware/display/SemWifiDisplayConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IWifiDisplayConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IWifiDisplayConnectionCallback;

    move-result-object v1

    .line 990
    .local v1, "_arg1":Landroid/hardware/display/IWifiDisplayConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    goto/16 :goto_5e0

    .line 976
    .end local v0    # "_arg0":Landroid/hardware/display/SemWifiDisplayConfig;
    .end local v1    # "_arg1":Landroid/hardware/display/IWifiDisplayConnectionCallback;
    :pswitch_42d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 978
    .local v0, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    goto/16 :goto_5e0

    .line 965
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":I
    :pswitch_444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 967
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 968
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_5e0

    .line 956
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":Z
    :pswitch_45b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 957
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    goto/16 :goto_5e0

    .line 945
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_46e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 947
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 948
    .local v1, "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    goto/16 :goto_5e0

    .line 930
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 932
    .restart local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 934
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 936
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_5e0

    .line 914
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4a8
    sget-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/VirtualDisplayConfig;

    .line 916
    .local v0, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 918
    .local v1, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 920
    .local v2, "_arg2":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v4

    .line 923
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    goto/16 :goto_5e0

    .line 903
    .end local v0    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v1    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg2":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_4d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 905
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 906
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_5e0

    .line 895
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4e6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v0

    .line 896
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 898
    goto/16 :goto_5e0

    .line 888
    .end local v0    # "_result":[I
    :pswitch_4f2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v0

    .line 889
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 891
    goto/16 :goto_5e0

    .line 880
    .end local v0    # "_result":Z
    :pswitch_4fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 881
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_5e0

    .line 871
    .end local v0    # "_arg0":Z
    :pswitch_50d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 872
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_5e0

    .line 863
    .end local v0    # "_arg0":[I
    :pswitch_51c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 864
    .local v0, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 866
    goto/16 :goto_5e0

    .line 857
    .end local v0    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_528
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    goto/16 :goto_5e0

    .line 851
    :pswitch_530
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_5e0

    .line 843
    :pswitch_538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_5e0

    .line 832
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 834
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_5e0

    .line 825
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_55a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    goto/16 :goto_5e0

    .line 817
    :pswitch_562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 818
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto :goto_5e0

    .line 810
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_570
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto :goto_5e0

    .line 804
    :pswitch_577
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto :goto_5e0

    .line 794
    :pswitch_57e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    .line 796
    .local v0, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 797
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto :goto_5e0

    .line 785
    .end local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    .end local v1    # "_arg1":J
    :pswitch_594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    .line 786
    .restart local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto :goto_5e0

    .line 773
    .end local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_5a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 775
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 776
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v7, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v2

    .line 778
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 780
    goto :goto_5e0

    .line 763
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_5bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 764
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v1

    .line 766
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 768
    goto :goto_5e0

    .line 753
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[I
    :pswitch_5ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {v7, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 756
    .local v1, "_result":Landroid/view/DisplayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 758
    nop

    .line 1539
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/DisplayInfo;
    :goto_5e0
    return v12

    nop

    :pswitch_data_5e2
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_5e8
    .packed-switch 0x1
        :pswitch_5ce
        :pswitch_5bc
        :pswitch_5a6
        :pswitch_594
        :pswitch_57e
        :pswitch_577
        :pswitch_570
        :pswitch_562
        :pswitch_55a
        :pswitch_547
        :pswitch_538
        :pswitch_530
        :pswitch_528
        :pswitch_51c
        :pswitch_50d
        :pswitch_4fe
        :pswitch_4f2
        :pswitch_4e6
        :pswitch_4d3
        :pswitch_4a8
        :pswitch_489
        :pswitch_46e
        :pswitch_45b
        :pswitch_444
        :pswitch_42d
        :pswitch_412
        :pswitch_403
        :pswitch_3f0
        :pswitch_3e4
        :pswitch_3d5
        :pswitch_3be
        :pswitch_3b2
        :pswitch_3a3
        :pswitch_394
        :pswitch_385
        :pswitch_379
        :pswitch_36d
        :pswitch_361
        :pswitch_34e
        :pswitch_33f
        :pswitch_333
        :pswitch_320
        :pswitch_30d
        :pswitch_2f8
        :pswitch_2dd
        :pswitch_2d1
        :pswitch_2be
        :pswitch_2b2
        :pswitch_297
        :pswitch_278
        :pswitch_261
        :pswitch_24e
        :pswitch_242
        :pswitch_22f
        :pswitch_21c
        :pswitch_209
        :pswitch_1f6
        :pswitch_1e7
        :pswitch_1db
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_170
        :pswitch_164
        :pswitch_155
        :pswitch_149
        :pswitch_136
        :pswitch_103
        :pswitch_f0
        :pswitch_dd
        :pswitch_c2
        :pswitch_af
        :pswitch_9c
        :pswitch_90
        :pswitch_7d
        :pswitch_66
        :pswitch_4b
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
