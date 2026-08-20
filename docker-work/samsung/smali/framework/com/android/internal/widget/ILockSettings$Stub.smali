.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final blacklist TRANSACTION_addLog:I = 0x47

.field static final blacklist TRANSACTION_addWeakEscrowToken:I = 0x31

.field static final blacklist TRANSACTION_changeToken:I = 0x5a

.field static final blacklist TRANSACTION_checkAppLockBackupPin:I = 0x52

.field static final blacklist TRANSACTION_checkAppLockFingerprintPassword:I = 0x53

.field static final blacklist TRANSACTION_checkAppLockPassword:I = 0x50

.field static final blacklist TRANSACTION_checkAppLockPatternWithHash:I = 0x51

.field static final blacklist TRANSACTION_checkAppLockPin:I = 0x4f

.field static final blacklist TRANSACTION_checkCarrierPassword:I = 0x43

.field static final greylist-max-o TRANSACTION_checkCredential:I = 0x9

.field static final blacklist TRANSACTION_checkCredentialForDualDarDo:I = 0x5b

.field static final blacklist TRANSACTION_checkFMMPassword:I = 0x3d

.field static final blacklist TRANSACTION_checkRemoteLockPassword:I = 0x39

.field static final greylist-max-o TRANSACTION_closeSession:I = 0x2b

.field static final greylist-max-o TRANSACTION_generateKey:I = 0x1d

.field static final blacklist TRANSACTION_generateKeyWithMetadata:I = 0x1e

.field static final greylist-max-o TRANSACTION_getBoolean:I = 0x4

.field static final blacklist TRANSACTION_getCarrierLock:I = 0x3e

.field static final blacklist TRANSACTION_getCredentialType:I = 0xe

.field static final greylist-max-o TRANSACTION_getHashFactor:I = 0xf

.field static final greylist-max-o TRANSACTION_getKey:I = 0x21

.field static final greylist-max-o TRANSACTION_getKeyChainSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLong:I = 0x5

.field static final greylist-max-o TRANSACTION_getRecoverySecretTypes:I = 0x28

.field static final greylist-max-o TRANSACTION_getRecoveryStatus:I = 0x26

.field static final greylist-max-o TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x11

.field static final greylist-max-o TRANSACTION_getString:I = 0x6

.field static final greylist-max-o TRANSACTION_getStrongAuthForUser:I = 0x19

.field static final blacklist TRANSACTION_hasPendingEscrowToken:I = 0x1a

.field static final blacklist TRANSACTION_hasSecureLockScreen:I = 0x2c

.field static final blacklist TRANSACTION_haveAppLockBackupPin:I = 0x57

.field static final blacklist TRANSACTION_haveAppLockFingerprintPassword:I = 0x58

.field static final blacklist TRANSACTION_haveAppLockPassword:I = 0x55

.field static final blacklist TRANSACTION_haveAppLockPattern:I = 0x56

.field static final blacklist TRANSACTION_haveAppLockPin:I = 0x54

.field static final blacklist TRANSACTION_haveCarrierPassword:I = 0x42

.field static final blacklist TRANSACTION_haveFMMPassword:I = 0x3c

.field static final greylist-max-o TRANSACTION_importKey:I = 0x1f

.field static final blacklist TRANSACTION_importKeyWithMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_initRecoveryServiceWithSigFile:I = 0x1b

.field static final blacklist TRANSACTION_isLockPasswordValid:I = 0x46

.field static final blacklist TRANSACTION_isWeakEscrowTokenActive:I = 0x33

.field static final blacklist TRANSACTION_isWeakEscrowTokenValid:I = 0x34

.field static final blacklist TRANSACTION_notifyPasswordChangedForEnterpriseUser:I = 0x5d

.field static final greylist-max-o TRANSACTION_recoverKeyChainSnapshot:I = 0x2a

.field static final blacklist TRANSACTION_registerRemoteLockCallback:I = 0x35

.field static final greylist-max-o TRANSACTION_registerStrongAuthTracker:I = 0x12

.field static final blacklist TRANSACTION_registerWeakEscrowTokenRemovedListener:I = 0x2f

.field static final blacklist TRANSACTION_removeCachedUnifiedChallenge:I = 0x2e

.field static final blacklist TRANSACTION_removeGatekeeperPasswordHandle:I = 0xd

.field static final greylist-max-o TRANSACTION_removeKey:I = 0x22

.field static final blacklist TRANSACTION_removeWeakEscrowToken:I = 0x32

.field static final blacklist TRANSACTION_reportSuccessfulBiometricUnlock:I = 0x15

.field static final blacklist TRANSACTION_requestRemoteLockInfo:I = 0x3a

.field static final greylist-max-o TRANSACTION_requireStrongAuth:I = 0x14

.field static final greylist-max-o TRANSACTION_resetKeyStore:I = 0x8

.field static final blacklist TRANSACTION_scheduleNonStrongBiometricIdleTimeout:I = 0x16

.field static final blacklist TRANSACTION_sendLockTypeChangedInfo:I = 0x45

.field static final blacklist TRANSACTION_setAppLockBackupPin:I = 0x4d

.field static final blacklist TRANSACTION_setAppLockFingerprintPassword:I = 0x4e

.field static final blacklist TRANSACTION_setAppLockPassword:I = 0x4b

.field static final blacklist TRANSACTION_setAppLockPattern:I = 0x4c

.field static final blacklist TRANSACTION_setAppLockPin:I = 0x4a

.field static final greylist-max-o TRANSACTION_setBoolean:I = 0x1

.field static final blacklist TRANSACTION_setCarrierLockEnabled:I = 0x40

.field static final blacklist TRANSACTION_setKnoxGuard:I = 0x37

.field static final blacklist TRANSACTION_setLockCarrierPassword:I = 0x41

.field static final greylist-max-o TRANSACTION_setLockCredential:I = 0x7

.field static final blacklist TRANSACTION_setLockCredentialWithIgnoreNotifyIfNeeded:I = 0x5c

.field static final blacklist TRANSACTION_setLockFMMPassword:I = 0x3b

.field static final blacklist TRANSACTION_setLockModeChangedCallback:I = 0x44

.field static final greylist-max-o TRANSACTION_setLong:I = 0x2

.field static final greylist-max-o TRANSACTION_setRecoverySecretTypes:I = 0x27

.field static final greylist-max-o TRANSACTION_setRecoveryStatus:I = 0x25

.field static final blacklist TRANSACTION_setRemoteLock:I = 0x38

.field static final blacklist TRANSACTION_setSecurityDebugLevel:I = 0x48

.field static final greylist-max-o TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_setServerParams:I = 0x24

.field static final blacklist TRANSACTION_setShellCommandCallback:I = 0x49

.field static final greylist-max-o TRANSACTION_setSnapshotCreatedPendingIntent:I = 0x23

.field static final greylist-max-o TRANSACTION_setString:I = 0x3

.field static final greylist-max-o TRANSACTION_startRecoverySessionWithCertPath:I = 0x29

.field static final greylist-max-o TRANSACTION_systemReady:I = 0x17

.field static final blacklist TRANSACTION_tryUnlockWithCachedUnifiedChallenge:I = 0x2d

.field static final blacklist TRANSACTION_unregisterRemoteLockCallback:I = 0x36

.field static final greylist-max-o TRANSACTION_unregisterStrongAuthTracker:I = 0x13

.field static final blacklist TRANSACTION_unregisterWeakEscrowTokenRemovedListener:I = 0x30

.field static final blacklist TRANSACTION_updateCarrierLock:I = 0x3f

.field static final greylist-max-o TRANSACTION_userPresent:I = 0x18

.field static final greylist-max-o TRANSACTION_verifyCredential:I = 0xa

.field static final blacklist TRANSACTION_verifyGatekeeperPasswordHandle:I = 0xc

.field static final greylist-max-o TRANSACTION_verifyTiedProfileChallenge:I = 0xb

.field static final blacklist TRANSACTION_verifyToken:I = 0x59


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 379
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 380
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 388
    if-nez p0, :cond_4

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_4
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 392
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_14

    .line 393
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ILockSettings;

    return-object v1

    .line 395
    :cond_14
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 404
    packed-switch p0, :pswitch_data_14e

    .line 780
    const/4 v0, 0x0

    return-object v0

    .line 776
    :pswitch_5
    const-string v0, "notifyPasswordChangedForEnterpriseUser"

    return-object v0

    .line 772
    :pswitch_8
    const-string/jumbo v0, "setLockCredentialWithIgnoreNotifyIfNeeded"

    return-object v0

    .line 768
    :pswitch_c
    const-string v0, "checkCredentialForDualDarDo"

    return-object v0

    .line 764
    :pswitch_f
    const-string v0, "changeToken"

    return-object v0

    .line 760
    :pswitch_12
    const-string/jumbo v0, "verifyToken"

    return-object v0

    .line 756
    :pswitch_16
    const-string v0, "haveAppLockFingerprintPassword"

    return-object v0

    .line 752
    :pswitch_19
    const-string v0, "haveAppLockBackupPin"

    return-object v0

    .line 748
    :pswitch_1c
    const-string v0, "haveAppLockPattern"

    return-object v0

    .line 744
    :pswitch_1f
    const-string v0, "haveAppLockPassword"

    return-object v0

    .line 740
    :pswitch_22
    const-string v0, "haveAppLockPin"

    return-object v0

    .line 736
    :pswitch_25
    const-string v0, "checkAppLockFingerprintPassword"

    return-object v0

    .line 732
    :pswitch_28
    const-string v0, "checkAppLockBackupPin"

    return-object v0

    .line 728
    :pswitch_2b
    const-string v0, "checkAppLockPatternWithHash"

    return-object v0

    .line 724
    :pswitch_2e
    const-string v0, "checkAppLockPassword"

    return-object v0

    .line 720
    :pswitch_31
    const-string v0, "checkAppLockPin"

    return-object v0

    .line 716
    :pswitch_34
    const-string/jumbo v0, "setAppLockFingerprintPassword"

    return-object v0

    .line 712
    :pswitch_38
    const-string/jumbo v0, "setAppLockBackupPin"

    return-object v0

    .line 708
    :pswitch_3c
    const-string/jumbo v0, "setAppLockPattern"

    return-object v0

    .line 704
    :pswitch_40
    const-string/jumbo v0, "setAppLockPassword"

    return-object v0

    .line 700
    :pswitch_44
    const-string/jumbo v0, "setAppLockPin"

    return-object v0

    .line 696
    :pswitch_48
    const-string/jumbo v0, "setShellCommandCallback"

    return-object v0

    .line 692
    :pswitch_4c
    const-string/jumbo v0, "setSecurityDebugLevel"

    return-object v0

    .line 688
    :pswitch_50
    const-string v0, "addLog"

    return-object v0

    .line 684
    :pswitch_53
    const-string v0, "isLockPasswordValid"

    return-object v0

    .line 680
    :pswitch_56
    const-string/jumbo v0, "sendLockTypeChangedInfo"

    return-object v0

    .line 676
    :pswitch_5a
    const-string/jumbo v0, "setLockModeChangedCallback"

    return-object v0

    .line 672
    :pswitch_5e
    const-string v0, "checkCarrierPassword"

    return-object v0

    .line 668
    :pswitch_61
    const-string v0, "haveCarrierPassword"

    return-object v0

    .line 664
    :pswitch_64
    const-string/jumbo v0, "setLockCarrierPassword"

    return-object v0

    .line 660
    :pswitch_68
    const-string/jumbo v0, "setCarrierLockEnabled"

    return-object v0

    .line 656
    :pswitch_6c
    const-string/jumbo v0, "updateCarrierLock"

    return-object v0

    .line 652
    :pswitch_70
    const-string v0, "getCarrierLock"

    return-object v0

    .line 648
    :pswitch_73
    const-string v0, "checkFMMPassword"

    return-object v0

    .line 644
    :pswitch_76
    const-string v0, "haveFMMPassword"

    return-object v0

    .line 640
    :pswitch_79
    const-string/jumbo v0, "setLockFMMPassword"

    return-object v0

    .line 636
    :pswitch_7d
    const-string/jumbo v0, "requestRemoteLockInfo"

    return-object v0

    .line 632
    :pswitch_81
    const-string v0, "checkRemoteLockPassword"

    return-object v0

    .line 628
    :pswitch_84
    const-string/jumbo v0, "setRemoteLock"

    return-object v0

    .line 624
    :pswitch_88
    const-string/jumbo v0, "setKnoxGuard"

    return-object v0

    .line 620
    :pswitch_8c
    const-string/jumbo v0, "unregisterRemoteLockCallback"

    return-object v0

    .line 616
    :pswitch_90
    const-string/jumbo v0, "registerRemoteLockCallback"

    return-object v0

    .line 612
    :pswitch_94
    const-string v0, "isWeakEscrowTokenValid"

    return-object v0

    .line 608
    :pswitch_97
    const-string v0, "isWeakEscrowTokenActive"

    return-object v0

    .line 604
    :pswitch_9a
    const-string/jumbo v0, "removeWeakEscrowToken"

    return-object v0

    .line 600
    :pswitch_9e
    const-string v0, "addWeakEscrowToken"

    return-object v0

    .line 596
    :pswitch_a1
    const-string/jumbo v0, "unregisterWeakEscrowTokenRemovedListener"

    return-object v0

    .line 592
    :pswitch_a5
    const-string/jumbo v0, "registerWeakEscrowTokenRemovedListener"

    return-object v0

    .line 588
    :pswitch_a9
    const-string/jumbo v0, "removeCachedUnifiedChallenge"

    return-object v0

    .line 584
    :pswitch_ad
    const-string/jumbo v0, "tryUnlockWithCachedUnifiedChallenge"

    return-object v0

    .line 580
    :pswitch_b1
    const-string v0, "hasSecureLockScreen"

    return-object v0

    .line 576
    :pswitch_b4
    const-string v0, "closeSession"

    return-object v0

    .line 572
    :pswitch_b7
    const-string/jumbo v0, "recoverKeyChainSnapshot"

    return-object v0

    .line 568
    :pswitch_bb
    const-string/jumbo v0, "startRecoverySessionWithCertPath"

    return-object v0

    .line 564
    :pswitch_bf
    const-string v0, "getRecoverySecretTypes"

    return-object v0

    .line 560
    :pswitch_c2
    const-string/jumbo v0, "setRecoverySecretTypes"

    return-object v0

    .line 556
    :pswitch_c6
    const-string v0, "getRecoveryStatus"

    return-object v0

    .line 552
    :pswitch_c9
    const-string/jumbo v0, "setRecoveryStatus"

    return-object v0

    .line 548
    :pswitch_cd
    const-string/jumbo v0, "setServerParams"

    return-object v0

    .line 544
    :pswitch_d1
    const-string/jumbo v0, "setSnapshotCreatedPendingIntent"

    return-object v0

    .line 540
    :pswitch_d5
    const-string/jumbo v0, "removeKey"

    return-object v0

    .line 536
    :pswitch_d9
    const-string v0, "getKey"

    return-object v0

    .line 532
    :pswitch_dc
    const-string v0, "importKeyWithMetadata"

    return-object v0

    .line 528
    :pswitch_df
    const-string v0, "importKey"

    return-object v0

    .line 524
    :pswitch_e2
    const-string v0, "generateKeyWithMetadata"

    return-object v0

    .line 520
    :pswitch_e5
    const-string v0, "generateKey"

    return-object v0

    .line 516
    :pswitch_e8
    const-string v0, "getKeyChainSnapshot"

    return-object v0

    .line 512
    :pswitch_eb
    const-string v0, "initRecoveryServiceWithSigFile"

    return-object v0

    .line 508
    :pswitch_ee
    const-string v0, "hasPendingEscrowToken"

    return-object v0

    .line 504
    :pswitch_f1
    const-string v0, "getStrongAuthForUser"

    return-object v0

    .line 500
    :pswitch_f4
    const-string/jumbo v0, "userPresent"

    return-object v0

    .line 496
    :pswitch_f8
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 492
    :pswitch_fc
    const-string/jumbo v0, "scheduleNonStrongBiometricIdleTimeout"

    return-object v0

    .line 488
    :pswitch_100
    const-string/jumbo v0, "reportSuccessfulBiometricUnlock"

    return-object v0

    .line 484
    :pswitch_104
    const-string/jumbo v0, "requireStrongAuth"

    return-object v0

    .line 480
    :pswitch_108
    const-string/jumbo v0, "unregisterStrongAuthTracker"

    return-object v0

    .line 476
    :pswitch_10c
    const-string/jumbo v0, "registerStrongAuthTracker"

    return-object v0

    .line 472
    :pswitch_110
    const-string v0, "getSeparateProfileChallengeEnabled"

    return-object v0

    .line 468
    :pswitch_113
    const-string/jumbo v0, "setSeparateProfileChallengeEnabled"

    return-object v0

    .line 464
    :pswitch_117
    const-string v0, "getHashFactor"

    return-object v0

    .line 460
    :pswitch_11a
    const-string v0, "getCredentialType"

    return-object v0

    .line 456
    :pswitch_11d
    const-string/jumbo v0, "removeGatekeeperPasswordHandle"

    return-object v0

    .line 452
    :pswitch_121
    const-string/jumbo v0, "verifyGatekeeperPasswordHandle"

    return-object v0

    .line 448
    :pswitch_125
    const-string/jumbo v0, "verifyTiedProfileChallenge"

    return-object v0

    .line 444
    :pswitch_129
    const-string/jumbo v0, "verifyCredential"

    return-object v0

    .line 440
    :pswitch_12d
    const-string v0, "checkCredential"

    return-object v0

    .line 436
    :pswitch_130
    const-string/jumbo v0, "resetKeyStore"

    return-object v0

    .line 432
    :pswitch_134
    const-string/jumbo v0, "setLockCredential"

    return-object v0

    .line 428
    :pswitch_138
    const-string v0, "getString"

    return-object v0

    .line 424
    :pswitch_13b
    const-string v0, "getLong"

    return-object v0

    .line 420
    :pswitch_13e
    const-string v0, "getBoolean"

    return-object v0

    .line 416
    :pswitch_141
    const-string/jumbo v0, "setString"

    return-object v0

    .line 412
    :pswitch_145
    const-string/jumbo v0, "setLong"

    return-object v0

    .line 408
    :pswitch_149
    const-string/jumbo v0, "setBoolean"

    return-object v0

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_149
        :pswitch_145
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12d
        :pswitch_129
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_113
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
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

    .line 399
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3609
    const/16 v0, 0x5c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 787
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 791
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.widget.ILockSettings"

    .line 792
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 793
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    :cond_15
    packed-switch v9, :pswitch_data_810

    .line 803
    packed-switch v9, :pswitch_data_816

    .line 1844
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 799
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 800
    return v13

    .line 1834
    :pswitch_24
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1836
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1837
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1838
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    goto/16 :goto_80f

    .line 1818
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    :pswitch_3b
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1820
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 1822
    .local v1, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1824
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1825
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1826
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v4

    .line 1827
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1829
    goto/16 :goto_80f

    .line 1802
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Z
    :pswitch_62
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1804
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1806
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1808
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v3

    .line 1809
    .local v3, "_arg3":Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1811
    .local v4, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1813
    goto/16 :goto_80f

    .line 1784
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 1786
    .local v14, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 1788
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1790
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1792
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1793
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1794
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ILockSettings$Stub;->changeToken([BJ[BJI)Z

    move-result v0

    .line 1795
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1797
    goto/16 :goto_80f

    .line 1770
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":[B
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":I
    :pswitch_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1772
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1774
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1775
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1777
    .restart local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1779
    goto/16 :goto_80f

    .line 1760
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1761
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1762
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockFingerprintPassword(I)Z

    move-result v1

    .line 1763
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1765
    goto/16 :goto_80f

    .line 1750
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1751
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1752
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockBackupPin(I)Z

    move-result v1

    .line 1753
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1755
    goto/16 :goto_80f

    .line 1740
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1741
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPattern(I)Z

    move-result v1

    .line 1743
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1745
    goto/16 :goto_80f

    .line 1730
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPassword(I)Z

    move-result v1

    .line 1733
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1735
    goto/16 :goto_80f

    .line 1720
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPin(I)Z

    move-result v1

    .line 1723
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1725
    goto/16 :goto_80f

    .line 1708
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1711
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockFingerprintPassword(Ljava/lang/String;I)Z

    move-result v2

    .line 1713
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1715
    goto/16 :goto_80f

    .line 1696
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1699
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1700
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v2

    .line 1701
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1703
    goto/16 :goto_80f

    .line 1682
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_15e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1684
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1686
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1687
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v3

    .line 1689
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1691
    goto/16 :goto_80f

    .line 1670
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :pswitch_179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1673
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1674
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v2

    .line 1675
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1677
    goto/16 :goto_80f

    .line 1658
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1660
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1661
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1662
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v2

    .line 1663
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1665
    goto/16 :goto_80f

    .line 1647
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1650
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1651
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockFingerprintPassword(Ljava/lang/String;I)V

    .line 1652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    goto/16 :goto_80f

    .line 1636
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1639
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockBackupPin(Ljava/lang/String;I)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    goto/16 :goto_80f

    .line 1625
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1628
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1629
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPattern(Ljava/lang/String;I)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    goto/16 :goto_80f

    .line 1614
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1617
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPassword(Ljava/lang/String;I)V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    goto/16 :goto_80f

    .line 1603
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1606
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPin(Ljava/lang/String;I)V

    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    goto/16 :goto_80f

    .line 1595
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 1596
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V

    .line 1598
    goto/16 :goto_80f

    .line 1587
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1588
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1589
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSecurityDebugLevel(I)V

    .line 1590
    goto/16 :goto_80f

    .line 1577
    .end local v0    # "_arg0":I
    :pswitch_222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1579
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->addLog(ILjava/lang/String;)V

    .line 1582
    goto/16 :goto_80f

    .line 1567
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->isLockPasswordValid(I)Z

    move-result v1

    .line 1570
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1572
    goto/16 :goto_80f

    .line 1559
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1560
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->sendLockTypeChangedInfo(I)V

    .line 1562
    goto/16 :goto_80f

    .line 1550
    .end local v0    # "_arg0":I
    :pswitch_251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 1551
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    goto/16 :goto_80f

    .line 1538
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1540
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1541
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCarrierPassword([BI)Z

    move-result v2

    .line 1543
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1545
    goto/16 :goto_80f

    .line 1528
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_27b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1529
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveCarrierPassword(I)Z

    move-result v1

    .line 1531
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1533
    goto/16 :goto_80f

    .line 1517
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_28e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1519
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCarrierPassword([BI)V

    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    goto/16 :goto_80f

    .line 1508
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1509
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1510
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setCarrierLockEnabled(I)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    goto/16 :goto_80f

    .line 1498
    .end local v0    # "_arg0":I
    :pswitch_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1499
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1500
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->updateCarrierLock(I)Z

    move-result v1

    .line 1501
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1503
    goto/16 :goto_80f

    .line 1488
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1489
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getCarrierLock(I)Z

    move-result v1

    .line 1491
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1493
    goto/16 :goto_80f

    .line 1476
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1478
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1479
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkFMMPassword([BI)Z

    move-result v2

    .line 1481
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1483
    goto/16 :goto_80f

    .line 1466
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1467
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveFMMPassword(I)Z

    move-result v1

    .line 1469
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1471
    goto/16 :goto_80f

    .line 1455
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1457
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1458
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockFMMPassword([BI)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    goto/16 :goto_80f

    .line 1446
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1447
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->requestRemoteLockInfo(I)V

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    goto/16 :goto_80f

    .line 1431
    .end local v0    # "_arg0":I
    :pswitch_322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1433
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1435
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1437
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1438
    .local v3, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    goto/16 :goto_80f

    .line 1420
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IRemoteCallback;
    :pswitch_341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1422
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 1423
    .local v1, "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    .line 1425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    goto/16 :goto_80f

    .line 1408
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    :pswitch_358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1410
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 1411
    .restart local v1    # "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z

    move-result v2

    .line 1413
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1415
    goto/16 :goto_80f

    .line 1397
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v2    # "_result":Z
    :pswitch_373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1399
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v1

    .line 1400
    .local v1, "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    goto/16 :goto_80f

    .line 1386
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :pswitch_38a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1388
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v1

    .line 1389
    .restart local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    goto/16 :goto_80f

    .line 1372
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :pswitch_3a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1374
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1376
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1377
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenValid(J[BI)Z

    move-result v4

    .line 1379
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    goto/16 :goto_80f

    .line 1360
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_3bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1362
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1363
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenActive(JI)Z

    move-result v3

    .line 1365
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1367
    goto/16 :goto_80f

    .line 1348
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_3d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1350
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1351
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->removeWeakEscrowToken(JI)Z

    move-result v3

    .line 1353
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1355
    goto/16 :goto_80f

    .line 1334
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_3ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1336
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1338
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    move-result-object v2

    .line 1339
    .local v2, "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v3

    .line 1341
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {v11, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1343
    goto/16 :goto_80f

    .line 1324
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .end local v3    # "_result":J
    :pswitch_409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1325
    .local v0, "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1327
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1329
    goto/16 :goto_80f

    .line 1314
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1315
    .restart local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1317
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1319
    goto/16 :goto_80f

    .line 1305
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1306
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeCachedUnifiedChallenge(I)V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    goto/16 :goto_80f

    .line 1295
    .end local v0    # "_arg0":I
    :pswitch_446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1296
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v1

    .line 1298
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1300
    goto/16 :goto_80f

    .line 1287
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasSecureLockScreen()Z

    move-result v0

    .line 1288
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1290
    goto/16 :goto_80f

    .line 1279
    .end local v0    # "_result":Z
    :pswitch_465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->closeSession(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    goto/16 :goto_80f

    .line 1265
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1269
    .local v1, "_arg1":[B
    sget-object v2, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1270
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 1272
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1274
    goto/16 :goto_80f

    .line 1245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1247
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1249
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 1251
    .local v15, "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1253
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1255
    .local v17, "_arg4":[B
    sget-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1256
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings$Stub;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    .line 1258
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1260
    goto/16 :goto_80f

    .line 1237
    .end local v0    # "_result":[B
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :pswitch_4ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoverySecretTypes()[I

    move-result-object v0

    .line 1238
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1240
    goto/16 :goto_80f

    .line 1229
    .end local v0    # "_result":[I
    :pswitch_4d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1230
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoverySecretTypes([I)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    goto/16 :goto_80f

    .line 1221
    .end local v0    # "_arg0":[I
    :pswitch_4e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 1222
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1224
    goto/16 :goto_80f

    .line 1211
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1214
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    goto/16 :goto_80f

    .line 1202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1203
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setServerParams([B)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_80f

    .line 1193
    .end local v0    # "_arg0":[B
    :pswitch_513
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1194
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_80f

    .line 1184
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1186
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeKey(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    goto/16 :goto_80f

    .line 1174
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1179
    goto/16 :goto_80f

    .line 1160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1164
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1165
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1169
    goto/16 :goto_80f

    .line 1148
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1151
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    goto/16 :goto_80f

    .line 1136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_57a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1139
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 1141
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    goto/16 :goto_80f

    .line 1126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1131
    goto/16 :goto_80f

    .line 1118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    .line 1119
    .local v0, "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1121
    goto/16 :goto_80f

    .line 1106
    .end local v0    # "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :pswitch_5b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1110
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1111
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    goto/16 :goto_80f

    .line 1096
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    :pswitch_5c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1097
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasPendingEscrowToken(I)Z

    move-result v1

    .line 1099
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1101
    goto/16 :goto_80f

    .line 1086
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1087
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v1

    .line 1089
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    goto/16 :goto_80f

    .line 1077
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1078
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    goto/16 :goto_80f

    .line 1070
    .end local v0    # "_arg0":I
    :pswitch_5fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_80f

    .line 1062
    :pswitch_604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1063
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_80f

    .line 1051
    .end local v0    # "_arg0":I
    :pswitch_613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1053
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1054
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->reportSuccessfulBiometricUnlock(ZI)V

    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    goto/16 :goto_80f

    .line 1040
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1043
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_80f

    .line 1031
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 1032
    .local v0, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_80f

    .line 1022
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_64c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 1023
    .restart local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    goto/16 :goto_80f

    .line 1012
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_65f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1013
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v1

    .line 1015
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1017
    goto/16 :goto_80f

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1001
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1003
    .local v1, "_arg1":Z
    sget-object v2, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 1004
    .local v2, "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_80f

    .line 987
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    :pswitch_68d
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 989
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 990
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v2

    .line 992
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 994
    goto/16 :goto_80f

    .line 977
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_6a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result v1

    .line 980
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    goto/16 :goto_80f

    .line 968
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 969
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeGatekeeperPasswordHandle(J)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_80f

    .line 954
    .end local v0    # "_arg0":J
    :pswitch_6ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 956
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 958
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 959
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 961
    .local v0, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 963
    goto/16 :goto_80f

    .line 940
    .end local v0    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "_arg0":J
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    :pswitch_6eb
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 942
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 944
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 947
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 949
    goto/16 :goto_80f

    .line 926
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_70a
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 928
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 930
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 931
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 933
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 935
    goto/16 :goto_80f

    .line 912
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_729
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 914
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 916
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 917
    .local v2, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 919
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 921
    goto/16 :goto_80f

    .line 903
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_74c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 904
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    goto/16 :goto_80f

    .line 889
    .end local v0    # "_arg0":I
    :pswitch_75b
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 891
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 893
    .local v1, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 894
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    .line 896
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    goto/16 :goto_80f

    .line 875
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_77e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 880
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    goto/16 :goto_80f

    .line 861
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 865
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 866
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 868
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v11, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 870
    goto :goto_80f

    .line 847
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :pswitch_7b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 851
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    .line 854
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 856
    goto :goto_80f

    .line 834
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_7cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 839
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto :goto_80f

    .line 821
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_7e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 825
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 826
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto :goto_80f

    .line 808
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_7f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 812
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    nop

    .line 1847
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :goto_80f
    return v13

    :pswitch_data_810
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_816
    .packed-switch 0x1
        :pswitch_7f9
        :pswitch_7e3
        :pswitch_7cd
        :pswitch_7b3
        :pswitch_799
        :pswitch_77e
        :pswitch_75b
        :pswitch_74c
        :pswitch_729
        :pswitch_70a
        :pswitch_6eb
        :pswitch_6ca
        :pswitch_6bb
        :pswitch_6a8
        :pswitch_68d
        :pswitch_672
        :pswitch_65f
        :pswitch_64c
        :pswitch_639
        :pswitch_626
        :pswitch_613
        :pswitch_604
        :pswitch_5fc
        :pswitch_5ed
        :pswitch_5da
        :pswitch_5c7
        :pswitch_5b0
        :pswitch_5a4
        :pswitch_591
        :pswitch_57a
        :pswitch_563
        :pswitch_548
        :pswitch_535
        :pswitch_526
        :pswitch_513
        :pswitch_504
        :pswitch_4f1
        :pswitch_4e5
        :pswitch_4d6
        :pswitch_4ca
        :pswitch_491
        :pswitch_474
        :pswitch_465
        :pswitch_459
        :pswitch_446
        :pswitch_437
        :pswitch_420
        :pswitch_409
        :pswitch_3ea
        :pswitch_3d3
        :pswitch_3bc
        :pswitch_3a1
        :pswitch_38a
        :pswitch_373
        :pswitch_358
        :pswitch_341
        :pswitch_322
        :pswitch_313
        :pswitch_300
        :pswitch_2ed
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_2a1
        :pswitch_28e
        :pswitch_27b
        :pswitch_264
        :pswitch_251
        :pswitch_245
        :pswitch_232
        :pswitch_222
        :pswitch_216
        :pswitch_206
        :pswitch_1f3
        :pswitch_1e0
        :pswitch_1cd
        :pswitch_1ba
        :pswitch_1a7
        :pswitch_190
        :pswitch_179
        :pswitch_15e
        :pswitch_147
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f7
        :pswitch_e4
        :pswitch_d1
        :pswitch_b6
        :pswitch_89
        :pswitch_62
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
