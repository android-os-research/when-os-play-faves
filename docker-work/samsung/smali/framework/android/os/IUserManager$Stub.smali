.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final blacklist TRANSACTION_addUserRestrictionsListener:I = 0x2c

.field static final greylist-max-o TRANSACTION_canAddMoreManagedProfiles:I = 0x19

.field static final blacklist TRANSACTION_canAddMoreProfilesToUser:I = 0x18

.field static final blacklist TRANSACTION_canAddMoreUsersOfType:I = 0x15

.field static final greylist-max-o TRANSACTION_canHaveRestrictedProfile:I = 0x22

.field static final greylist-max-o TRANSACTION_clearSeedAccountData:I = 0x3c

.field static final blacklist TRANSACTION_createProfileForUserEvenWhenDisallowedWithThrow:I = 0x44

.field static final blacklist TRANSACTION_createProfileForUserWithThrow:I = 0x5

.field static final blacklist TRANSACTION_createRestrictedProfileWithThrow:I = 0x6

.field static final blacklist TRANSACTION_createUserWithAttributes:I = 0x37

.field static final blacklist TRANSACTION_createUserWithThrow:I = 0x3

.field static final greylist-max-o TRANSACTION_evictCredentialEncryptionKey:I = 0xa

.field static final blacklist TRANSACTION_findCurrentGuestUser:I = 0x35

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x2f

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsForUser:I = 0x30

.field static final blacklist TRANSACTION_getBModeDefaultIcon:I = 0x57

.field static final greylist-max-o TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final greylist-max-o TRANSACTION_getDefaultGuestRestrictions:I = 0x32

.field static final blacklist TRANSACTION_getPreInstallableSystemPackages:I = 0x7

.field static final greylist-max-o TRANSACTION_getPrimaryUser:I = 0x10

.field static final greylist-max-o TRANSACTION_getProfileIds:I = 0x13

.field static final greylist-max-o TRANSACTION_getProfileParent:I = 0x1a

.field static final greylist-max-o TRANSACTION_getProfileParentId:I = 0x2

.field static final blacklist TRANSACTION_getProfileType:I = 0x3f

.field static final greylist-max-o TRANSACTION_getProfiles:I = 0x12

.field static final blacklist TRANSACTION_getRemainingCreatableProfileCount:I = 0x17

.field static final blacklist TRANSACTION_getRemainingCreatableUserCount:I = 0x16

.field static final greylist-max-o TRANSACTION_getSeedAccountName:I = 0x39

.field static final greylist-max-o TRANSACTION_getSeedAccountOptions:I = 0x3b

.field static final greylist-max-o TRANSACTION_getSeedAccountType:I = 0x3a

.field static final greylist-max-o TRANSACTION_getUserAccount:I = 0x1e

.field static final blacklist TRANSACTION_getUserBadgeColorResId:I = 0x4a

.field static final blacklist TRANSACTION_getUserBadgeDarkColorResId:I = 0x4b

.field static final blacklist TRANSACTION_getUserBadgeLabelResId:I = 0x49

.field static final blacklist TRANSACTION_getUserBadgeNoBackgroundResId:I = 0x48

.field static final blacklist TRANSACTION_getUserBadgeResId:I = 0x47

.field static final greylist-max-o TRANSACTION_getUserCreationTime:I = 0x20

.field static final greylist-max-o TRANSACTION_getUserHandle:I = 0x24

.field static final greylist-max-o TRANSACTION_getUserIcon:I = 0xf

.field static final blacklist TRANSACTION_getUserIconBadgeResId:I = 0x46

.field static final greylist-max-o TRANSACTION_getUserInfo:I = 0x1d

.field static final blacklist TRANSACTION_getUserName:I = 0x53

.field static final greylist-max-o TRANSACTION_getUserRestrictionSource:I = 0x25

.field static final greylist-max-o TRANSACTION_getUserRestrictionSources:I = 0x26

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x27

.field static final greylist-max-o TRANSACTION_getUserSerialNumber:I = 0x23

.field static final greylist-max-o TRANSACTION_getUserStartRealtime:I = 0x54

.field static final greylist-max-o TRANSACTION_getUserUnlockRealtime:I = 0x55

.field static final greylist-max-o TRANSACTION_getUsers:I = 0x11

.field static final blacklist TRANSACTION_hasBadge:I = 0x4c

.field static final greylist-max-o TRANSACTION_hasBaseUserRestriction:I = 0x28

.field static final greylist-max-o TRANSACTION_hasRestrictedProfiles:I = 0x51

.field static final greylist-max-o TRANSACTION_hasUserRestriction:I = 0x29

.field static final greylist-max-o TRANSACTION_hasUserRestrictionOnAnyUser:I = 0x2a

.field static final blacklist TRANSACTION_isCredentialSharableWithParent:I = 0x41

.field static final greylist-max-o TRANSACTION_isDemoUser:I = 0x42

.field static final blacklist TRANSACTION_isLowOnStorageForMaintenanceMode:I = 0x58

.field static final blacklist TRANSACTION_isMediaSharedWithParent:I = 0x40

.field static final blacklist TRANSACTION_isPreCreated:I = 0x43

.field static final greylist-max-o TRANSACTION_isQuietModeEnabled:I = 0x36

.field static final greylist-max-o TRANSACTION_isRestricted:I = 0x21

.field static final greylist-max-o TRANSACTION_isSameProfileGroup:I = 0x1b

.field static final blacklist TRANSACTION_isSettingRestrictedForUser:I = 0x2b

.field static final blacklist TRANSACTION_isUserForeground:I = 0x4f

.field static final greylist-max-o TRANSACTION_isUserNameSet:I = 0x50

.field static final blacklist TRANSACTION_isUserOfType:I = 0x1c

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x4e

.field static final blacklist TRANSACTION_isUserTypeEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_isUserUnlocked:I = 0x4d

.field static final greylist-max-o TRANSACTION_isUserUnlockingOrUnlocked:I = 0x45

.field static final greylist-max-o TRANSACTION_markGuestForDeletion:I = 0x34

.field static final blacklist TRANSACTION_preCreateUserWithThrow:I = 0x4

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xb

.field static final greylist-max-o TRANSACTION_removeUserEvenWhenDisallowed:I = 0xc

.field static final blacklist TRANSACTION_removeUserWhenPossible:I = 0x33

.field static final greylist-max-o TRANSACTION_requestQuietModeEnabled:I = 0x52

.field static final blacklist TRANSACTION_semGetSemUserInfo:I = 0x56

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x2e

.field static final greylist-max-o TRANSACTION_setDefaultGuestRestrictions:I = 0x31

.field static final greylist-max-o TRANSACTION_setSeedAccountData:I = 0x38

.field static final greylist-max-o TRANSACTION_setUserAccount:I = 0x1f

.field static final greylist-max-o TRANSACTION_setUserAdmin:I = 0x9

.field static final greylist-max-o TRANSACTION_setUserEnabled:I = 0x8

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xe

.field static final greylist-max-o TRANSACTION_setUserName:I = 0xd

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x2d

.field static final blacklist TRANSACTION_someUserHasAccount:I = 0x3e

.field static final greylist-max-o TRANSACTION_someUserHasSeedAccount:I = 0x3d

.field static final blacklist TRANSACTION_updateUserInfo:I = 0x59


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 375
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 376
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 384
    if-nez p0, :cond_4

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_4
    const-string v0, "android.os.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 388
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_14

    .line 389
    move-object v1, v0

    check-cast v1, Landroid/os/IUserManager;

    return-object v1

    .line 391
    :cond_14
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 400
    packed-switch p0, :pswitch_data_158

    .line 760
    const/4 v0, 0x0

    return-object v0

    .line 756
    :pswitch_5
    const-string/jumbo v0, "updateUserInfo"

    return-object v0

    .line 752
    :pswitch_9
    const-string/jumbo v0, "isLowOnStorageForMaintenanceMode"

    return-object v0

    .line 748
    :pswitch_d
    const-string v0, "getBModeDefaultIcon"

    return-object v0

    .line 744
    :pswitch_10
    const-string/jumbo v0, "semGetSemUserInfo"

    return-object v0

    .line 740
    :pswitch_14
    const-string/jumbo v0, "getUserUnlockRealtime"

    return-object v0

    .line 736
    :pswitch_18
    const-string/jumbo v0, "getUserStartRealtime"

    return-object v0

    .line 732
    :pswitch_1c
    const-string/jumbo v0, "getUserName"

    return-object v0

    .line 728
    :pswitch_20
    const-string/jumbo v0, "requestQuietModeEnabled"

    return-object v0

    .line 724
    :pswitch_24
    const-string/jumbo v0, "hasRestrictedProfiles"

    return-object v0

    .line 720
    :pswitch_28
    const-string/jumbo v0, "isUserNameSet"

    return-object v0

    .line 716
    :pswitch_2c
    const-string/jumbo v0, "isUserForeground"

    return-object v0

    .line 712
    :pswitch_30
    const-string/jumbo v0, "isUserRunning"

    return-object v0

    .line 708
    :pswitch_34
    const-string/jumbo v0, "isUserUnlocked"

    return-object v0

    .line 704
    :pswitch_38
    const-string/jumbo v0, "hasBadge"

    return-object v0

    .line 700
    :pswitch_3c
    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    return-object v0

    .line 696
    :pswitch_40
    const-string/jumbo v0, "getUserBadgeColorResId"

    return-object v0

    .line 692
    :pswitch_44
    const-string/jumbo v0, "getUserBadgeLabelResId"

    return-object v0

    .line 688
    :pswitch_48
    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    return-object v0

    .line 684
    :pswitch_4c
    const-string/jumbo v0, "getUserBadgeResId"

    return-object v0

    .line 680
    :pswitch_50
    const-string/jumbo v0, "getUserIconBadgeResId"

    return-object v0

    .line 676
    :pswitch_54
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    return-object v0

    .line 672
    :pswitch_58
    const-string v0, "createProfileForUserEvenWhenDisallowedWithThrow"

    return-object v0

    .line 668
    :pswitch_5b
    const-string/jumbo v0, "isPreCreated"

    return-object v0

    .line 664
    :pswitch_5f
    const-string/jumbo v0, "isDemoUser"

    return-object v0

    .line 660
    :pswitch_63
    const-string/jumbo v0, "isCredentialSharableWithParent"

    return-object v0

    .line 656
    :pswitch_67
    const-string/jumbo v0, "isMediaSharedWithParent"

    return-object v0

    .line 652
    :pswitch_6b
    const-string/jumbo v0, "getProfileType"

    return-object v0

    .line 648
    :pswitch_6f
    const-string/jumbo v0, "someUserHasAccount"

    return-object v0

    .line 644
    :pswitch_73
    const-string/jumbo v0, "someUserHasSeedAccount"

    return-object v0

    .line 640
    :pswitch_77
    const-string v0, "clearSeedAccountData"

    return-object v0

    .line 636
    :pswitch_7a
    const-string/jumbo v0, "getSeedAccountOptions"

    return-object v0

    .line 632
    :pswitch_7e
    const-string/jumbo v0, "getSeedAccountType"

    return-object v0

    .line 628
    :pswitch_82
    const-string/jumbo v0, "getSeedAccountName"

    return-object v0

    .line 624
    :pswitch_86
    const-string/jumbo v0, "setSeedAccountData"

    return-object v0

    .line 620
    :pswitch_8a
    const-string v0, "createUserWithAttributes"

    return-object v0

    .line 616
    :pswitch_8d
    const-string/jumbo v0, "isQuietModeEnabled"

    return-object v0

    .line 612
    :pswitch_91
    const-string v0, "findCurrentGuestUser"

    return-object v0

    .line 608
    :pswitch_94
    const-string/jumbo v0, "markGuestForDeletion"

    return-object v0

    .line 604
    :pswitch_98
    const-string/jumbo v0, "removeUserWhenPossible"

    return-object v0

    .line 600
    :pswitch_9c
    const-string v0, "getDefaultGuestRestrictions"

    return-object v0

    .line 596
    :pswitch_9f
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    return-object v0

    .line 592
    :pswitch_a3
    const-string v0, "getApplicationRestrictionsForUser"

    return-object v0

    .line 588
    :pswitch_a6
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 584
    :pswitch_a9
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 580
    :pswitch_ad
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 576
    :pswitch_b1
    const-string v0, "addUserRestrictionsListener"

    return-object v0

    .line 572
    :pswitch_b4
    const-string/jumbo v0, "isSettingRestrictedForUser"

    return-object v0

    .line 568
    :pswitch_b8
    const-string/jumbo v0, "hasUserRestrictionOnAnyUser"

    return-object v0

    .line 564
    :pswitch_bc
    const-string/jumbo v0, "hasUserRestriction"

    return-object v0

    .line 560
    :pswitch_c0
    const-string/jumbo v0, "hasBaseUserRestriction"

    return-object v0

    .line 556
    :pswitch_c4
    const-string/jumbo v0, "getUserRestrictions"

    return-object v0

    .line 552
    :pswitch_c8
    const-string/jumbo v0, "getUserRestrictionSources"

    return-object v0

    .line 548
    :pswitch_cc
    const-string/jumbo v0, "getUserRestrictionSource"

    return-object v0

    .line 544
    :pswitch_d0
    const-string/jumbo v0, "getUserHandle"

    return-object v0

    .line 540
    :pswitch_d4
    const-string/jumbo v0, "getUserSerialNumber"

    return-object v0

    .line 536
    :pswitch_d8
    const-string v0, "canHaveRestrictedProfile"

    return-object v0

    .line 532
    :pswitch_db
    const-string/jumbo v0, "isRestricted"

    return-object v0

    .line 528
    :pswitch_df
    const-string/jumbo v0, "getUserCreationTime"

    return-object v0

    .line 524
    :pswitch_e3
    const-string/jumbo v0, "setUserAccount"

    return-object v0

    .line 520
    :pswitch_e7
    const-string/jumbo v0, "getUserAccount"

    return-object v0

    .line 516
    :pswitch_eb
    const-string/jumbo v0, "getUserInfo"

    return-object v0

    .line 512
    :pswitch_ef
    const-string/jumbo v0, "isUserOfType"

    return-object v0

    .line 508
    :pswitch_f3
    const-string/jumbo v0, "isSameProfileGroup"

    return-object v0

    .line 504
    :pswitch_f7
    const-string/jumbo v0, "getProfileParent"

    return-object v0

    .line 500
    :pswitch_fb
    const-string v0, "canAddMoreManagedProfiles"

    return-object v0

    .line 496
    :pswitch_fe
    const-string v0, "canAddMoreProfilesToUser"

    return-object v0

    .line 492
    :pswitch_101
    const-string/jumbo v0, "getRemainingCreatableProfileCount"

    return-object v0

    .line 488
    :pswitch_105
    const-string/jumbo v0, "getRemainingCreatableUserCount"

    return-object v0

    .line 484
    :pswitch_109
    const-string v0, "canAddMoreUsersOfType"

    return-object v0

    .line 480
    :pswitch_10c
    const-string/jumbo v0, "isUserTypeEnabled"

    return-object v0

    .line 476
    :pswitch_110
    const-string/jumbo v0, "getProfileIds"

    return-object v0

    .line 472
    :pswitch_114
    const-string/jumbo v0, "getProfiles"

    return-object v0

    .line 468
    :pswitch_118
    const-string/jumbo v0, "getUsers"

    return-object v0

    .line 464
    :pswitch_11c
    const-string/jumbo v0, "getPrimaryUser"

    return-object v0

    .line 460
    :pswitch_120
    const-string/jumbo v0, "getUserIcon"

    return-object v0

    .line 456
    :pswitch_124
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 452
    :pswitch_128
    const-string/jumbo v0, "setUserName"

    return-object v0

    .line 448
    :pswitch_12c
    const-string/jumbo v0, "removeUserEvenWhenDisallowed"

    return-object v0

    .line 444
    :pswitch_130
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 440
    :pswitch_134
    const-string v0, "evictCredentialEncryptionKey"

    return-object v0

    .line 436
    :pswitch_137
    const-string/jumbo v0, "setUserAdmin"

    return-object v0

    .line 432
    :pswitch_13b
    const-string/jumbo v0, "setUserEnabled"

    return-object v0

    .line 428
    :pswitch_13f
    const-string/jumbo v0, "getPreInstallableSystemPackages"

    return-object v0

    .line 424
    :pswitch_143
    const-string v0, "createRestrictedProfileWithThrow"

    return-object v0

    .line 420
    :pswitch_146
    const-string v0, "createProfileForUserWithThrow"

    return-object v0

    .line 416
    :pswitch_149
    const-string/jumbo v0, "preCreateUserWithThrow"

    return-object v0

    .line 412
    :pswitch_14d
    const-string v0, "createUserWithThrow"

    return-object v0

    .line 408
    :pswitch_150
    const-string/jumbo v0, "getProfileParentId"

    return-object v0

    .line 404
    :pswitch_154
    const-string v0, "getCredentialOwnerProfile"

    return-object v0

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_154
        :pswitch_150
        :pswitch_14d
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_137
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_db
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_9f
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
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
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 395
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3488
    const/16 v0, 0x58

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 767
    invoke-static {p1}, Landroid/os/IUserManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.os.IUserManager"

    .line 772
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 773
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    :cond_15
    packed-switch v9, :pswitch_data_78a

    .line 783
    packed-switch v9, :pswitch_data_790

    .line 1752
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 779
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 780
    return v13

    .line 1741
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1743
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1744
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1745
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->updateUserInfo(ILandroid/os/Bundle;)Z

    move-result v2

    .line 1746
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1748
    goto/16 :goto_789

    .line 1733
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->isLowOnStorageForMaintenanceMode()Z

    move-result v0

    .line 1734
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1736
    goto/16 :goto_789

    .line 1724
    .end local v0    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1725
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getBModeDefaultIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1727
    .local v1, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1729
    goto/16 :goto_789

    .line 1714
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Bitmap;
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1715
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1716
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object v1

    .line 1717
    .local v1, "_result":Landroid/content/pm/SemUserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1719
    goto/16 :goto_789

    .line 1706
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/SemUserInfo;
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserUnlockRealtime()J

    move-result-wide v0

    .line 1707
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1709
    goto/16 :goto_789

    .line 1699
    .end local v0    # "_result":J
    :pswitch_7d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserStartRealtime()J

    move-result-wide v0

    .line 1700
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1702
    goto/16 :goto_789

    .line 1692
    .end local v0    # "_result":J
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1695
    goto/16 :goto_789

    .line 1675
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1677
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1679
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1681
    .local v14, "_arg2":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/IntentSender;

    .line 1683
    .local v15, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1684
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result v0

    .line 1686
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1688
    goto/16 :goto_789

    .line 1665
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/content/IntentSender;
    .end local v16    # "_arg4":I
    :pswitch_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1666
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasRestrictedProfiles(I)Z

    move-result v1

    .line 1668
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1670
    goto/16 :goto_789

    .line 1655
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1657
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserNameSet(I)Z

    move-result v1

    .line 1658
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1660
    goto/16 :goto_789

    .line 1645
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1646
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserForeground(I)Z

    move-result v1

    .line 1648
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1650
    goto/16 :goto_789

    .line 1635
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1636
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result v1

    .line 1638
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1640
    goto/16 :goto_789

    .line 1625
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1626
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1627
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result v1

    .line 1628
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1630
    goto/16 :goto_789

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasBadge(I)Z

    move-result v1

    .line 1618
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1620
    goto/16 :goto_789

    .line 1605
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeDarkColorResId(I)I

    move-result v1

    .line 1608
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    goto/16 :goto_789

    .line 1595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1596
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeColorResId(I)I

    move-result v1

    .line 1598
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    goto/16 :goto_789

    .line 1585
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeLabelResId(I)I

    move-result v1

    .line 1588
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    goto/16 :goto_789

    .line 1575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeNoBackgroundResId(I)I

    move-result v1

    .line 1578
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    goto/16 :goto_789

    .line 1565
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1566
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserBadgeResId(I)I

    move-result v1

    .line 1568
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    goto/16 :goto_789

    .line 1555
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1557
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserIconBadgeResId(I)I

    move-result v1

    .line 1558
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    goto/16 :goto_789

    .line 1545
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1546
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    .line 1548
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1550
    goto/16 :goto_789

    .line 1527
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1529
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1531
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1533
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1535
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1536
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1538
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1540
    goto/16 :goto_789

    .line 1517
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_1e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1518
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1519
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isPreCreated(I)Z

    move-result v1

    .line 1520
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1522
    goto/16 :goto_789

    .line 1507
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1508
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result v1

    .line 1510
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1512
    goto/16 :goto_789

    .line 1497
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1498
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isCredentialSharableWithParent(I)Z

    move-result v1

    .line 1500
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1502
    goto/16 :goto_789

    .line 1487
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1488
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isMediaSharedWithParent(I)Z

    move-result v1

    .line 1490
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1492
    goto/16 :goto_789

    .line 1477
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1478
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileType(I)Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1482
    goto/16 :goto_789

    .line 1465
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1468
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1470
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1472
    goto/16 :goto_789

    .line 1453
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_25d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1458
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1460
    goto/16 :goto_789

    .line 1444
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1445
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->clearSeedAccountData(I)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    goto/16 :goto_789

    .line 1434
    .end local v0    # "_arg0":I
    :pswitch_283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1435
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1437
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1439
    goto/16 :goto_789

    .line 1424
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    :pswitch_296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1425
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1429
    goto/16 :goto_789

    .line 1414
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1415
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object v1

    .line 1417
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1419
    goto/16 :goto_789

    .line 1397
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1399
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1401
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1403
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/PersistableBundle;

    .line 1405
    .local v15, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1406
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_789

    .line 1375
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/os/PersistableBundle;
    .end local v16    # "_arg4":Z
    :pswitch_2e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1377
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1379
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1381
    .local v16, "_arg2":I
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    .line 1383
    .local v17, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1385
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1387
    .local v19, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/PersistableBundle;

    .line 1388
    .local v20, "_arg6":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1389
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IUserManager$Stub;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 1390
    .local v0, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    goto/16 :goto_789

    .line 1365
    .end local v0    # "_result":Landroid/os/UserHandle;
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/graphics/Bitmap;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Landroid/os/PersistableBundle;
    :pswitch_32d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1366
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result v1

    .line 1368
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1370
    goto/16 :goto_789

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_340
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1358
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1360
    goto/16 :goto_789

    .line 1348
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_34c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v1

    .line 1351
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1353
    goto/16 :goto_789

    .line 1336
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_35f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1338
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1339
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->removeUserWhenPossible(IZ)I

    move-result v2

    .line 1341
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    goto/16 :goto_789

    .line 1328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_376
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 1329
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1331
    goto/16 :goto_789

    .line 1320
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_382
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1321
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 1323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    goto/16 :goto_789

    .line 1308
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1311
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 1313
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1315
    goto/16 :goto_789

    .line 1298
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1301
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1303
    goto/16 :goto_789

    .line 1285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_3bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1289
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1290
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    goto/16 :goto_789

    .line 1272
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_3da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1276
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1277
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    goto/16 :goto_789

    .line 1263
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_3f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserRestrictionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserRestrictionsListener;

    move-result-object v0

    .line 1264
    .local v0, "_arg0":Landroid/os/IUserRestrictionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    goto/16 :goto_789

    .line 1247
    .end local v0    # "_arg0":Landroid/os/IUserRestrictionsListener;
    :pswitch_404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1254
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    .line 1256
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1258
    goto/16 :goto_789

    .line 1237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v1

    .line 1240
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1242
    goto/16 :goto_789

    .line 1225
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 1230
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    goto/16 :goto_789

    .line 1213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_44d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    .line 1218
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1220
    goto/16 :goto_789

    .line 1203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1204
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1206
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1208
    goto/16 :goto_789

    .line 1191
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1194
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1196
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1198
    goto/16 :goto_789

    .line 1179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :pswitch_48e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1182
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v2

    .line 1184
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    goto/16 :goto_789

    .line 1169
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v1

    .line 1172
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    goto/16 :goto_789

    .line 1159
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1161
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v1

    .line 1162
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    goto/16 :goto_789

    .line 1149
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1150
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result v1

    .line 1152
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1154
    goto/16 :goto_789

    .line 1139
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1140
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isRestricted(I)Z

    move-result v1

    .line 1142
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1144
    goto/16 :goto_789

    .line 1129
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1130
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v1

    .line 1132
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {v11, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1134
    goto/16 :goto_789

    .line 1118
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    goto/16 :goto_789

    .line 1108
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1109
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1113
    goto/16 :goto_789

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_52a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1101
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1103
    goto/16 :goto_789

    .line 1086
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_53d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1088
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->isUserOfType(ILjava/lang/String;)Z

    move-result v2

    .line 1091
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_789

    .line 1074
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1076
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1077
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result v2

    .line 1079
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1081
    goto/16 :goto_789

    .line 1064
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_56b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1065
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1067
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1069
    goto/16 :goto_789

    .line 1052
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_57e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1054
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1055
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    move-result v2

    .line 1057
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    goto/16 :goto_789

    .line 1038
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1042
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1043
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v3

    .line 1045
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1047
    goto/16 :goto_789

    .line 1026
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_5b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1029
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result v2

    .line 1031
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    goto/16 :goto_789

    .line 1016
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result v1

    .line 1019
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    goto/16 :goto_789

    .line 1006
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_5da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result v1

    .line 1009
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1011
    goto/16 :goto_789

    .line 996
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 999
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1001
    goto/16 :goto_789

    .line 984
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 986
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 987
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object v2

    .line 989
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 991
    goto/16 :goto_789

    .line 972
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[I
    :pswitch_617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 974
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 975
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 977
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 979
    goto/16 :goto_789

    .line 958
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_62e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 960
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 962
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 963
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 965
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 967
    goto/16 :goto_789

    .line 950
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_649
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 951
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 953
    goto/16 :goto_789

    .line 941
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 942
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 944
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 946
    goto/16 :goto_789

    .line 930
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 932
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 933
    .local v1, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    goto/16 :goto_789

    .line 919
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_67f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    goto/16 :goto_789

    .line 909
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->removeUserEvenWhenDisallowed(I)Z

    move-result v1

    .line 912
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 914
    goto/16 :goto_789

    .line 899
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 900
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v1

    .line 902
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 904
    goto/16 :goto_789

    .line 890
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 891
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->evictCredentialEncryptionKey(I)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_789

    .line 881
    .end local v0    # "_arg0":I
    :pswitch_6c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 882
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setUserAdmin(I)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_789

    .line 872
    .end local v0    # "_arg0":I
    :pswitch_6d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 873
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_789

    .line 862
    .end local v0    # "_arg0":I
    :pswitch_6e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 867
    goto/16 :goto_789

    .line 850
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 852
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {v8, v0, v1}, Landroid/os/IUserManager$Stub;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 855
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 857
    goto/16 :goto_789

    .line 832
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_70f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 834
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 836
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 838
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 840
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 841
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 843
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 845
    goto :goto_789

    .line 822
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 825
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 827
    goto :goto_789

    .line 808
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_74b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v8, v0, v1, v2}, Landroid/os/IUserManager$Stub;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 815
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 817
    goto :goto_789

    .line 798
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 799
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getProfileParentId(I)I

    move-result v1

    .line 801
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    goto :goto_789

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v8, v0}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 791
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    nop

    .line 1755
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :goto_789
    return v13

    :pswitch_data_78a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_790
    .packed-switch 0x1
        :pswitch_777
        :pswitch_765
        :pswitch_74b
        :pswitch_739
        :pswitch_70f
        :pswitch_6f8
        :pswitch_6e5
        :pswitch_6d6
        :pswitch_6c7
        :pswitch_6b8
        :pswitch_6a5
        :pswitch_692
        :pswitch_67f
        :pswitch_668
        :pswitch_655
        :pswitch_649
        :pswitch_62e
        :pswitch_617
        :pswitch_600
        :pswitch_5ed
        :pswitch_5da
        :pswitch_5c7
        :pswitch_5b0
        :pswitch_595
        :pswitch_57e
        :pswitch_56b
        :pswitch_554
        :pswitch_53d
        :pswitch_52a
        :pswitch_517
        :pswitch_504
        :pswitch_4f1
        :pswitch_4de
        :pswitch_4cb
        :pswitch_4b8
        :pswitch_4a5
        :pswitch_48e
        :pswitch_477
        :pswitch_464
        :pswitch_44d
        :pswitch_436
        :pswitch_423
        :pswitch_404
        :pswitch_3f1
        :pswitch_3da
        :pswitch_3bf
        :pswitch_3ac
        :pswitch_395
        :pswitch_382
        :pswitch_376
        :pswitch_35f
        :pswitch_34c
        :pswitch_340
        :pswitch_32d
        :pswitch_2e8
        :pswitch_2bc
        :pswitch_2a9
        :pswitch_296
        :pswitch_283
        :pswitch_274
        :pswitch_25d
        :pswitch_246
        :pswitch_233
        :pswitch_220
        :pswitch_20d
        :pswitch_1fa
        :pswitch_1e7
        :pswitch_1bc
        :pswitch_1a9
        :pswitch_196
        :pswitch_183
        :pswitch_170
        :pswitch_15d
        :pswitch_14a
        :pswitch_137
        :pswitch_124
        :pswitch_111
        :pswitch_fe
        :pswitch_eb
        :pswitch_d8
        :pswitch_c5
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_5e
        :pswitch_4b
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
