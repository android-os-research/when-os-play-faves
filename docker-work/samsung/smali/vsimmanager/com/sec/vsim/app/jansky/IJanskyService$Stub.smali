.class public abstract Lcom/sec/vsim/app/jansky/IJanskyService$Stub;
.super Landroid/os/Binder;
.source "IJanskyService.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IJanskyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IJanskyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateLine:I = 0x5

.field static final TRANSACTION_activateSIMDevice:I = 0x16

.field static final TRANSACTION_activateServices:I = 0xb

.field static final TRANSACTION_addLine:I = 0x3

.field static final TRANSACTION_addServices:I = 0x9

.field static final TRANSACTION_deactivateLine:I = 0x6

.field static final TRANSACTION_deactivateServices:I = 0xc

.field static final TRANSACTION_downloadAllContacts:I = 0xf

.field static final TRANSACTION_getDeviceState:I = 0x19

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getLines:I = 0x2

.field static final TRANSACTION_getLocationAndTc:I = 0xd

.field static final TRANSACTION_getTRN:I = 0x1a

.field static final TRANSACTION_isUserLogedin:I = 0x1b

.field static final TRANSACTION_logout:I = 0x15

.field static final TRANSACTION_openLoginPage:I = 0x14

.field static final TRANSACTION_registerForPushNotification:I = 0x11

.field static final TRANSACTION_removeLine:I = 0x4

.field static final TRANSACTION_removeServices:I = 0xa

.field static final TRANSACTION_requestAkaAuthentication:I = 0x12

.field static final TRANSACTION_requestWsgAkaAuthRequest:I = 0x1c

.field static final TRANSACTION_retriveAvailableMSISDNs:I = 0x17

.field static final TRANSACTION_setRequestUrl:I = 0x18

.field static final TRANSACTION_updateDeviceConfiguration:I = 0x13

.field static final TRANSACTION_updateDeviceName:I = 0x7

.field static final TRANSACTION_updateLineName:I = 0x8

.field static final TRANSACTION_uploadAllContacts:I = 0xe

.field static final TRANSACTION_uploadUpdatedContact:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 137
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 138
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IJanskyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 146
    if-nez p0, :cond_4

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_4
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 150
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/vsim/app/jansky/IJanskyService;

    if-eqz v1, :cond_14

    .line 151
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/app/jansky/IJanskyService;

    return-object v1

    .line 153
    :cond_14
    new-instance v1, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 157
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    .line 162
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_d
    packed-switch p1, :pswitch_data_1b8

    .line 173
    packed-switch p1, :pswitch_data_1be

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 169
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 409
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->requestWsgAkaAuthRequest()V

    .line 410
    goto/16 :goto_1b6

    .line 402
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->isUserLogedin()Z

    move-result v2

    .line 403
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    goto/16 :goto_1b6

    .line 391
    .end local v2    # "_result":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 395
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ITRNReceivedListener;

    move-result-object v4

    .line 396
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V

    .line 398
    goto/16 :goto_1b6

    .line 383
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    :pswitch_45
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getDeviceState()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    goto/16 :goto_1b6

    .line 376
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->setRequestUrl(Ljava/lang/String;)V

    .line 379
    goto/16 :goto_1b6

    .line 370
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->retriveAvailableMSISDNs()V

    .line 371
    goto/16 :goto_1b6

    .line 365
    :pswitch_62
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateSIMDevice()V

    .line 366
    goto/16 :goto_1b6

    .line 360
    :pswitch_67
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->logout()V

    .line 361
    goto/16 :goto_1b6

    .line 355
    :pswitch_6c
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->openLoginPage()V

    .line 356
    goto/16 :goto_1b6

    .line 350
    :pswitch_71
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateDeviceConfiguration()V

    .line 351
    goto/16 :goto_1b6

    .line 345
    :pswitch_76
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->requestAkaAuthentication()V

    .line 346
    goto/16 :goto_1b6

    .line 338
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IPushNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IPushNotificationListener;

    move-result-object v2

    .line 339
    .local v2, "_arg0":Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->registerForPushNotification(Lcom/sec/vsim/app/jansky/IPushNotificationListener;)V

    .line 341
    goto/16 :goto_1b6

    .line 328
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v3

    .line 331
    .local v3, "_arg1":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->uploadUpdatedContact(Ljava/lang/String;Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 333
    goto/16 :goto_1b6

    .line 320
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->downloadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 323
    goto/16 :goto_1b6

    .line 312
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    move-result-object v2

    .line 313
    .restart local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->uploadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V

    .line 315
    goto/16 :goto_1b6

    .line 302
    .end local v2    # "_arg0":Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getLocationAndTc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    goto/16 :goto_1b6

    .line 290
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 295
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->deactivateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 297
    goto/16 :goto_1b6

    .line 278
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 282
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 283
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 285
    goto/16 :goto_1b6

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 270
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 271
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->removeServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 273
    goto/16 :goto_1b6

    .line 254
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 258
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;

    move-result-object v4

    .line 259
    .restart local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->addServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V

    .line 261
    goto/16 :goto_1b6

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v4

    .line 247
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateLineName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 249
    goto :goto_1b6

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 234
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;

    move-result-object v4

    .line 235
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;)V

    .line 237
    goto :goto_1b6

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->deactivateLine(Ljava/lang/String;)V

    .line 225
    goto :goto_1b6

    .line 214
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->activateLine(Ljava/lang/String;)V

    .line 217
    goto :goto_1b6

    .line 204
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->removeLine(Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 209
    goto :goto_1b6

    .line 192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineUpdatesListener;

    move-result-object v4

    .line 197
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->addLine(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V

    .line 199
    goto :goto_1b6

    .line 184
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    :pswitch_1a0
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getLines()Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 187
    goto :goto_1b6

    .line 177
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1ab
    invoke-virtual {p0}, Lcom/sec/vsim/app/jansky/IJanskyService$Stub;->getDevices()Ljava/util/List;

    move-result-object v2

    .line 178
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 180
    nop

    .line 417
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b6
    return v1

    nop

    :pswitch_data_1b8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_1ab
        :pswitch_1a0
        :pswitch_189
        :pswitch_176
        :pswitch_16b
        :pswitch_160
        :pswitch_149
        :pswitch_132
        :pswitch_11a
        :pswitch_102
        :pswitch_ea
        :pswitch_d2
        :pswitch_bf
        :pswitch_af
        :pswitch_9f
        :pswitch_8b
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_2d
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
