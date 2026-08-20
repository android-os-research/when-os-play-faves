.class public abstract Landroid/hardware/biometrics/IBiometricService$Stub;
.super Landroid/os/Binder;
.source "IBiometricService.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x3

.field static final blacklist TRANSACTION_canAuthenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x4

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorIds:I = 0xb

.field static final blacklist TRANSACTION_getCurrentModality:I = 0xe

.field static final blacklist TRANSACTION_getCurrentStrength:I = 0xd

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_getSupportedModalities:I = 0xf

.field static final blacklist TRANSACTION_hasEnrolledBiometrics:I = 0x6

.field static final blacklist TRANSACTION_invalidateAuthenticatorIds:I = 0xa

.field static final blacklist TRANSACTION_onReadyForAuthentication:I = 0x9

.field static final blacklist TRANSACTION_registerAuthenticator:I = 0x7

.field static final blacklist TRANSACTION_registerEnabledOnKeyguardCallback:I = 0x8

.field static final blacklist TRANSACTION_resetLockoutTimeBound:I = 0xc

.field static final blacklist TRANSACTION_semAddFailedAttempt:I = 0x11

.field static final blacklist TRANSACTION_semGetFailedAttempts:I = 0x13

.field static final blacklist TRANSACTION_semGetPromptInfo:I = 0x10

.field static final blacklist TRANSACTION_semResetFailedAttempts:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricService;

    if-eqz v1, :cond_14

    .line 130
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricService;

    return-object v1

    .line 132
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 141
    packed-switch p0, :pswitch_data_46

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 217
    :pswitch_5
    const-string/jumbo v0, "semGetFailedAttempts"

    return-object v0

    .line 213
    :pswitch_9
    const-string/jumbo v0, "semResetFailedAttempts"

    return-object v0

    .line 209
    :pswitch_d
    const-string/jumbo v0, "semAddFailedAttempt"

    return-object v0

    .line 205
    :pswitch_11
    const-string/jumbo v0, "semGetPromptInfo"

    return-object v0

    .line 201
    :pswitch_15
    const-string v0, "getSupportedModalities"

    return-object v0

    .line 197
    :pswitch_18
    const-string v0, "getCurrentModality"

    return-object v0

    .line 193
    :pswitch_1b
    const-string v0, "getCurrentStrength"

    return-object v0

    .line 189
    :pswitch_1e
    const-string/jumbo v0, "resetLockoutTimeBound"

    return-object v0

    .line 185
    :pswitch_22
    const-string v0, "getAuthenticatorIds"

    return-object v0

    .line 181
    :pswitch_25
    const-string v0, "invalidateAuthenticatorIds"

    return-object v0

    .line 177
    :pswitch_28
    const-string/jumbo v0, "onReadyForAuthentication"

    return-object v0

    .line 173
    :pswitch_2c
    const-string/jumbo v0, "registerEnabledOnKeyguardCallback"

    return-object v0

    .line 169
    :pswitch_30
    const-string/jumbo v0, "registerAuthenticator"

    return-object v0

    .line 165
    :pswitch_34
    const-string v0, "hasEnrolledBiometrics"

    return-object v0

    .line 161
    :pswitch_37
    const-string v0, "canAuthenticate"

    return-object v0

    .line 157
    :pswitch_3a
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 153
    :pswitch_3d
    const-string v0, "authenticate"

    return-object v0

    .line 149
    :pswitch_40
    const-string v0, "getSensorProperties"

    return-object v0

    .line 145
    :pswitch_43
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
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

    .line 136
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 902
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 228
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 232
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.biometrics.IBiometricService"

    .line 233
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 234
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    :cond_15
    packed-switch v9, :pswitch_data_20c

    .line 244
    packed-switch v9, :pswitch_data_212

    .line 488
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 240
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v13

    .line 479
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->semGetFailedAttempts(I)I

    move-result v1

    .line 482
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    goto/16 :goto_20b

    .line 468
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->semResetFailedAttempts(II)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_20b

    .line 457
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 460
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->semAddFailedAttempt(II)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_20b

    .line 447
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v1

    .line 450
    .local v1, "_result":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    goto/16 :goto_20b

    .line 437
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/biometrics/PromptInfo;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 438
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSupportedModalities(I)I

    move-result v1

    .line 440
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    goto/16 :goto_20b

    .line 421
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 428
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentModality(Ljava/lang/String;III)I

    move-result v4

    .line 430
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    goto/16 :goto_20b

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentStrength(I)I

    move-result v1

    .line 414
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    goto/16 :goto_20b

    .line 394
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 396
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 400
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 402
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 403
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_20b

    .line 384
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getAuthenticatorIds(I)[J

    move-result-object v1

    .line 387
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 389
    goto/16 :goto_20b

    .line 371
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[J
    :pswitch_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 376
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_20b

    .line 360
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 362
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->onReadyForAuthentication(JI)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_20b

    .line 349
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    move-result-object v0

    .line 351
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_20b

    .line 334
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .end local v1    # "_arg1":I
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-result-object v3

    .line 341
    .local v3, "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_20b

    .line 322
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/hardware/biometrics/IBiometricAuthenticator;
    :pswitch_153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {v8, v0, v1}, Landroid/hardware/biometrics/IBiometricService$Stub;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v2

    .line 327
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_20b

    .line 306
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_16a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->canAuthenticate(Ljava/lang/String;III)I

    move-result v4

    .line 315
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    goto/16 :goto_20b

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 295
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 298
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_20b

    .line 273
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_19f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 275
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 277
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 279
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v18

    .line 281
    .local v18, "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 283
    .local v19, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/hardware/biometrics/PromptInfo;

    .line 284
    .local v20, "_arg5":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v0

    .line 286
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    goto :goto_20b

    .line 263
    .end local v0    # "_result":J
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/hardware/biometrics/PromptInfo;
    :pswitch_1db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 266
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 268
    goto :goto_20b

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorPropertiesInternal;>;"
    :pswitch_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 253
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 256
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 258
    nop

    .line 491
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_20b
    return v13

    :pswitch_data_20c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_1ed
        :pswitch_1db
        :pswitch_19f
        :pswitch_189
        :pswitch_16a
        :pswitch_153
        :pswitch_134
        :pswitch_11d
        :pswitch_10a
        :pswitch_ef
        :pswitch_dc
        :pswitch_b5
        :pswitch_a2
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
