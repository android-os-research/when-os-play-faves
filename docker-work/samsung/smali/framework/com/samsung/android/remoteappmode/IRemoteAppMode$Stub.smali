.class public abstract Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;
.super Landroid/os/Binder;
.source "IRemoteAppMode.java"

# interfaces
.implements Lcom/samsung/android/remoteappmode/IRemoteAppMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/IRemoteAppMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearAll:I = 0x11

.field static final blacklist TRANSACTION_createVirtualDisplay:I = 0x1

.field static final blacklist TRANSACTION_forceStopPackage:I = 0x16

.field static final blacklist TRANSACTION_getLastAnr:I = 0x1b

.field static final blacklist TRANSACTION_getProtocolVersion:I = 0x13

.field static final blacklist TRANSACTION_isAllowed:I = 0x6

.field static final blacklist TRANSACTION_launchApplication:I = 0x5

.field static final blacklist TRANSACTION_moveDisplayToTop:I = 0x4

.field static final blacklist TRANSACTION_registerRemoteAppModeListener:I = 0xf

.field static final blacklist TRANSACTION_registerRotationChangeListener:I = 0xb

.field static final blacklist TRANSACTION_registerSecureAppChangedListener:I = 0x7

.field static final blacklist TRANSACTION_registerStartActivityInterceptListener:I = 0xd

.field static final blacklist TRANSACTION_registerTaskChangeListener:I = 0x9

.field static final blacklist TRANSACTION_releaseVirtualDisplay:I = 0x2

.field static final blacklist TRANSACTION_resizeVirtualDisplay:I = 0x3

.field static final blacklist TRANSACTION_sendNotificationAction:I = 0x15

.field static final blacklist TRANSACTION_sendNotificationContent:I = 0x14

.field static final blacklist TRANSACTION_sendPendingIntent:I = 0x12

.field static final blacklist TRANSACTION_setLTWProtocolVersion:I = 0x18

.field static final blacklist TRANSACTION_startRFCommService:I = 0x19

.field static final blacklist TRANSACTION_stopRFCommService:I = 0x1a

.field static final blacklist TRANSACTION_transferTaskWithoutIntercept:I = 0x17

.field static final blacklist TRANSACTION_unregisterRemoteAppModeListener:I = 0x10

.field static final blacklist TRANSACTION_unregisterRotationChangeListener:I = 0xc

.field static final blacklist TRANSACTION_unregisterSecureAppChangedListener:I = 0x8

.field static final blacklist TRANSACTION_unregisterStartActivityInterceptListener:I = 0xe

.field static final blacklist TRANSACTION_unregisterTaskChangeListener:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppMode;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 131
    if-nez p0, :cond_4

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_4
    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    if-eqz v1, :cond_14

    .line 136
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    return-object v1

    .line 138
    :cond_14
    new-instance v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 147
    packed-switch p0, :pswitch_data_6a

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 255
    :pswitch_5
    const-string v0, "getLastAnr"

    return-object v0

    .line 251
    :pswitch_8
    const-string/jumbo v0, "stopRFCommService"

    return-object v0

    .line 247
    :pswitch_c
    const-string/jumbo v0, "startRFCommService"

    return-object v0

    .line 243
    :pswitch_10
    const-string/jumbo v0, "setLTWProtocolVersion"

    return-object v0

    .line 239
    :pswitch_14
    const-string/jumbo v0, "transferTaskWithoutIntercept"

    return-object v0

    .line 235
    :pswitch_18
    const-string v0, "forceStopPackage"

    return-object v0

    .line 231
    :pswitch_1b
    const-string/jumbo v0, "sendNotificationAction"

    return-object v0

    .line 227
    :pswitch_1f
    const-string/jumbo v0, "sendNotificationContent"

    return-object v0

    .line 223
    :pswitch_23
    const-string v0, "getProtocolVersion"

    return-object v0

    .line 219
    :pswitch_26
    const-string/jumbo v0, "sendPendingIntent"

    return-object v0

    .line 215
    :pswitch_2a
    const-string v0, "clearAll"

    return-object v0

    .line 211
    :pswitch_2d
    const-string/jumbo v0, "unregisterRemoteAppModeListener"

    return-object v0

    .line 207
    :pswitch_31
    const-string/jumbo v0, "registerRemoteAppModeListener"

    return-object v0

    .line 203
    :pswitch_35
    const-string/jumbo v0, "unregisterStartActivityInterceptListener"

    return-object v0

    .line 199
    :pswitch_39
    const-string/jumbo v0, "registerStartActivityInterceptListener"

    return-object v0

    .line 195
    :pswitch_3d
    const-string/jumbo v0, "unregisterRotationChangeListener"

    return-object v0

    .line 191
    :pswitch_41
    const-string/jumbo v0, "registerRotationChangeListener"

    return-object v0

    .line 187
    :pswitch_45
    const-string/jumbo v0, "unregisterTaskChangeListener"

    return-object v0

    .line 183
    :pswitch_49
    const-string/jumbo v0, "registerTaskChangeListener"

    return-object v0

    .line 179
    :pswitch_4d
    const-string/jumbo v0, "unregisterSecureAppChangedListener"

    return-object v0

    .line 175
    :pswitch_51
    const-string/jumbo v0, "registerSecureAppChangedListener"

    return-object v0

    .line 171
    :pswitch_55
    const-string v0, "isAllowed"

    return-object v0

    .line 167
    :pswitch_58
    const-string v0, "launchApplication"

    return-object v0

    .line 163
    :pswitch_5b
    const-string v0, "moveDisplayToTop"

    return-object v0

    .line 159
    :pswitch_5e
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    .line 155
    :pswitch_62
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    .line 151
    :pswitch_66
    const-string v0, "createVirtualDisplay"

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
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
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
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

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1099
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 266
    invoke-static {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 270
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.remoteappmode.IRemoteAppMode"

    .line 271
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 272
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    :cond_15
    packed-switch v8, :pswitch_data_298

    .line 282
    packed-switch v8, :pswitch_data_29e

    .line 575
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 278
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return v12

    .line 565
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 568
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_296

    .line 558
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->stopRFCommService()V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_296

    .line 552
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->startRFCommService()V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_296

    .line 544
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->setLTWProtocolVersion(I)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto/16 :goto_296

    .line 531
    .end local v0    # "_arg0":I
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 533
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 536
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->transferTaskWithoutIntercept(IILandroid/os/Bundle;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_296

    .line 522
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_296

    .line 508
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_84
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 510
    .local v0, "_arg0":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 512
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 513
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z

    move-result v3

    .line 515
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 517
    goto/16 :goto_296

    .line 498
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :pswitch_a7
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 499
    .restart local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 501
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 503
    goto/16 :goto_296

    .line 490
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "_result":Z
    :pswitch_be
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getProtocolVersion()I

    move-result v0

    .line 491
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    goto/16 :goto_296

    .line 482
    .end local v0    # "_result":I
    :pswitch_ca
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 483
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendPendingIntent(Landroid/app/PendingIntent;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_296

    .line 475
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->clearAll()V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_296

    .line 466
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    .line 467
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    move-result v1

    .line 469
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 471
    goto/16 :goto_296

    .line 454
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    .end local v1    # "_result":Z
    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    .line 456
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    move-result v2

    .line 459
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 461
    goto/16 :goto_296

    .line 444
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    .line 445
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    move-result v1

    .line 447
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_296

    .line 432
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    .end local v1    # "_result":Z
    :pswitch_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    .line 434
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    move-result v2

    .line 437
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto/16 :goto_296

    .line 422
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    move-result v1

    .line 425
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    goto/16 :goto_296

    .line 408
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .end local v1    # "_result":Z
    :pswitch_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    .line 410
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    move-result v3

    .line 415
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 417
    goto/16 :goto_296

    .line 398
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_17f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    .line 399
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result v1

    .line 401
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    goto/16 :goto_296

    .line 386
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    .end local v1    # "_result":Z
    :pswitch_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    move-result v2

    .line 391
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_296

    .line 376
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    .line 377
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    move-result v1

    .line 379
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    goto/16 :goto_296

    .line 364
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    .end local v1    # "_result":Z
    :pswitch_1c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    .line 366
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    move-result v2

    .line 369
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    goto/16 :goto_296

    .line 356
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->isAllowed()Z

    move-result v0

    .line 357
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto/16 :goto_296

    .line 342
    .end local v0    # "_result":Z
    :pswitch_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 348
    .local v2, "_arg2":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 349
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_296

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->moveDisplayToTop(I)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_296

    .line 316
    .end local v0    # "_arg0":I
    :pswitch_221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 318
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 320
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 322
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 324
    .local v15, "_arg3":I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/Surface;

    .line 325
    .local v16, "_arg4":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->resizeVirtualDisplay(IIIILandroid/view/Surface;)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto :goto_296

    .line 307
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/view/Surface;
    :pswitch_24d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->releaseVirtualDisplay(I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto :goto_296

    .line 287
    .end local v0    # "_arg0":I
    :pswitch_25b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 291
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 293
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 295
    .local v16, "_arg3":I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/Surface;

    .line 297
    .local v17, "_arg4":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;

    move-result-object v18

    .line 298
    .local v18, "_arg5":Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I

    move-result v0

    .line 300
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    nop

    .line 578
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/view/Surface;
    .end local v18    # "_arg5":Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;
    :goto_296
    return v12

    nop

    :pswitch_data_298
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_25b
        :pswitch_24d
        :pswitch_221
        :pswitch_212
        :pswitch_1ef
        :pswitch_1e3
        :pswitch_1c8
        :pswitch_1b1
        :pswitch_196
        :pswitch_17f
        :pswitch_160
        :pswitch_149
        :pswitch_12e
        :pswitch_117
        :pswitch_fc
        :pswitch_e5
        :pswitch_dd
        :pswitch_ca
        :pswitch_be
        :pswitch_a7
        :pswitch_84
        :pswitch_75
        :pswitch_5a
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
