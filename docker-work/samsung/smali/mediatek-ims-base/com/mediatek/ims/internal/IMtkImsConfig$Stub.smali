.class public abstract Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;
.super Landroid/os/Binder;
.source "IMtkImsConfig.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFeatureValue:I = 0x5

.field static final blacklist TRANSACTION_getImsResCapability:I = 0xb

.field static final blacklist TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final blacklist TRANSACTION_getProvisionedValue:I = 0x1

.field static final blacklist TRANSACTION_getVideoQuality:I = 0x8

.field static final blacklist TRANSACTION_setFeatureValue:I = 0x6

.field static final blacklist TRANSACTION_setImsResCapability:I = 0xa

.field static final blacklist TRANSACTION_setModemImsCfg:I = 0xe

.field static final blacklist TRANSACTION_setModemImsIwlanCfg:I = 0x10

.field static final blacklist TRANSACTION_setModemImsWoCfg:I = 0xf

.field static final blacklist TRANSACTION_setMultiFeatureValues:I = 0x7

.field static final blacklist TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final blacklist TRANSACTION_setProvisionedValue:I = 0x3

.field static final blacklist TRANSACTION_setVideoQuality:I = 0x9

.field static final blacklist TRANSACTION_setVoltePreference:I = 0xd

.field static final blacklist TRANSACTION_setWfcMode:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 212
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 213
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 221
    if-nez p0, :cond_4

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 225
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsConfig;

    if-eqz v1, :cond_14

    .line 226
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsConfig;

    return-object v1

    .line 228
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 232
    return-object p0
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

    .line 236
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    .line 237
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 238
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    :cond_d
    packed-switch p1, :pswitch_data_17a

    .line 248
    packed-switch p1, :pswitch_data_180

    .line 437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 244
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v1

    .line 424
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 429
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 431
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 433
    goto/16 :goto_179

    .line 410
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 412
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 414
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 415
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 417
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 419
    goto/16 :goto_179

    .line 396
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 400
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 401
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v5

    .line 403
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 405
    goto/16 :goto_179

    .line 387
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setVoltePreference(I)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto/16 :goto_179

    .line 378
    .end local v2    # "_arg0":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setWfcMode(I)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_179

    .line 368
    .end local v2    # "_arg0":I
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getImsResCapability(I)I

    move-result v3

    .line 371
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto/16 :goto_179

    .line 357
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setImsResCapability(II)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_179

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v3

    .line 350
    .local v3, "_arg1":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 352
    goto/16 :goto_179

    .line 339
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/ImsConfigListener;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    .line 340
    .local v2, "_arg0":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 342
    goto/16 :goto_179

    .line 324
    .end local v2    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 326
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 328
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 330
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 331
    .local v5, "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_179

    .line 309
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 316
    .restart local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto :goto_179

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v4

    .line 302
    .local v4, "_arg2":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 304
    goto :goto_179

    .line 285
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v4

    .line 290
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    goto :goto_179

    .line 273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->setProvisionedValue(II)I

    move-result v4

    .line 278
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    goto :goto_179

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    goto :goto_179

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getProvisionedValue(I)I

    move-result v3

    .line 256
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    nop

    .line 440
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :goto_179
    return v1

    :pswitch_data_17a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_167
        :pswitch_155
        :pswitch_13f
        :pswitch_129
        :pswitch_112
        :pswitch_f4
        :pswitch_d5
        :pswitch_c5
        :pswitch_b1
        :pswitch_9e
        :pswitch_8b
        :pswitch_7c
        :pswitch_6d
        :pswitch_52
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
