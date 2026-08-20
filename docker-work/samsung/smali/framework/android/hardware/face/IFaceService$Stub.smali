.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_semAuthenticate:I = 0x1f

.field static final blacklist TRANSACTION_semEnroll:I = 0x20

.field static final blacklist TRANSACTION_semGetRemainingLockoutTime:I = 0x2e

.field static final blacklist TRANSACTION_semGetSecurityLevel:I = 0x2c

.field static final blacklist TRANSACTION_semGetTrustAppVersion:I = 0x27

.field static final blacklist TRANSACTION_semIsEnrollSession:I = 0x21

.field static final blacklist TRANSACTION_semIsFrameworkHandleLockout:I = 0x2d

.field static final blacklist TRANSACTION_semIsSessionClose:I = 0x2b

.field static final blacklist TRANSACTION_semPauseAuth:I = 0x24

.field static final blacklist TRANSACTION_semPauseEnroll:I = 0x22

.field static final blacklist TRANSACTION_semPrepareForAuthentication:I = 0x1e

.field static final blacklist TRANSACTION_semResetAuthenticationTimeout:I = 0x26

.field static final blacklist TRANSACTION_semResumeAuth:I = 0x25

.field static final blacklist TRANSACTION_semResumeEnroll:I = 0x23

.field static final blacklist TRANSACTION_semSessionClose:I = 0x2a

.field static final blacklist TRANSACTION_semSessionOpen:I = 0x29

.field static final blacklist TRANSACTION_semShouldRemoveTemplate:I = 0x2f

.field static final blacklist TRANSACTION_semUpdateTrustApp:I = 0x28

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 233
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 234
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 242
    if-nez p0, :cond_4

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_4
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 246
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_14

    .line 247
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceService;

    return-object v1

    .line 249
    :cond_14
    new-instance v1, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 258
    packed-switch p0, :pswitch_data_ac

    .line 450
    const/4 v0, 0x0

    return-object v0

    .line 446
    :pswitch_5
    const-string/jumbo v0, "semShouldRemoveTemplate"

    return-object v0

    .line 442
    :pswitch_9
    const-string/jumbo v0, "semGetRemainingLockoutTime"

    return-object v0

    .line 438
    :pswitch_d
    const-string/jumbo v0, "semIsFrameworkHandleLockout"

    return-object v0

    .line 434
    :pswitch_11
    const-string/jumbo v0, "semGetSecurityLevel"

    return-object v0

    .line 430
    :pswitch_15
    const-string/jumbo v0, "semIsSessionClose"

    return-object v0

    .line 426
    :pswitch_19
    const-string/jumbo v0, "semSessionClose"

    return-object v0

    .line 422
    :pswitch_1d
    const-string/jumbo v0, "semSessionOpen"

    return-object v0

    .line 418
    :pswitch_21
    const-string/jumbo v0, "semUpdateTrustApp"

    return-object v0

    .line 414
    :pswitch_25
    const-string/jumbo v0, "semGetTrustAppVersion"

    return-object v0

    .line 410
    :pswitch_29
    const-string/jumbo v0, "semResetAuthenticationTimeout"

    return-object v0

    .line 406
    :pswitch_2d
    const-string/jumbo v0, "semResumeAuth"

    return-object v0

    .line 402
    :pswitch_31
    const-string/jumbo v0, "semPauseAuth"

    return-object v0

    .line 398
    :pswitch_35
    const-string/jumbo v0, "semResumeEnroll"

    return-object v0

    .line 394
    :pswitch_39
    const-string/jumbo v0, "semPauseEnroll"

    return-object v0

    .line 390
    :pswitch_3d
    const-string/jumbo v0, "semIsEnrollSession"

    return-object v0

    .line 386
    :pswitch_41
    const-string/jumbo v0, "semEnroll"

    return-object v0

    .line 382
    :pswitch_45
    const-string/jumbo v0, "semAuthenticate"

    return-object v0

    .line 378
    :pswitch_49
    const-string/jumbo v0, "semPrepareForAuthentication"

    return-object v0

    .line 374
    :pswitch_4d
    const-string/jumbo v0, "registerAuthenticators"

    return-object v0

    .line 370
    :pswitch_51
    const-string v0, "getFeature"

    return-object v0

    .line 366
    :pswitch_54
    const-string/jumbo v0, "setFeature"

    return-object v0

    .line 362
    :pswitch_58
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 358
    :pswitch_5b
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 354
    :pswitch_5f
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 350
    :pswitch_62
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 346
    :pswitch_65
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 342
    :pswitch_68
    const-string v0, "hasEnrolledFaces"

    return-object v0

    .line 338
    :pswitch_6b
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 334
    :pswitch_6f
    const-string v0, "generateChallenge"

    return-object v0

    .line 330
    :pswitch_72
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 326
    :pswitch_75
    const-string v0, "getEnrolledFaces"

    return-object v0

    .line 322
    :pswitch_78
    const-string/jumbo v0, "removeAll"

    return-object v0

    .line 318
    :pswitch_7c
    const-string/jumbo v0, "remove"

    return-object v0

    .line 314
    :pswitch_80
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 310
    :pswitch_83
    const-string v0, "enrollRemotely"

    return-object v0

    .line 306
    :pswitch_86
    const-string v0, "enroll"

    return-object v0

    .line 302
    :pswitch_89
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 298
    :pswitch_8c
    const-string v0, "cancelFaceDetect"

    return-object v0

    .line 294
    :pswitch_8f
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 290
    :pswitch_92
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 286
    :pswitch_96
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 282
    :pswitch_9a
    const-string v0, "detectFace"

    return-object v0

    .line 278
    :pswitch_9d
    const-string v0, "authenticate"

    return-object v0

    .line 274
    :pswitch_a0
    const-string v0, "getSensorProperties"

    return-object v0

    .line 270
    :pswitch_a3
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 266
    :pswitch_a6
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 262
    :pswitch_a9
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
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

    .line 253
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2087
    const/16 v0, 0x2e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 457
    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.hardware.face.IFaceService"

    .line 462
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 463
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    :cond_15
    packed-switch v14, :pswitch_data_654

    .line 473
    packed-switch v14, :pswitch_data_65a

    .line 1103
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 469
    :pswitch_21
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    return v10

    .line 1096
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semShouldRemoveTemplate()Z

    move-result v0

    .line 1097
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1099
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1087
    .end local v0    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1088
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->semGetRemainingLockoutTime(I)I

    move-result v1

    .line 1090
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1079
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsFrameworkHandleLockout()Z

    move-result v0

    .line 1080
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1082
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1070
    .end local v0    # "_result":Z
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1071
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->semGetSecurityLevel(Z)I

    move-result v1

    .line 1073
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1062
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsSessionClose()Z

    move-result v0

    .line 1063
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1065
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1056
    .end local v0    # "_result":Z
    :pswitch_7e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionClose()V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1050
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionOpen()V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1034
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1036
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1038
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1040
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 1042
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1043
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1026
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_c2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1019
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResetAuthenticationTimeout()Z

    move-result v0

    .line 1020
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1022
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1013
    .end local v0    # "_result":Z
    :pswitch_e0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeAuth()V

    .line 1014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1007
    :pswitch_eb
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseAuth()V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 1001
    :pswitch_f6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeEnroll()V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 995
    :pswitch_101
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseEnroll()V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 988
    :pswitch_10c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsEnrollSession()Z

    move-result v0

    .line 989
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 991
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 963
    .end local v0    # "_result":Z
    :pswitch_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 965
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 967
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 969
    .local v18, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v19

    .line 971
    .local v19, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 973
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 975
    .local v21, "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/Surface;

    .line 977
    .local v22, "_arg6":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 979
    .local v23, "_arg7":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 980
    .local v24, "_arg8":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/face/IFaceService$Stub;->semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J

    move-result-wide v0

    .line 982
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 984
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 941
    .end local v0    # "_result":J
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":[I
    .end local v22    # "_arg6":Landroid/view/Surface;
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Landroid/os/Bundle;
    :pswitch_175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 943
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 945
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 947
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v19

    .line 949
    .restart local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 951
    .restart local v20    # "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 953
    .local v21, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 954
    .local v22, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/face/IFaceService$Stub;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J

    move-result-wide v0

    .line 956
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 958
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_652

    .line 914
    .end local v0    # "_result":J
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/Bundle;
    .end local v22    # "_arg6":[B
    :pswitch_1bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 916
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 918
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 920
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 922
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 924
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v22

    .line 926
    .local v22, "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 928
    .local v23, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 930
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 932
    .local v25, "_arg8":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 933
    .local v26, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/face/IFaceService$Stub;->semPrepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    move-object v14, v12

    goto/16 :goto_652

    .line 905
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Z
    .end local v26    # "_arg9":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_213
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 906
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Ljava/util/List;)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    move-object v14, v12

    goto/16 :goto_652

    .line 888
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_228
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 890
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 892
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 894
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 896
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 897
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    move-object v14, v12

    goto/16 :goto_652

    .line 867
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_256
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 869
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 871
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 873
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 875
    .local v11, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 877
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v17

    .line 879
    .local v17, "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 880
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move-object v14, v12

    goto/16 :goto_652

    .line 856
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":[B
    .end local v17    # "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v18    # "_arg6":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_291
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v0

    .line 858
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    move-object v14, v12

    goto/16 :goto_652

    .line 839
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2ac
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 841
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 843
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 845
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 847
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 848
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object v14, v12

    goto/16 :goto_652

    .line 827
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d6
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 829
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v2

    .line 832
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 834
    move-object v14, v12

    goto/16 :goto_652

    .line 814
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f1
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 816
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 819
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    move-object v14, v12

    goto/16 :goto_652

    .line 802
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_310
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 804
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v2

    .line 807
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    move-object v14, v12

    goto/16 :goto_652

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32b
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 790
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 792
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v3

    .line 795
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 797
    move-object v14, v12

    goto/16 :goto_652

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34a
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 773
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 775
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 777
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 780
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    move-object v14, v12

    goto/16 :goto_652

    .line 754
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_375
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 756
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 758
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 760
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 762
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 763
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    move-object v14, v12

    goto/16 :goto_652

    .line 742
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3a3
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 744
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v2

    .line 747
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    move-object v14, v12

    goto/16 :goto_652

    .line 728
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3be
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 730
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 735
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 737
    move-object v14, v12

    goto/16 :goto_652

    .line 713
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3dd
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 715
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 717
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 719
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    move-object v14, v12

    goto/16 :goto_652

    .line 696
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_400
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 698
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 700
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 702
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 704
    .restart local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 705
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object v14, v12

    goto/16 :goto_652

    .line 685
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_42e
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 687
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 688
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object v14, v12

    goto/16 :goto_652

    .line 665
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_445
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 667
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 669
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 671
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v10

    .line 673
    .local v10, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 676
    .local v16, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v0

    .line 678
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 680
    move-object v14, v12

    goto/16 :goto_652

    .line 641
    .end local v0    # "_result":J
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg5":[I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_47d
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 643
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 645
    .local v10, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 647
    .local v11, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v16

    .line 649
    .local v16, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 651
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 653
    .local v18, "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/Surface;

    .line 655
    .local v19, "_arg6":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 656
    .local v20, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    .line 658
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 660
    move-object v14, v12

    goto/16 :goto_652

    .line 626
    .end local v0    # "_result":J
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[I
    .end local v19    # "_arg6":Landroid/view/Surface;
    .end local v20    # "_arg7":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_4c9
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 628
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 630
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 632
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 633
    .local v9, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object v14, v12

    goto/16 :goto_652

    .line 613
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4ee
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 615
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 618
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object v14, v12

    goto/16 :goto_652

    .line 600
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_509
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 602
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 605
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object v14, v12

    goto/16 :goto_652

    .line 589
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_524
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 592
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    move-object v14, v12

    goto/16 :goto_652

    .line 562
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_53b
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 564
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 566
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 568
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 570
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 572
    .restart local v21    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v22

    .line 574
    .restart local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 576
    .restart local v23    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 578
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 580
    .local v26, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 581
    .local v28, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-wide/from16 v9, v24

    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v28

    invoke-virtual/range {v0 .. v12}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_652

    .line 546
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .end local v28    # "_arg9":Z
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58c
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 548
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 552
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v4

    .line 555
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 557
    goto/16 :goto_652

    .line 526
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b2
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 528
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 530
    .local v9, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 532
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v12

    .line 534
    .local v12, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 536
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 537
    .local v17, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 539
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 541
    goto :goto_652

    .line 514
    .end local v0    # "_result":J
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":J
    .end local v12    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_5e9
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v2

    .line 519
    .local v2, "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 521
    goto :goto_652

    .line 504
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_603
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 509
    goto :goto_652

    .line 492
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_618
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 495
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v2

    .line 497
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 499
    goto :goto_652

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_631
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 482
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 485
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 487
    nop

    .line 1106
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_652
    const/4 v0, 0x1

    return v0

    :pswitch_data_654
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_65a
    .packed-switch 0x1
        :pswitch_631
        :pswitch_618
        :pswitch_603
        :pswitch_5e9
        :pswitch_5b2
        :pswitch_58c
        :pswitch_53b
        :pswitch_524
        :pswitch_509
        :pswitch_4ee
        :pswitch_4c9
        :pswitch_47d
        :pswitch_445
        :pswitch_42e
        :pswitch_400
        :pswitch_3dd
        :pswitch_3be
        :pswitch_3a3
        :pswitch_375
        :pswitch_34a
        :pswitch_32b
        :pswitch_310
        :pswitch_2f1
        :pswitch_2d6
        :pswitch_2ac
        :pswitch_291
        :pswitch_256
        :pswitch_228
        :pswitch_213
        :pswitch_1bc
        :pswitch_175
        :pswitch_11b
        :pswitch_10c
        :pswitch_101
        :pswitch_f6
        :pswitch_eb
        :pswitch_e0
        :pswitch_d1
        :pswitch_c2
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_6f
        :pswitch_59
        :pswitch_4a
        :pswitch_34
        :pswitch_25
    .end packed-switch
.end method
