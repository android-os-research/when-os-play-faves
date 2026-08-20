.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x1a

.field static final blacklist TRANSACTION_applyWallpaperColors:I = 0x5a

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0xa

.field static final blacklist TRANSACTION_copyFileToWallpaperFile:I = 0x46

.field static final blacklist TRANSACTION_copyPreloadedFileToWallpaperFile:I = 0x47

.field static final blacklist TRANSACTION_forceRebindWallpaper:I = 0x59

.field static final blacklist TRANSACTION_getAnimatedPkgName:I = 0x40

.field static final blacklist TRANSACTION_getDesktopMode:I = 0x24

.field static final blacklist TRANSACTION_getDeviceColor:I = 0x41

.field static final blacklist TRANSACTION_getDisplayId:I = 0x55

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0xe

.field static final blacklist TRANSACTION_getHighlightFilterState:I = 0x49

.field static final blacklist TRANSACTION_getLastCallingPackage:I = 0x43

.field static final blacklist TRANSACTION_getLegacyDeviceColor:I = 0x42

.field static final blacklist TRANSACTION_getLidState:I = 0x54

.field static final blacklist TRANSACTION_getLockWallpaper:I = 0x7

.field static final blacklist TRANSACTION_getLockWallpaperType:I = 0x27

.field static final blacklist TRANSACTION_getMotionWallpaperPkgName:I = 0x34

.field static final greylist-max-o TRANSACTION_getName:I = 0x10

.field static final blacklist TRANSACTION_getSnapshotCount:I = 0x3d

.field static final blacklist TRANSACTION_getVideoColor:I = 0x31

.field static final blacklist TRANSACTION_getVideoFileName:I = 0x32

.field static final blacklist TRANSACTION_getVideoFilePath:I = 0x2f

.field static final blacklist TRANSACTION_getVideoPackage:I = 0x30

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x5

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x18

.field static final blacklist TRANSACTION_getWallpaperComponentExtras:I = 0x4b

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x21

.field static final blacklist TRANSACTION_getWallpaperExtras:I = 0x4c

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0x9

.field static final blacklist TRANSACTION_getWallpaperOrientation:I = 0x4d

.field static final blacklist TRANSACTION_getWallpaperThumbnailFileDescriptor:I = 0x2e

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x6

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0xd

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0xb

.field static final blacklist TRANSACTION_hasVideoWallpaper:I = 0x2d

.field static final blacklist TRANSACTION_isDefaultWallpaperState:I = 0x2a

.field static final blacklist TRANSACTION_isDesktopMode:I = 0x23

.field static final blacklist TRANSACTION_isDesktopModeEnabled:I = 0x25

.field static final blacklist TRANSACTION_isDesktopStandAloneMode:I = 0x26

.field static final blacklist TRANSACTION_isHomeAndLockPaired:I = 0x48

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x13

.field static final blacklist TRANSACTION_isSnapshotTestMode:I = 0x3b

.field static final blacklist TRANSACTION_isValidSnapshot:I = 0x3f

.field static final blacklist TRANSACTION_isVideoWallpaper:I = 0x2c

.field static final blacklist TRANSACTION_isVirtualWallpaperDisplay:I = 0x56

.field static final blacklist TRANSACTION_isWallpaperBackupAllowed:I = 0x15

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x14

.field static final blacklist TRANSACTION_isWallpaperDataExists:I = 0x5c

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x12

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x22

.field static final blacklist TRANSACTION_makeSnapshot:I = 0x39

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x1f

.field static final blacklist TRANSACTION_notifyPid:I = 0x5b

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x1e

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x1b

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x19

.field static final blacklist TRANSACTION_removeSnapshotByKey:I = 0x37

.field static final blacklist TRANSACTION_removeSnapshotBySource:I = 0x38

.field static final blacklist TRANSACTION_removeSnapshotByWhich:I = 0x36

.field static final blacklist TRANSACTION_restoreSnapshot:I = 0x3a

.field static final blacklist TRANSACTION_semGetPrimaryWallpaperColors:I = 0x4f

.field static final blacklist TRANSACTION_semGetSmartCropRect:I = 0x53

.field static final blacklist TRANSACTION_semGetUri:I = 0x58

.field static final blacklist TRANSACTION_semGetWallpaperColors:I = 0x4e

.field static final blacklist TRANSACTION_semGetWallpaperCropHint:I = 0x29

.field static final blacklist TRANSACTION_semGetWallpaperType:I = 0x28

.field static final blacklist TRANSACTION_semRequestWallpaperColorsAnalysis:I = 0x50

.field static final blacklist TRANSACTION_semSetDLSWallpaperColors:I = 0x51

.field static final blacklist TRANSACTION_semSetSmartCropRect:I = 0x52

.field static final blacklist TRANSACTION_semSetUri:I = 0x57

.field static final blacklist TRANSACTION_setAnimatedWallpaper:I = 0x35

.field static final blacklist TRANSACTION_setCoverWallpaperCallback:I = 0x17

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0xc

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0xf

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x1d

.field static final blacklist TRANSACTION_setKWPTypeLiveWallpaper:I = 0x44

.field static final blacklist TRANSACTION_setKWPTypeLiveWallpaperWithMode:I = 0x45

.field static final greylist-max-o TRANSACTION_setLockWallpaperCallback:I = 0x16

.field static final blacklist TRANSACTION_setMotionWallpaper:I = 0x33

.field static final blacklist TRANSACTION_setSnapshotSource:I = 0x3e

.field static final blacklist TRANSACTION_setSnapshotTestMode:I = 0x3c

.field static final blacklist TRANSACTION_setVideoWallpaper:I = 0x2b

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x4

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x3

.field static final blacklist TRANSACTION_setWallpaperComponentWithExtras:I = 0x4a

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x20

.field static final blacklist TRANSACTION_setWallpaperWithExtras:I = 0x2

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0x11

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x1c


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 493
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 494
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 502
    if-nez p0, :cond_4

    .line 503
    const/4 v0, 0x0

    return-object v0

    .line 505
    :cond_4
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 506
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_14

    .line 507
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    .line 509
    :cond_14
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 518
    packed-switch p0, :pswitch_data_142

    .line 890
    const/4 v0, 0x0

    return-object v0

    .line 886
    :pswitch_5
    const-string v0, "isWallpaperDataExists"

    return-object v0

    .line 882
    :pswitch_8
    const-string/jumbo v0, "notifyPid"

    return-object v0

    .line 878
    :pswitch_c
    const-string v0, "applyWallpaperColors"

    return-object v0

    .line 874
    :pswitch_f
    const-string v0, "forceRebindWallpaper"

    return-object v0

    .line 870
    :pswitch_12
    const-string/jumbo v0, "semGetUri"

    return-object v0

    .line 866
    :pswitch_16
    const-string/jumbo v0, "semSetUri"

    return-object v0

    .line 862
    :pswitch_1a
    const-string v0, "isVirtualWallpaperDisplay"

    return-object v0

    .line 858
    :pswitch_1d
    const-string v0, "getDisplayId"

    return-object v0

    .line 854
    :pswitch_20
    const-string v0, "getLidState"

    return-object v0

    .line 850
    :pswitch_23
    const-string/jumbo v0, "semGetSmartCropRect"

    return-object v0

    .line 846
    :pswitch_27
    const-string/jumbo v0, "semSetSmartCropRect"

    return-object v0

    .line 842
    :pswitch_2b
    const-string/jumbo v0, "semSetDLSWallpaperColors"

    return-object v0

    .line 838
    :pswitch_2f
    const-string/jumbo v0, "semRequestWallpaperColorsAnalysis"

    return-object v0

    .line 834
    :pswitch_33
    const-string/jumbo v0, "semGetPrimaryWallpaperColors"

    return-object v0

    .line 830
    :pswitch_37
    const-string/jumbo v0, "semGetWallpaperColors"

    return-object v0

    .line 826
    :pswitch_3b
    const-string v0, "getWallpaperOrientation"

    return-object v0

    .line 822
    :pswitch_3e
    const-string v0, "getWallpaperExtras"

    return-object v0

    .line 818
    :pswitch_41
    const-string v0, "getWallpaperComponentExtras"

    return-object v0

    .line 814
    :pswitch_44
    const-string/jumbo v0, "setWallpaperComponentWithExtras"

    return-object v0

    .line 810
    :pswitch_48
    const-string v0, "getHighlightFilterState"

    return-object v0

    .line 806
    :pswitch_4b
    const-string v0, "isHomeAndLockPaired"

    return-object v0

    .line 802
    :pswitch_4e
    const-string v0, "copyPreloadedFileToWallpaperFile"

    return-object v0

    .line 798
    :pswitch_51
    const-string v0, "copyFileToWallpaperFile"

    return-object v0

    .line 794
    :pswitch_54
    const-string/jumbo v0, "setKWPTypeLiveWallpaperWithMode"

    return-object v0

    .line 790
    :pswitch_58
    const-string/jumbo v0, "setKWPTypeLiveWallpaper"

    return-object v0

    .line 786
    :pswitch_5c
    const-string v0, "getLastCallingPackage"

    return-object v0

    .line 782
    :pswitch_5f
    const-string v0, "getLegacyDeviceColor"

    return-object v0

    .line 778
    :pswitch_62
    const-string v0, "getDeviceColor"

    return-object v0

    .line 774
    :pswitch_65
    const-string v0, "getAnimatedPkgName"

    return-object v0

    .line 770
    :pswitch_68
    const-string v0, "isValidSnapshot"

    return-object v0

    .line 766
    :pswitch_6b
    const-string/jumbo v0, "setSnapshotSource"

    return-object v0

    .line 762
    :pswitch_6f
    const-string v0, "getSnapshotCount"

    return-object v0

    .line 758
    :pswitch_72
    const-string/jumbo v0, "setSnapshotTestMode"

    return-object v0

    .line 754
    :pswitch_76
    const-string v0, "isSnapshotTestMode"

    return-object v0

    .line 750
    :pswitch_79
    const-string/jumbo v0, "restoreSnapshot"

    return-object v0

    .line 746
    :pswitch_7d
    const-string/jumbo v0, "makeSnapshot"

    return-object v0

    .line 742
    :pswitch_81
    const-string/jumbo v0, "removeSnapshotBySource"

    return-object v0

    .line 738
    :pswitch_85
    const-string/jumbo v0, "removeSnapshotByKey"

    return-object v0

    .line 734
    :pswitch_89
    const-string/jumbo v0, "removeSnapshotByWhich"

    return-object v0

    .line 730
    :pswitch_8d
    const-string/jumbo v0, "setAnimatedWallpaper"

    return-object v0

    .line 726
    :pswitch_91
    const-string v0, "getMotionWallpaperPkgName"

    return-object v0

    .line 722
    :pswitch_94
    const-string/jumbo v0, "setMotionWallpaper"

    return-object v0

    .line 718
    :pswitch_98
    const-string v0, "getVideoFileName"

    return-object v0

    .line 714
    :pswitch_9b
    const-string v0, "getVideoColor"

    return-object v0

    .line 710
    :pswitch_9e
    const-string v0, "getVideoPackage"

    return-object v0

    .line 706
    :pswitch_a1
    const-string v0, "getVideoFilePath"

    return-object v0

    .line 702
    :pswitch_a4
    const-string v0, "getWallpaperThumbnailFileDescriptor"

    return-object v0

    .line 698
    :pswitch_a7
    const-string v0, "hasVideoWallpaper"

    return-object v0

    .line 694
    :pswitch_aa
    const-string v0, "isVideoWallpaper"

    return-object v0

    .line 690
    :pswitch_ad
    const-string/jumbo v0, "setVideoWallpaper"

    return-object v0

    .line 686
    :pswitch_b1
    const-string v0, "isDefaultWallpaperState"

    return-object v0

    .line 682
    :pswitch_b4
    const-string/jumbo v0, "semGetWallpaperCropHint"

    return-object v0

    .line 678
    :pswitch_b8
    const-string/jumbo v0, "semGetWallpaperType"

    return-object v0

    .line 674
    :pswitch_bc
    const-string v0, "getLockWallpaperType"

    return-object v0

    .line 670
    :pswitch_bf
    const-string v0, "isDesktopStandAloneMode"

    return-object v0

    .line 666
    :pswitch_c2
    const-string v0, "isDesktopModeEnabled"

    return-object v0

    .line 662
    :pswitch_c5
    const-string v0, "getDesktopMode"

    return-object v0

    .line 658
    :pswitch_c8
    const-string v0, "isDesktopMode"

    return-object v0

    .line 654
    :pswitch_cb
    const-string v0, "lockScreenWallpaperExists"

    return-object v0

    .line 650
    :pswitch_ce
    const-string v0, "getWallpaperDimAmount"

    return-object v0

    .line 646
    :pswitch_d1
    const-string/jumbo v0, "setWallpaperDimAmount"

    return-object v0

    .line 642
    :pswitch_d5
    const-string/jumbo v0, "notifyGoingToSleep"

    return-object v0

    .line 638
    :pswitch_d9
    const-string/jumbo v0, "notifyWakingUp"

    return-object v0

    .line 634
    :pswitch_dd
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 630
    :pswitch_e1
    const-string/jumbo v0, "unregisterWallpaperColorsCallback"

    return-object v0

    .line 626
    :pswitch_e5
    const-string/jumbo v0, "registerWallpaperColorsCallback"

    return-object v0

    .line 622
    :pswitch_e9
    const-string v0, "addOnLocalColorsChangedListener"

    return-object v0

    .line 618
    :pswitch_ec
    const-string/jumbo v0, "removeOnLocalColorsChangedListener"

    return-object v0

    .line 614
    :pswitch_f0
    const-string v0, "getWallpaperColors"

    return-object v0

    .line 610
    :pswitch_f3
    const-string/jumbo v0, "setCoverWallpaperCallback"

    return-object v0

    .line 606
    :pswitch_f7
    const-string/jumbo v0, "setLockWallpaperCallback"

    return-object v0

    .line 602
    :pswitch_fb
    const-string v0, "isWallpaperBackupAllowed"

    return-object v0

    .line 598
    :pswitch_fe
    const-string v0, "isWallpaperBackupEligible"

    return-object v0

    .line 594
    :pswitch_101
    const-string v0, "isSetWallpaperAllowed"

    return-object v0

    .line 590
    :pswitch_104
    const-string v0, "isWallpaperSupported"

    return-object v0

    .line 586
    :pswitch_107
    const-string/jumbo v0, "settingsRestored"

    return-object v0

    .line 582
    :pswitch_10b
    const-string v0, "getName"

    return-object v0

    .line 578
    :pswitch_10e
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 574
    :pswitch_112
    const-string v0, "getHeightHint"

    return-object v0

    .line 570
    :pswitch_115
    const-string v0, "getWidthHint"

    return-object v0

    .line 566
    :pswitch_118
    const-string/jumbo v0, "setDimensionHints"

    return-object v0

    .line 562
    :pswitch_11c
    const-string v0, "hasNamedWallpaper"

    return-object v0

    .line 558
    :pswitch_11f
    const-string v0, "clearWallpaper"

    return-object v0

    .line 554
    :pswitch_122
    const-string v0, "getWallpaperInfo"

    return-object v0

    .line 550
    :pswitch_125
    const-string v0, "getWallpaperIdForUser"

    return-object v0

    .line 546
    :pswitch_128
    const-string v0, "getLockWallpaper"

    return-object v0

    .line 542
    :pswitch_12b
    const-string v0, "getWallpaperWithFeature"

    return-object v0

    .line 538
    :pswitch_12e
    const-string v0, "getWallpaper"

    return-object v0

    .line 534
    :pswitch_131
    const-string/jumbo v0, "setWallpaperComponent"

    return-object v0

    .line 530
    :pswitch_135
    const-string/jumbo v0, "setWallpaperComponentChecked"

    return-object v0

    .line 526
    :pswitch_139
    const-string/jumbo v0, "setWallpaperWithExtras"

    return-object v0

    .line 522
    :pswitch_13d
    const-string/jumbo v0, "setWallpaper"

    return-object v0

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10e
        :pswitch_10b
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f7
        :pswitch_f3
        :pswitch_f0
        :pswitch_ec
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 513
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3898
    const/16 v0, 0x5b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 897
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.app.IWallpaperManager"

    .line 902
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    .line 903
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    :cond_15
    packed-switch v13, :pswitch_data_9fa

    .line 913
    packed-switch v13, :pswitch_data_a00

    .line 1988
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 909
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    return v10

    .line 1977
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1979
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1980
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1981
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperDataExists(II)Z

    move-result v2

    .line 1982
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1984
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1962
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1966
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1968
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1969
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1970
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->notifyPid(IILjava/lang/String;Z)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1944
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1945
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1947
    .local v7, "_arg0":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1949
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1951
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1953
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1954
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->applyWallpaperColors(Ljava/util/List;IIILjava/lang/String;)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1933
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "_arg0":Ljava/util/List;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1935
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1936
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1937
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->forceRebindWallpaper(II)V

    .line 1938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1921
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1923
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1924
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1925
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semGetUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1928
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1902
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1904
    .local v9, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1906
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1908
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1910
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1912
    .local v19, "_arg5":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 1913
    .local v20, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->semSetUri(Ljava/lang/String;ZIILjava/lang/String;ILandroid/os/Bundle;)V

    .line 1915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1890
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/Bundle;
    :pswitch_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1891
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1892
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isVirtualWallpaperDisplay(I)Z

    move-result v1

    .line 1893
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1895
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1880
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1881
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1882
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getDisplayId(I)I

    move-result v1

    .line 1883
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1872
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_129
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLidState()I

    move-result v0

    .line 1873
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1863
    .end local v0    # "_result":I
    :pswitch_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1864
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1865
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetSmartCropRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1866
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1867
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1868
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1850
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1852
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1854
    .local v1, "_arg1":Landroid/graphics/Rect;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1855
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1839
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_170
    sget-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 1841
    .local v0, "_arg0":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1842
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1843
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 1844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1845
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1828
    .end local v0    # "_arg0":Landroid/app/SemWallpaperColors;
    .end local v1    # "_arg1":I
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1830
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1832
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->semRequestWallpaperColorsAnalysis(ILjava/lang/String;)V

    .line 1833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1818
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1819
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1820
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetPrimaryWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1821
    .local v1, "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1823
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1808
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_1b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1809
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 1811
    .restart local v1    # "_result":Landroid/app/SemWallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1813
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1796
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/SemWallpaperColors;
    :pswitch_1cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1798
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1799
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1800
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperOrientation(II)I

    move-result v2

    .line 1801
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1803
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1784
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1786
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1787
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1788
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1789
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1791
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1772
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1774
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1775
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperComponentExtras(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1777
    .restart local v2    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1779
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1755
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_21a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1757
    .local v6, "_arg0":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ComponentName;

    .line 1759
    .local v7, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1761
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1763
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1764
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1765
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentWithExtras(ILandroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1745
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_24f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1746
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHighlightFilterState(I)I

    move-result v1

    .line 1748
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1735
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1736
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1737
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isHomeAndLockPaired(I)Z

    move-result v1

    .line 1738
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1740
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1724
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1726
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyPreloadedFileToWallpaperFile(ILjava/lang/String;)V

    .line 1729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1713
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1715
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1716
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->copyFileToWallpaperFile(ILjava/lang/String;)V

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1702
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1704
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1705
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1706
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaperWithMode(II)V

    .line 1707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1693
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1694
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1695
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setKWPTypeLiveWallpaper(I)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1683
    .end local v0    # "_arg0":I
    :pswitch_2cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1684
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getLastCallingPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1688
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1675
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2e5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLegacyDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1678
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1668
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2f4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 1669
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1671
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1659
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1660
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1661
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1662
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1664
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1649
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1650
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1651
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isValidSnapshot(I)Z

    move-result v1

    .line 1652
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1654
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1637
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_32f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1639
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1641
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setSnapshotSource(ILjava/lang/String;)Z

    move-result v2

    .line 1642
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1644
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1628
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1629
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getSnapshotCount(I)I

    move-result v1

    .line 1630
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1618
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_35f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1619
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setSnapshotTestMode(Z)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1610
    .end local v0    # "_arg0":Z
    :pswitch_371
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isSnapshotTestMode()Z

    move-result v0

    .line 1611
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1613
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1599
    .end local v0    # "_result":Z
    :pswitch_380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1601
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1603
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->restoreSnapshot(ILjava/lang/String;)Z

    move-result v2

    .line 1604
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1606
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1587
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_39a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1589
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1590
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1591
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->makeSnapshot(II)I

    move-result v2

    .line 1592
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1578
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1580
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotBySource(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1569
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1570
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByKey(I)V

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1560
    .end local v0    # "_arg0":I
    :pswitch_3d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1561
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->removeSnapshotByWhich(I)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1545
    .end local v0    # "_arg0":I
    :pswitch_3ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1551
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1552
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1553
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1535
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1536
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v1

    .line 1538
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1540
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1520
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_41e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1526
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1527
    .restart local v3    # "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1510
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_43c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1511
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 1513
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1515
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1502
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_452
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getVideoColor()Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1505
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1493
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1494
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1495
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 1496
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1498
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1483
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1484
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1485
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1486
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1467
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_48d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1471
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1473
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1474
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1475
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperThumbnailFileDescriptor(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1476
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1478
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1459
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_4af
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->hasVideoWallpaper()Z

    move-result v0

    .line 1460
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1462
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1452
    .end local v0    # "_result":Z
    :pswitch_4be
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isVideoWallpaper()Z

    move-result v0

    .line 1453
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1455
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1430
    .end local v0    # "_result":Z
    :pswitch_4cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1432
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1434
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1436
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1438
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1440
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1442
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1444
    .local v21, "_arg6":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 1445
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setVideoWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/os/Bundle;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1420
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1421
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDefaultWallpaperState(I)Z

    move-result v1

    .line 1423
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1425
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1410
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1411
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1413
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1415
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1400
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_53e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1401
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1402
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->semGetWallpaperType(I)I

    move-result v1

    .line 1403
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1392
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_554
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaperType()I

    move-result v0

    .line 1393
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1385
    .end local v0    # "_result":I
    :pswitch_563
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopStandAloneMode()Z

    move-result v0

    .line 1386
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1388
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1376
    .end local v0    # "_result":Z
    :pswitch_572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1377
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isDesktopModeEnabled(I)Z

    move-result v1

    .line 1379
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1368
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_588
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getDesktopMode()I

    move-result v0

    .line 1369
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1361
    .end local v0    # "_result":I
    :pswitch_597
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->isDesktopMode()Z

    move-result v0

    .line 1362
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1364
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1354
    .end local v0    # "_result":Z
    :pswitch_5a6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    .line 1355
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1357
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1347
    .end local v0    # "_result":Z
    :pswitch_5b5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    .line 1348
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1350
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1340
    .end local v0    # "_result":F
    :pswitch_5c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1341
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 1343
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1327
    .end local v0    # "_arg0":F
    :pswitch_5d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1329
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1331
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1332
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1315
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_5f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1317
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1319
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1320
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 1322
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1305
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_60c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1307
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1308
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 1310
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1292
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_61f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1294
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1296
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1297
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1279
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_63d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1281
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1283
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1284
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1285
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1262
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_65b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1264
    .local v6, "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1266
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1268
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1270
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1271
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1245
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_68b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 1247
    .restart local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1249
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1251
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1253
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1254
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1231
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_6bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1233
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1235
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1236
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 1238
    .local v3, "_result":Landroid/app/WallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v15, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1240
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/WallpaperColors;
    :pswitch_6d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1222
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1224
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1226
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1211
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_6f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1212
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 1214
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1216
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1199
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_70d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1201
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1202
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupAllowed(II)Z

    move-result v2

    .line 1204
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1206
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1187
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1189
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1190
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v2

    .line 1192
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1194
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1180
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1182
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1170
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1172
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_76d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1153
    :pswitch_778
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1141
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_787
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1143
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1146
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1131
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_7a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1132
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v1

    .line 1134
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1121
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1122
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v1

    .line 1124
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1106
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1108
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1110
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1096
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_7ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 1099
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1101
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1083
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1087
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1088
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1071
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_81f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1073
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1074
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 1076
    .local v2, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {v15, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1078
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1059
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1061
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {v12, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v2

    .line 1064
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1042
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 1044
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1046
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1048
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1049
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1051
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {v15, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1053
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1054
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 1017
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_87d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1019
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1021
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v17

    .line 1023
    .local v17, "_arg2":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1025
    .local v18, "_arg3":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 1027
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1029
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1031
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 1032
    .local v21, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v8

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v23, v8

    .end local v8    # "_arg4":Landroid/os/Bundle;
    .local v23, "_arg4":Landroid/os/Bundle;
    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1034
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1036
    move-object/from16 v1, v23

    .end local v23    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v15, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1037
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 998
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/app/IWallpaperManagerCallback;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":Z
    :pswitch_8cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1000
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    .line 1002
    .local v7, "_arg1":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1004
    .local v8, "_arg2":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 1006
    .local v9, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1007
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1009
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1011
    invoke-virtual {v15, v9, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1012
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 989
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/app/IWallpaperManagerCallback;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_903
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 990
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v12, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 976
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_919
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 978
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 981
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move v13, v10

    move-object/from16 v26, v11

    goto/16 :goto_9f8

    .line 945
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 947
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 949
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 951
    .local v18, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 953
    .local v19, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 955
    .local v9, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 957
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v21

    .line 959
    .local v21, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 961
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 963
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 965
    .local v24, "_arg9":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 966
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object v5, v9

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object v12, v9

    .end local v9    # "_arg4":Landroid/os/Bundle;
    .local v12, "_arg4":Landroid/os/Bundle;
    move/from16 v9, v23

    move v13, v10

    move/from16 v10, v24

    move-object/from16 v26, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v26, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IWallpaperManager$Stub;->setWallpaperWithExtras(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIZLandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 968
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 970
    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 971
    goto :goto_9f8

    .line 918
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "_arg4":Landroid/os/Bundle;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/graphics/Rect;
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Z
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v26    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9a1
    move v13, v10

    move-object/from16 v26, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v26    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 922
    .local v11, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    .line 924
    .local v12, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 926
    .local v16, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 928
    .restart local v9    # "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 930
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v18

    .line 932
    .local v18, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 934
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 935
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, v16

    move-object v5, v9

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v27, v9

    .end local v9    # "_arg4":Landroid/os/Bundle;
    .local v27, "_arg4":Landroid/os/Bundle;
    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 937
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 939
    move-object/from16 v1, v27

    .end local v27    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 940
    nop

    .line 1991
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Landroid/graphics/Rect;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    :goto_9f8
    return v13

    nop

    :pswitch_data_9fa
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_a00
    .packed-switch 0x1
        :pswitch_9a1
        :pswitch_937
        :pswitch_919
        :pswitch_903
        :pswitch_8cc
        :pswitch_87d
        :pswitch_853
        :pswitch_839
        :pswitch_81f
        :pswitch_805
        :pswitch_7ef
        :pswitch_7d1
        :pswitch_7bb
        :pswitch_7a5
        :pswitch_787
        :pswitch_778
        :pswitch_76d
        :pswitch_757
        :pswitch_741
        :pswitch_727
        :pswitch_70d
        :pswitch_6f3
        :pswitch_6d9
        :pswitch_6bb
        :pswitch_68b
        :pswitch_65b
        :pswitch_63d
        :pswitch_61f
        :pswitch_60c
        :pswitch_5f1
        :pswitch_5d3
        :pswitch_5c4
        :pswitch_5b5
        :pswitch_5a6
        :pswitch_597
        :pswitch_588
        :pswitch_572
        :pswitch_563
        :pswitch_554
        :pswitch_53e
        :pswitch_528
        :pswitch_512
        :pswitch_4cd
        :pswitch_4be
        :pswitch_4af
        :pswitch_48d
        :pswitch_477
        :pswitch_461
        :pswitch_452
        :pswitch_43c
        :pswitch_41e
        :pswitch_408
        :pswitch_3ea
        :pswitch_3d8
        :pswitch_3c6
        :pswitch_3b4
        :pswitch_39a
        :pswitch_380
        :pswitch_371
        :pswitch_35f
        :pswitch_349
        :pswitch_32f
        :pswitch_319
        :pswitch_303
        :pswitch_2f4
        :pswitch_2e5
        :pswitch_2cf
        :pswitch_2bd
        :pswitch_2a7
        :pswitch_291
        :pswitch_27b
        :pswitch_265
        :pswitch_24f
        :pswitch_21a
        :pswitch_200
        :pswitch_1e6
        :pswitch_1cc
        :pswitch_1b6
        :pswitch_1a0
        :pswitch_18a
        :pswitch_170
        :pswitch_14e
        :pswitch_138
        :pswitch_129
        :pswitch_113
        :pswitch_fd
        :pswitch_bf
        :pswitch_a5
        :pswitch_8f
        :pswitch_5c
        :pswitch_3e
        :pswitch_24
    .end packed-switch
.end method
