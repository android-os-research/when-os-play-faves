.class public abstract Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;
.super Landroid/os/Binder;
.source "INSDSService.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateAllLines:I = 0x13

.field static final TRANSACTION_activateLine:I = 0x11

.field static final TRANSACTION_activateSimDevice:I = 0x1

.field static final TRANSACTION_authorizeMsisdn:I = 0x1d

.field static final TRANSACTION_cancelMsisdnAuthorization:I = 0x1f

.field static final TRANSACTION_createTmoId:I = 0x1e

.field static final TRANSACTION_deactivateAllLines:I = 0x14

.field static final TRANSACTION_deactivateLine:I = 0x12

.field static final TRANSACTION_deactivateSimDevice:I = 0x2

.field static final TRANSACTION_getDeviceState:I = 0x4

.field static final TRANSACTION_getJanskyServiceStatus:I = 0x17

.field static final TRANSACTION_getPendingMsisdnAuthStatus:I = 0x20

.field static final TRANSACTION_getTRN:I = 0x15

.field static final TRANSACTION_handleNsdsAppToggleOffEvent:I = 0xb

.field static final TRANSACTION_handleNsdsAppToggleOnEvent:I = 0xa

.field static final TRANSACTION_handleNsdsAppToggleOnEventWithSnT:I = 0xc

.field static final TRANSACTION_isDeviceReadyForLogin:I = 0x3

.field static final TRANSACTION_isUserLoggedin:I = 0x16

.field static final TRANSACTION_loginWithMsisdn:I = 0x1c

.field static final TRANSACTION_logout:I = 0xf

.field static final TRANSACTION_openCreateAccountPage:I = 0xe

.field static final TRANSACTION_openLoginPage:I = 0xd

.field static final TRANSACTION_refreshSIT:I = 0x1b

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_reprovisionLine:I = 0x21

.field static final TRANSACTION_requestWsgAkaAuthRequest:I = 0x18

.field static final TRANSACTION_retriveAvailableMSISDNs:I = 0x10

.field static final TRANSACTION_unregisterListener:I = 0x7

.field static final TRANSACTION_updateAccessSteering:I = 0x22

.field static final TRANSACTION_updateDeviceConfiguration:I = 0x5

.field static final TRANSACTION_updateDeviceName:I = 0x19

.field static final TRANSACTION_updateE911Address:I = 0x8

.field static final TRANSACTION_updateEntitlementUrl:I = 0x9

.field static final TRANSACTION_updateEntitlementUrlWithImsi:I = 0x23

.field static final TRANSACTION_updateLineName:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 177
    if-nez p0, :cond_4

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_4
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/vsim/ericssonnsds/INSDSService;

    if-eqz v1, :cond_14

    .line 182
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/ericssonnsds/INSDSService;

    return-object v1

    .line 184
    :cond_14
    new-instance v1, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 188
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 192
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    .line 193
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_d
    packed-switch p1, :pswitch_data_188

    .line 204
    packed-switch p1, :pswitch_data_18e

    .line 460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 200
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return v1

    .line 451
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateEntitlementUrlWithImsi(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    goto/16 :goto_186

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateAccessSteering()V

    .line 446
    goto/16 :goto_186

    .line 436
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 438
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->reprovisionLine(JLjava/lang/String;)V

    .line 441
    goto/16 :goto_186

    .line 430
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getPendingMsisdnAuthStatus()V

    .line 431
    goto/16 :goto_186

    .line 423
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->cancelMsisdnAuthorization(Ljava/lang/String;)V

    .line 426
    goto/16 :goto_186

    .line 411
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->createTmoId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    goto/16 :goto_186

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->authorizeMsisdn(Ljava/lang/String;)V

    .line 406
    goto/16 :goto_186

    .line 395
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->loginWithMsisdn(Ljava/lang/String;)V

    .line 398
    goto/16 :goto_186

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->refreshSIT(Ljava/lang/String;)V

    .line 390
    goto/16 :goto_186

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 377
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/vsim/app/jansky/ILineNameUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;

    move-result-object v5

    .line 380
    .local v5, "_arg2":Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateLineName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;)V

    .line 382
    goto/16 :goto_186

    .line 363
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 365
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;

    move-result-object v5

    .line 368
    .local v5, "_arg2":Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateDeviceName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;)V

    .line 370
    goto/16 :goto_186

    .line 357
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
    :pswitch_ba
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->requestWsgAkaAuthRequest()V

    .line 358
    goto/16 :goto_186

    .line 350
    :pswitch_bf
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getJanskyServiceStatus()I

    move-result v2

    .line 351
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    goto/16 :goto_186

    .line 343
    .end local v2    # "_result":I
    :pswitch_cb
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->isUserLoggedin()Z

    move-result v2

    .line 344
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 346
    goto/16 :goto_186

    .line 332
    .end local v2    # "_result":Z
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 336
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ITRNReceivedListener;

    move-result-object v4

    .line 337
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V

    .line 339
    goto/16 :goto_186

    .line 326
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    :pswitch_ef
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateAllLines()V

    .line 327
    goto/16 :goto_186

    .line 321
    :pswitch_f4
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateAllLines()V

    .line 322
    goto/16 :goto_186

    .line 312
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 314
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateLine(JLjava/lang/String;)V

    .line 317
    goto/16 :goto_186

    .line 302
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 304
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateLine(JLjava/lang/String;)V

    .line 307
    goto/16 :goto_186

    .line 296
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_119
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->retriveAvailableMSISDNs()V

    .line 297
    goto/16 :goto_186

    .line 291
    :pswitch_11e
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->logout()V

    .line 292
    goto/16 :goto_186

    .line 286
    :pswitch_123
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->openCreateAccountPage()V

    .line 287
    goto :goto_186

    .line 281
    :pswitch_127
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->openLoginPage()V

    .line 282
    goto :goto_186

    .line 276
    :pswitch_12b
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOnEventWithSnT()V

    .line 277
    goto :goto_186

    .line 271
    :pswitch_12f
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOffEvent()V

    .line 272
    goto :goto_186

    .line 266
    :pswitch_133
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOnEvent()V

    .line 267
    goto :goto_186

    .line 259
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateEntitlementUrl(Ljava/lang/String;)V

    .line 262
    goto :goto_186

    .line 253
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_142
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateE911Address()V

    .line 254
    goto :goto_186

    .line 246
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    move-result-object v2

    .line 247
    .local v2, "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->unregisterListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V

    .line 249
    goto :goto_186

    .line 238
    .end local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    move-result-object v2

    .line 239
    .restart local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->registerListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V

    .line 241
    goto :goto_186

    .line 232
    .end local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    :pswitch_164
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateDeviceConfiguration()V

    .line 233
    goto :goto_186

    .line 225
    :pswitch_168
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getDeviceState()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    goto :goto_186

    .line 218
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_173
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->isDeviceReadyForLogin()Z

    move-result v2

    .line 219
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 221
    goto :goto_186

    .line 213
    .end local v2    # "_result":Z
    :pswitch_17e
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateSimDevice()V

    .line 214
    goto :goto_186

    .line 208
    :pswitch_182
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateSimDevice()V

    .line 209
    nop

    .line 463
    :goto_186
    return v1

    nop

    :pswitch_data_188
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_182
        :pswitch_17e
        :pswitch_173
        :pswitch_168
        :pswitch_164
        :pswitch_155
        :pswitch_146
        :pswitch_142
        :pswitch_137
        :pswitch_133
        :pswitch_12f
        :pswitch_12b
        :pswitch_127
        :pswitch_123
        :pswitch_11e
        :pswitch_119
        :pswitch_109
        :pswitch_f9
        :pswitch_f4
        :pswitch_ef
        :pswitch_d7
        :pswitch_cb
        :pswitch_bf
        :pswitch_ba
        :pswitch_a2
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_52
        :pswitch_46
        :pswitch_41
        :pswitch_31
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
