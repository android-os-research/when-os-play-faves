.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final greylist-max-o TRANSACTION_acceptHandover:I = 0x38

.field static final greylist-max-o TRANSACTION_acceptRingingCall:I = 0x23

.field static final greylist-max-o TRANSACTION_acceptRingingCallWithVideoState:I = 0x24

.field static final greylist-max-o TRANSACTION_addNewIncomingCall:I = 0x2b

.field static final blacklist TRANSACTION_addNewIncomingConference:I = 0x2c

.field static final greylist-max-o TRANSACTION_addNewUnknownCall:I = 0x2d

.field static final blacklist TRANSACTION_addOrRemoveTestCallCompanionApp:I = 0x43

.field static final greylist-max-o TRANSACTION_cancelMissedCallsNotification:I = 0x25

.field static final blacklist TRANSACTION_cleanupOrphanPhoneAccounts:I = 0x3d

.field static final blacklist TRANSACTION_cleanupStuckCalls:I = 0x3c

.field static final greylist-max-o TRANSACTION_clearAccounts:I = 0x12

.field static final blacklist TRANSACTION_createLaunchEmergencyDialerIntent:I = 0x34

.field static final greylist-max-o TRANSACTION_createManageBlockedNumbersIntent:I = 0x33

.field static final greylist-max-o TRANSACTION_dumpCallAnalytics:I = 0x1a

.field static final greylist-max-o TRANSACTION_enablePhoneAccount:I = 0x30

.field static final greylist-max-o TRANSACTION_endCall:I = 0x22

.field static final greylist-max-o TRANSACTION_getAdnUriForPhoneAccount:I = 0x28

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountHandles:I = 0xd

.field static final greylist-max-o TRANSACTION_getAllPhoneAccounts:I = 0xc

.field static final greylist-max-o TRANSACTION_getAllPhoneAccountsCount:I = 0xb

.field static final greylist-max-o TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x20

.field static final blacklist TRANSACTION_getCallStateUsingPackage:I = 0x21

.field static final greylist-max-o TRANSACTION_getCurrentTtyMode:I = 0x2a

.field static final greylist-max-o TRANSACTION_getDefaultDialerPackage:I = 0x17

.field static final blacklist TRANSACTION_getDefaultDialerPackageForUser:I = 0x18

.field static final greylist-max-o TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final greylist-max-o TRANSACTION_getDefaultPhoneApp:I = 0x16

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0x15

.field static final blacklist TRANSACTION_getOwnSelfManagedPhoneAccounts:I = 0x7

.field static final greylist-max-o TRANSACTION_getPhoneAccount:I = 0xa

.field static final greylist-max-o TRANSACTION_getPhoneAccountsForPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x8

.field static final greylist-max-o TRANSACTION_getSelfManagedPhoneAccounts:I = 0x6

.field static final greylist-max-o TRANSACTION_getSimCallManager:I = 0xe

.field static final greylist-max-o TRANSACTION_getSimCallManagerForUser:I = 0xf

.field static final greylist-max-o TRANSACTION_getSystemDialerPackage:I = 0x19

.field static final greylist-max-o TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x14

.field static final blacklist TRANSACTION_handleCallIntent:I = 0x3b

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0x26

.field static final greylist-max-o TRANSACTION_handlePinMmiForPhoneAccount:I = 0x27

.field static final blacklist TRANSACTION_hasManageOngoingCallsPermission:I = 0x1d

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x1c

.field static final blacklist TRANSACTION_isInEmergencyCall:I = 0x3a

.field static final greylist-max-o TRANSACTION_isInManagedCall:I = 0x1e

.field static final blacklist TRANSACTION_isInSelfManagedCall:I = 0x47

.field static final greylist-max-o TRANSACTION_isIncomingCallPermitted:I = 0x35

.field static final greylist-max-o TRANSACTION_isOutgoingCallPermitted:I = 0x36

.field static final greylist-max-o TRANSACTION_isRinging:I = 0x1f

.field static final greylist-max-o TRANSACTION_isTtySupported:I = 0x29

.field static final greylist-max-o TRANSACTION_isVoiceMailNumber:I = 0x13

.field static final greylist-max-o TRANSACTION_placeCall:I = 0x2f

.field static final greylist-max-o TRANSACTION_registerPhoneAccount:I = 0x10

.field static final blacklist TRANSACTION_requestLogMark:I = 0x40

.field static final blacklist TRANSACTION_resetCarMode:I = 0x3e

.field static final greylist-max-o TRANSACTION_setDefaultDialer:I = 0x31

.field static final blacklist TRANSACTION_setSystemDialer:I = 0x44

.field static final blacklist TRANSACTION_setTestCallDiagnosticService:I = 0x46

.field static final blacklist TRANSACTION_setTestDefaultCallRedirectionApp:I = 0x3f

.field static final blacklist TRANSACTION_setTestDefaultCallScreeningApp:I = 0x42

.field static final blacklist TRANSACTION_setTestDefaultDialer:I = 0x45

.field static final blacklist TRANSACTION_setTestEmergencyPhoneAccountPackageNameFilter:I = 0x39

.field static final blacklist TRANSACTION_setTestPhoneAcctSuggestionComponent:I = 0x41

.field static final greylist-max-o TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final greylist-max-o TRANSACTION_showInCallScreen:I = 0x1

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0x1b

.field static final blacklist TRANSACTION_startConference:I = 0x2e

.field static final blacklist TRANSACTION_stopBlockSuppression:I = 0x32

.field static final greylist-max-o TRANSACTION_unregisterPhoneAccount:I = 0x11

.field static final greylist-max-o TRANSACTION_waitOnHandlers:I = 0x37


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 355
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 356
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 364
    if-nez p0, :cond_4

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_4
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 368
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_14

    .line 369
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ITelecomService;

    return-object v1

    .line 371
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 380
    packed-switch p0, :pswitch_data_106

    .line 668
    const/4 v0, 0x0

    return-object v0

    .line 664
    :pswitch_5
    const-string/jumbo v0, "isInSelfManagedCall"

    return-object v0

    .line 660
    :pswitch_9
    const-string/jumbo v0, "setTestCallDiagnosticService"

    return-object v0

    .line 656
    :pswitch_d
    const-string/jumbo v0, "setTestDefaultDialer"

    return-object v0

    .line 652
    :pswitch_11
    const-string/jumbo v0, "setSystemDialer"

    return-object v0

    .line 648
    :pswitch_15
    const-string v0, "addOrRemoveTestCallCompanionApp"

    return-object v0

    .line 644
    :pswitch_18
    const-string/jumbo v0, "setTestDefaultCallScreeningApp"

    return-object v0

    .line 640
    :pswitch_1c
    const-string/jumbo v0, "setTestPhoneAcctSuggestionComponent"

    return-object v0

    .line 636
    :pswitch_20
    const-string/jumbo v0, "requestLogMark"

    return-object v0

    .line 632
    :pswitch_24
    const-string/jumbo v0, "setTestDefaultCallRedirectionApp"

    return-object v0

    .line 628
    :pswitch_28
    const-string/jumbo v0, "resetCarMode"

    return-object v0

    .line 624
    :pswitch_2c
    const-string v0, "cleanupOrphanPhoneAccounts"

    return-object v0

    .line 620
    :pswitch_2f
    const-string v0, "cleanupStuckCalls"

    return-object v0

    .line 616
    :pswitch_32
    const-string/jumbo v0, "handleCallIntent"

    return-object v0

    .line 612
    :pswitch_36
    const-string/jumbo v0, "isInEmergencyCall"

    return-object v0

    .line 608
    :pswitch_3a
    const-string/jumbo v0, "setTestEmergencyPhoneAccountPackageNameFilter"

    return-object v0

    .line 604
    :pswitch_3e
    const-string v0, "acceptHandover"

    return-object v0

    .line 600
    :pswitch_41
    const-string/jumbo v0, "waitOnHandlers"

    return-object v0

    .line 596
    :pswitch_45
    const-string/jumbo v0, "isOutgoingCallPermitted"

    return-object v0

    .line 592
    :pswitch_49
    const-string/jumbo v0, "isIncomingCallPermitted"

    return-object v0

    .line 588
    :pswitch_4d
    const-string v0, "createLaunchEmergencyDialerIntent"

    return-object v0

    .line 584
    :pswitch_50
    const-string v0, "createManageBlockedNumbersIntent"

    return-object v0

    .line 580
    :pswitch_53
    const-string/jumbo v0, "stopBlockSuppression"

    return-object v0

    .line 576
    :pswitch_57
    const-string/jumbo v0, "setDefaultDialer"

    return-object v0

    .line 572
    :pswitch_5b
    const-string v0, "enablePhoneAccount"

    return-object v0

    .line 568
    :pswitch_5e
    const-string/jumbo v0, "placeCall"

    return-object v0

    .line 564
    :pswitch_62
    const-string/jumbo v0, "startConference"

    return-object v0

    .line 560
    :pswitch_66
    const-string v0, "addNewUnknownCall"

    return-object v0

    .line 556
    :pswitch_69
    const-string v0, "addNewIncomingConference"

    return-object v0

    .line 552
    :pswitch_6c
    const-string v0, "addNewIncomingCall"

    return-object v0

    .line 548
    :pswitch_6f
    const-string v0, "getCurrentTtyMode"

    return-object v0

    .line 544
    :pswitch_72
    const-string/jumbo v0, "isTtySupported"

    return-object v0

    .line 540
    :pswitch_76
    const-string v0, "getAdnUriForPhoneAccount"

    return-object v0

    .line 536
    :pswitch_79
    const-string/jumbo v0, "handlePinMmiForPhoneAccount"

    return-object v0

    .line 532
    :pswitch_7d
    const-string/jumbo v0, "handlePinMmi"

    return-object v0

    .line 528
    :pswitch_81
    const-string v0, "cancelMissedCallsNotification"

    return-object v0

    .line 524
    :pswitch_84
    const-string v0, "acceptRingingCallWithVideoState"

    return-object v0

    .line 520
    :pswitch_87
    const-string v0, "acceptRingingCall"

    return-object v0

    .line 516
    :pswitch_8a
    const-string v0, "endCall"

    return-object v0

    .line 512
    :pswitch_8d
    const-string v0, "getCallStateUsingPackage"

    return-object v0

    .line 508
    :pswitch_90
    const-string v0, "getCallState"

    return-object v0

    .line 504
    :pswitch_93
    const-string/jumbo v0, "isRinging"

    return-object v0

    .line 500
    :pswitch_97
    const-string/jumbo v0, "isInManagedCall"

    return-object v0

    .line 496
    :pswitch_9b
    const-string/jumbo v0, "hasManageOngoingCallsPermission"

    return-object v0

    .line 492
    :pswitch_9f
    const-string/jumbo v0, "isInCall"

    return-object v0

    .line 488
    :pswitch_a3
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 484
    :pswitch_a7
    const-string v0, "dumpCallAnalytics"

    return-object v0

    .line 480
    :pswitch_aa
    const-string/jumbo v0, "getSystemDialerPackage"

    return-object v0

    .line 476
    :pswitch_ae
    const-string v0, "getDefaultDialerPackageForUser"

    return-object v0

    .line 472
    :pswitch_b1
    const-string v0, "getDefaultDialerPackage"

    return-object v0

    .line 468
    :pswitch_b4
    const-string v0, "getDefaultPhoneApp"

    return-object v0

    .line 464
    :pswitch_b7
    const-string/jumbo v0, "getLine1Number"

    return-object v0

    .line 460
    :pswitch_bb
    const-string/jumbo v0, "getVoiceMailNumber"

    return-object v0

    .line 456
    :pswitch_bf
    const-string/jumbo v0, "isVoiceMailNumber"

    return-object v0

    .line 452
    :pswitch_c3
    const-string v0, "clearAccounts"

    return-object v0

    .line 448
    :pswitch_c6
    const-string/jumbo v0, "unregisterPhoneAccount"

    return-object v0

    .line 444
    :pswitch_ca
    const-string/jumbo v0, "registerPhoneAccount"

    return-object v0

    .line 440
    :pswitch_ce
    const-string/jumbo v0, "getSimCallManagerForUser"

    return-object v0

    .line 436
    :pswitch_d2
    const-string/jumbo v0, "getSimCallManager"

    return-object v0

    .line 432
    :pswitch_d6
    const-string v0, "getAllPhoneAccountHandles"

    return-object v0

    .line 428
    :pswitch_d9
    const-string v0, "getAllPhoneAccounts"

    return-object v0

    .line 424
    :pswitch_dc
    const-string v0, "getAllPhoneAccountsCount"

    return-object v0

    .line 420
    :pswitch_df
    const-string/jumbo v0, "getPhoneAccount"

    return-object v0

    .line 416
    :pswitch_e3
    const-string/jumbo v0, "getPhoneAccountsForPackage"

    return-object v0

    .line 412
    :pswitch_e7
    const-string/jumbo v0, "getPhoneAccountsSupportingScheme"

    return-object v0

    .line 408
    :pswitch_eb
    const-string/jumbo v0, "getOwnSelfManagedPhoneAccounts"

    return-object v0

    .line 404
    :pswitch_ef
    const-string/jumbo v0, "getSelfManagedPhoneAccounts"

    return-object v0

    .line 400
    :pswitch_f3
    const-string v0, "getCallCapablePhoneAccounts"

    return-object v0

    .line 396
    :pswitch_f6
    const-string/jumbo v0, "setUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 392
    :pswitch_fa
    const-string/jumbo v0, "getUserSelectedOutgoingPhoneAccount"

    return-object v0

    .line 388
    :pswitch_fe
    const-string v0, "getDefaultOutgoingPhoneAccount"

    return-object v0

    .line 384
    :pswitch_101
    const-string/jumbo v0, "showInCallScreen"

    return-object v0

    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 375
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2810
    const/16 v0, 0x46

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 675
    invoke-static {p1}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    const-string v0, "com.android.internal.telecom.ITelecomService"

    .line 680
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 681
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    :cond_d
    packed-switch p1, :pswitch_data_59a

    .line 691
    packed-switch p1, :pswitch_data_5a0

    .line 1419
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 687
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    return v1

    .line 1406
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1408
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1410
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1411
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    .line 1413
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1415
    goto/16 :goto_598

    .line 1397
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1398
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestCallDiagnosticService(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    goto/16 :goto_598

    .line 1388
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultDialer(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    goto/16 :goto_598

    .line 1379
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_59
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1380
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setSystemDialer(Landroid/content/ComponentName;)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    goto/16 :goto_598

    .line 1368
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1370
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1371
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addOrRemoveTestCallCompanionApp(Ljava/lang/String;Z)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    goto/16 :goto_598

    .line 1359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1360
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1361
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallScreeningApp(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    goto/16 :goto_598

    .line 1350
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1351
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestPhoneAcctSuggestionComponent(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    goto/16 :goto_598

    .line 1341
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1342
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->requestLogMark(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    goto/16 :goto_598

    .line 1332
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1333
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestDefaultCallRedirectionApp(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    goto/16 :goto_598

    .line 1325
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->resetCarMode()V

    .line 1326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    goto/16 :goto_598

    .line 1318
    :pswitch_c3
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupOrphanPhoneAccounts()I

    move-result v2

    .line 1319
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    goto/16 :goto_598

    .line 1312
    .end local v2    # "_result":I
    :pswitch_cf
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cleanupStuckCalls()V

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    goto/16 :goto_598

    .line 1302
    :pswitch_d7
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1304
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    goto/16 :goto_598

    .line 1294
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ee
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInEmergencyCall()Z

    move-result v2

    .line 1295
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1297
    goto/16 :goto_598

    .line 1286
    .end local v2    # "_result":Z
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setTestEmergencyPhoneAccountPackageNameFilter(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    goto/16 :goto_598

    .line 1273
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_109
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1275
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1277
    .local v3, "_arg1":I
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1278
    .local v4, "_arg2":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V

    .line 1280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    goto/16 :goto_598

    .line 1266
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telecom/PhoneAccountHandle;
    :pswitch_128
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->waitOnHandlers()V

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_598

    .line 1255
    :pswitch_130
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1257
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1260
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1262
    goto/16 :goto_598

    .line 1243
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_14b
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1245
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1246
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v4

    .line 1248
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1250
    goto/16 :goto_598

    .line 1233
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1236
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1238
    goto/16 :goto_598

    .line 1225
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_179
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->createManageBlockedNumbersIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1226
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1228
    goto/16 :goto_598

    .line 1219
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_185
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->stopBlockSuppression()V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    goto/16 :goto_598

    .line 1210
    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1212
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v3

    .line 1213
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1215
    goto/16 :goto_598

    .line 1198
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a0
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1200
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1201
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v4

    .line 1203
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1205
    goto/16 :goto_598

    .line 1183
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1bb
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1185
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1187
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1190
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_598

    .line 1170
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_1de
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1172
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1174
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1175
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    goto/16 :goto_598

    .line 1159
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_1fb
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1161
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1162
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    goto/16 :goto_598

    .line 1148
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_216
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1150
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1151
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_598

    .line 1137
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_231
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1139
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1140
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_598

    .line 1125
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1127
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1130
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    goto/16 :goto_598

    .line 1113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1116
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1118
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1120
    goto/16 :goto_598

    .line 1101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_27a
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1103
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1106
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1108
    goto/16 :goto_598

    .line 1087
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_295
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1089
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1094
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1096
    goto/16 :goto_598

    .line 1075
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_2b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1078
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1080
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1082
    goto/16 :goto_598

    .line 1066
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1067
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_598

    .line 1055
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1058
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_598

    .line 1046
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    goto/16 :goto_598

    .line 1036
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall(Ljava/lang/String;)Z

    move-result v3

    .line 1039
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1041
    goto/16 :goto_598

    .line 1024
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_30f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1029
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    goto/16 :goto_598

    .line 1016
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_326
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v2

    .line 1017
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    goto/16 :goto_598

    .line 1007
    .end local v2    # "_result":I
    :pswitch_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v3

    .line 1010
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1012
    goto/16 :goto_598

    .line 995
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 997
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1000
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_598

    .line 985
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 986
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v3

    .line 988
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 990
    goto/16 :goto_598

    .line 973
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 975
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 978
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 980
    goto/16 :goto_598

    .line 964
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 965
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_598

    .line 956
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_395
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v2

    .line 957
    .local v2, "_result":Landroid/telecom/TelecomAnalytics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 959
    goto/16 :goto_598

    .line 949
    .end local v2    # "_result":Landroid/telecom/TelecomAnalytics;
    :pswitch_3a1
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    goto/16 :goto_598

    .line 940
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 945
    goto/16 :goto_598

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3c0
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    goto/16 :goto_598

    .line 925
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3cc
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 926
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 928
    goto/16 :goto_598

    .line 912
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_3d8
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 914
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 917
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 919
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    goto/16 :goto_598

    .line 898
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_3f7
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 900
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 903
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 905
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    goto/16 :goto_598

    .line 882
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_416
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 884
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 886
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 888
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 889
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 891
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 893
    goto/16 :goto_598

    .line 873
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto/16 :goto_598

    .line 864
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_448
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 865
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_598

    .line 855
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :pswitch_45b
    sget-object v2, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccount;

    .line 856
    .local v2, "_arg0":Landroid/telecom/PhoneAccount;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    goto/16 :goto_598

    .line 845
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccount;
    :pswitch_46e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 846
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 848
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 850
    goto/16 :goto_598

    .line 835
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 838
    .restart local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 840
    goto/16 :goto_598

    .line 827
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_494
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 828
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 830
    goto/16 :goto_598

    .line 820
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_4a0
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 821
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 823
    goto/16 :goto_598

    .line 813
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccount;>;"
    :pswitch_4ac
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v2

    .line 814
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    goto/16 :goto_598

    .line 802
    .end local v2    # "_result":I
    :pswitch_4b8
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 804
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 807
    .local v4, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 809
    goto/16 :goto_598

    .line 792
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telecom/PhoneAccount;
    :pswitch_4d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 795
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 797
    goto/16 :goto_598

    .line 780
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_4e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 782
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 785
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 787
    goto/16 :goto_598

    .line 768
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_4fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 770
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 771
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 773
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 775
    goto/16 :goto_598

    .line 756
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 759
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 761
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 763
    goto :goto_598

    .line 742
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_52a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 744
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 746
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 749
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 751
    goto :goto_598

    .line 733
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_544
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 734
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto :goto_598

    .line 723
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :pswitch_556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 726
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 728
    goto :goto_598

    .line 709
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_568
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 711
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 714
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 716
    .local v5, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 718
    goto :goto_598

    .line 696
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_582
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 698
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 700
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 701
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    nop

    .line 1422
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_598
    return v1

    nop

    :pswitch_data_59a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a0
    .packed-switch 0x1
        :pswitch_582
        :pswitch_568
        :pswitch_556
        :pswitch_544
        :pswitch_52a
        :pswitch_514
        :pswitch_4fd
        :pswitch_4e6
        :pswitch_4d3
        :pswitch_4b8
        :pswitch_4ac
        :pswitch_4a0
        :pswitch_494
        :pswitch_481
        :pswitch_46e
        :pswitch_45b
        :pswitch_448
        :pswitch_439
        :pswitch_416
        :pswitch_3f7
        :pswitch_3d8
        :pswitch_3cc
        :pswitch_3c0
        :pswitch_3ad
        :pswitch_3a1
        :pswitch_395
        :pswitch_386
        :pswitch_36f
        :pswitch_35c
        :pswitch_345
        :pswitch_332
        :pswitch_326
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2cb
        :pswitch_2b4
        :pswitch_295
        :pswitch_27a
        :pswitch_263
        :pswitch_24c
        :pswitch_231
        :pswitch_216
        :pswitch_1fb
        :pswitch_1de
        :pswitch_1bb
        :pswitch_1a0
        :pswitch_18d
        :pswitch_185
        :pswitch_179
        :pswitch_166
        :pswitch_14b
        :pswitch_130
        :pswitch_128
        :pswitch_109
        :pswitch_fa
        :pswitch_ee
        :pswitch_d7
        :pswitch_cf
        :pswitch_c3
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_4a
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
