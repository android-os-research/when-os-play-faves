.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final greylist-max-o TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_dismiss:I = 0x4

.field static final blacklist TRANSACTION_dismissKeyguardToLaunch:I = 0x17

.field static final greylist-max-o TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final greylist-max-o TRANSACTION_onBootCompleted:I = 0x14

.field static final greylist-max-o TRANSACTION_onDreamingStarted:I = 0x5

.field static final greylist-max-o TRANSACTION_onDreamingStopped:I = 0x6

.field static final greylist-max-o TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final greylist-max-o TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final greylist-max-o TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final greylist-max-o TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final greylist-max-o TRANSACTION_onScreenTurningOff:I = 0xd

.field static final greylist-max-o TRANSACTION_onScreenTurningOn:I = 0xb

.field static final greylist-max-o TRANSACTION_onShortPowerPressedGoHome:I = 0x16

.field static final greylist-max-o TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final greylist-max-o TRANSACTION_onStartedWakingUp:I = 0x9

.field static final blacklist TRANSACTION_onSystemKeyPressed:I = 0x18

.field static final greylist-max-o TRANSACTION_onSystemReady:I = 0x10

.field static final greylist-max-o TRANSACTION_setCurrentUser:I = 0x13

.field static final blacklist TRANSACTION_setDexOccluded:I = 0x19

.field static final greylist-max-o TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_setOccluded:I = 0x1

.field static final blacklist TRANSACTION_setPendingIntentAfterUnlock:I = 0x1a

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x12

.field static final blacklist TRANSACTION_startFingerprintAuthentication:I = 0x1c

.field static final greylist-max-o TRANSACTION_startKeyguardExitAnimation:I = 0x15

.field static final blacklist TRANSACTION_startedEarlyWakingUp:I = 0x1b

.field static final greylist-max-o TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 171
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 179
    if-nez p0, :cond_4

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 183
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_14

    .line 184
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardService;

    return-object v1

    .line 186
    :cond_14
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 195
    packed-switch p0, :pswitch_data_5e

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_5
    const-string/jumbo v0, "startFingerprintAuthentication"

    return-object v0

    .line 303
    :pswitch_9
    const-string/jumbo v0, "startedEarlyWakingUp"

    return-object v0

    .line 299
    :pswitch_d
    const-string v0, "setPendingIntentAfterUnlock"

    return-object v0

    .line 295
    :pswitch_10
    const-string v0, "setDexOccluded"

    return-object v0

    .line 291
    :pswitch_13
    const-string v0, "onSystemKeyPressed"

    return-object v0

    .line 287
    :pswitch_16
    const-string v0, "dismissKeyguardToLaunch"

    return-object v0

    .line 283
    :pswitch_19
    const-string v0, "onShortPowerPressedGoHome"

    return-object v0

    .line 279
    :pswitch_1c
    const-string/jumbo v0, "startKeyguardExitAnimation"

    return-object v0

    .line 275
    :pswitch_20
    const-string v0, "onBootCompleted"

    return-object v0

    .line 271
    :pswitch_23
    const-string v0, "setCurrentUser"

    return-object v0

    .line 267
    :pswitch_26
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 263
    :pswitch_2a
    const-string v0, "doKeyguardTimeout"

    return-object v0

    .line 259
    :pswitch_2d
    const-string v0, "onSystemReady"

    return-object v0

    .line 255
    :pswitch_30
    const-string v0, "setKeyguardEnabled"

    return-object v0

    .line 251
    :pswitch_33
    const-string v0, "onScreenTurnedOff"

    return-object v0

    .line 247
    :pswitch_36
    const-string v0, "onScreenTurningOff"

    return-object v0

    .line 243
    :pswitch_39
    const-string v0, "onScreenTurnedOn"

    return-object v0

    .line 239
    :pswitch_3c
    const-string v0, "onScreenTurningOn"

    return-object v0

    .line 235
    :pswitch_3f
    const-string v0, "onFinishedWakingUp"

    return-object v0

    .line 231
    :pswitch_42
    const-string v0, "onStartedWakingUp"

    return-object v0

    .line 227
    :pswitch_45
    const-string v0, "onFinishedGoingToSleep"

    return-object v0

    .line 223
    :pswitch_48
    const-string v0, "onStartedGoingToSleep"

    return-object v0

    .line 219
    :pswitch_4b
    const-string v0, "onDreamingStopped"

    return-object v0

    .line 215
    :pswitch_4e
    const-string v0, "onDreamingStarted"

    return-object v0

    .line 211
    :pswitch_51
    const-string v0, "dismiss"

    return-object v0

    .line 207
    :pswitch_54
    const-string/jumbo v0, "verifyUnlock"

    return-object v0

    .line 203
    :pswitch_58
    const-string v0, "addStateMonitorCallback"

    return-object v0

    .line 199
    :pswitch_5b
    const-string v0, "setOccluded"

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 190
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1004
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 322
    const-string v0, "com.android.internal.policy.IKeyguardService"

    .line 323
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 324
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_d
    packed-switch p1, :pswitch_data_15e

    .line 334
    packed-switch p1, :pswitch_data_164

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 330
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    return v1

    .line 541
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->startFingerprintAuthentication()V

    .line 542
    goto/16 :goto_15d

    .line 534
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->startedEarlyWakingUp(I)V

    .line 537
    goto/16 :goto_15d

    .line 524
    .end local v2    # "_arg0":I
    :pswitch_2d
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 526
    .local v2, "_arg0":Landroid/app/PendingIntent;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 527
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 529
    goto/16 :goto_15d

    .line 514
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 516
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 517
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setDexOccluded(ZZ)V

    .line 519
    goto/16 :goto_15d

    .line 506
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemKeyPressed(I)V

    .line 509
    goto/16 :goto_15d

    .line 498
    .end local v2    # "_arg0":I
    :pswitch_61
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 499
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 501
    goto/16 :goto_15d

    .line 492
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    .line 493
    goto/16 :goto_15d

    .line 483
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 485
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 486
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    .line 488
    goto/16 :goto_15d

    .line 477
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    .line 478
    goto/16 :goto_15d

    .line 470
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    .line 473
    goto/16 :goto_15d

    .line 462
    .end local v2    # "_arg0":I
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 463
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    .line 465
    goto/16 :goto_15d

    .line 454
    .end local v2    # "_arg0":Z
    :pswitch_a3
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 455
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 457
    goto/16 :goto_15d

    .line 448
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    .line 449
    goto/16 :goto_15d

    .line 441
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 442
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    .line 444
    goto/16 :goto_15d

    .line 435
    .end local v2    # "_arg0":Z
    :pswitch_c4
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    .line 436
    goto/16 :goto_15d

    .line 430
    :pswitch_c9
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    .line 431
    goto/16 :goto_15d

    .line 425
    :pswitch_ce
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    .line 426
    goto/16 :goto_15d

    .line 418
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v2

    .line 419
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 421
    goto/16 :goto_15d

    .line 412
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :pswitch_e3
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    .line 413
    goto/16 :goto_15d

    .line 403
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 406
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp(IZ)V

    .line 408
    goto :goto_15d

    .line 393
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 396
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    .line 398
    goto :goto_15d

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    .line 388
    goto :goto_15d

    .line 379
    .end local v2    # "_arg0":I
    :pswitch_111
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    .line 380
    goto :goto_15d

    .line 374
    :pswitch_115
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    .line 375
    goto :goto_15d

    .line 365
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 367
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 368
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 370
    goto :goto_15d

    .line 357
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v2

    .line 358
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 360
    goto :goto_15d

    .line 349
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v2

    .line 350
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 352
    goto :goto_15d

    .line 339
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 341
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 342
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    .line 344
    nop

    .line 549
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_15d
    return v1

    :pswitch_data_15e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_14e
        :pswitch_13f
        :pswitch_130
        :pswitch_119
        :pswitch_115
        :pswitch_111
        :pswitch_106
        :pswitch_f7
        :pswitch_e8
        :pswitch_e3
        :pswitch_d3
        :pswitch_ce
        :pswitch_c9
        :pswitch_c4
        :pswitch_b8
        :pswitch_b3
        :pswitch_a3
        :pswitch_97
        :pswitch_8b
        :pswitch_86
        :pswitch_76
        :pswitch_71
        :pswitch_61
        :pswitch_55
        :pswitch_45
        :pswitch_2d
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
