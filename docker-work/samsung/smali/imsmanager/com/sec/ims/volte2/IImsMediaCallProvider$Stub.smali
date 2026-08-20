.class public abstract Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsMediaCallProvider.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsMediaCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsMediaCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeCameraCapabilities:I = 0x9

.field static final TRANSACTION_deinitSurface:I = 0x13

.field static final TRANSACTION_getCameraInfo:I = 0xe

.field static final TRANSACTION_getDefaultCameraId:I = 0x16

.field static final TRANSACTION_getMaxZoom:I = 0x14

.field static final TRANSACTION_getZoom:I = 0x15

.field static final TRANSACTION_registerForVideoServiceEvent:I = 0x19

.field static final TRANSACTION_requestCallDataUsage:I = 0x8

.field static final TRANSACTION_resetCameraId:I = 0xd

.field static final TRANSACTION_sendGeneralEvent:I = 0x20

.field static final TRANSACTION_sendLiveVideo:I = 0x18

.field static final TRANSACTION_sendStillImage:I = 0x17

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCameraEffect:I = 0x1b

.field static final TRANSACTION_setDeviceOrientation:I = 0x6

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setDisplaySurfaceForPhoneId:I = 0x5

.field static final TRANSACTION_setPreviewSurface:I = 0x2

.field static final TRANSACTION_setPreviewSurfaceForPhoneId:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x7

.field static final TRANSACTION_startCamera:I = 0xa

.field static final TRANSACTION_startEmoji:I = 0x1e

.field static final TRANSACTION_startRecord:I = 0x1c

.field static final TRANSACTION_startRender:I = 0xf

.field static final TRANSACTION_startVideoRenderer:I = 0x10

.field static final TRANSACTION_stopCamera:I = 0xb

.field static final TRANSACTION_stopEmoji:I = 0x1f

.field static final TRANSACTION_stopRecord:I = 0x1d

.field static final TRANSACTION_stopVideoRenderer:I = 0x11

.field static final TRANSACTION_swipeVideoSurface:I = 0x12

.field static final TRANSACTION_switchCamera:I = 0xc

.field static final TRANSACTION_unregisterForVideoServiceEvent:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_4
    const-string v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v1, :cond_14

    .line 132
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object v1

    .line 134
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.sec.ims.volte2.IImsMediaCallProvider"

    .line 143
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 144
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_15
    packed-switch v7, :pswitch_data_210

    .line 154
    packed-switch v7, :pswitch_data_216

    .line 439
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 150
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v11

    .line 425
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendGeneralEvent(IIILjava/lang/String;)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_20f

    .line 416
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopEmoji(I)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_20f

    .line 407
    .end local v0    # "_arg0":I
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startEmoji(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_20f

    .line 400
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopRecord()V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_20f

    .line 392
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startRecord(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto/16 :goto_20f

    .line 383
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCameraEffect(I)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_20f

    .line 374
    .end local v0    # "_arg0":I
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object v0

    .line 375
    .local v0, "_arg0":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_20f

    .line 365
    .end local v0    # "_arg0":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object v0

    .line 366
    .restart local v0    # "_arg0":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_20f

    .line 356
    .end local v0    # "_arg0":Lcom/sec/ims/volte2/IVideoServiceEventListener;
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendLiveVideo(I)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_20f

    .line 339
    .end local v0    # "_arg0":I
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 341
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 345
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 348
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_20f

    .line 331
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_df
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getDefaultCameraId()I

    move-result v0

    .line 332
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto/16 :goto_20f

    .line 325
    .end local v0    # "_result":I
    :pswitch_eb
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getZoom()V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_20f

    .line 319
    :pswitch_f3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getMaxZoom()V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_20f

    .line 311
    :pswitch_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 312
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->deinitSurface(Z)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_20f

    .line 304
    .end local v0    # "_arg0":Z
    :pswitch_10a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->swipeVideoSurface()V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_20f

    .line 298
    :pswitch_112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopVideoRenderer()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto/16 :goto_20f

    .line 290
    :pswitch_11a
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 291
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startVideoRenderer(Landroid/view/Surface;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_20f

    .line 281
    .end local v0    # "_arg0":Landroid/view/Surface;
    :pswitch_12d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 282
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startRender(Z)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_20f

    .line 272
    .end local v0    # "_arg0":Z
    :pswitch_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->getCameraInfo(I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_20f

    .line 265
    .end local v0    # "_arg0":I
    :pswitch_14b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->resetCameraId()V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_20f

    .line 259
    :pswitch_153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->switchCamera()V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_20f

    .line 253
    :pswitch_15b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->stopCamera()V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_20f

    .line 245
    :pswitch_163
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 246
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->startCamera(Landroid/view/Surface;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_20f

    .line 232
    .end local v0    # "_arg0":Landroid/view/Surface;
    :pswitch_176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->changeCameraCapabilities(III)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_20f

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_18d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->requestCallDataUsage()V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_20f

    .line 217
    :pswitch_195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 218
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setZoom(F)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_20f

    .line 208
    .end local v0    # "_arg0":F
    :pswitch_1a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDeviceOrientation(I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_20f

    .line 197
    .end local v0    # "_arg0":I
    :pswitch_1b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 200
    .local v1, "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDisplaySurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_20f

    .line 188
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_1c7
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 189
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_20f

    .line 177
    .end local v0    # "_arg0":Landroid/view/Surface;
    :pswitch_1d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 180
    .restart local v1    # "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPreviewSurfaceForPhoneId(ILandroid/view/Surface;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_20f

    .line 168
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_1ef
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 169
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_20f

    .line 159
    .end local v0    # "_arg0":Landroid/view/Surface;
    :pswitch_201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;->setCamera(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    nop

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_20f
    return v11

    :pswitch_data_210
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_201
        :pswitch_1ef
        :pswitch_1d9
        :pswitch_1c7
        :pswitch_1b1
        :pswitch_1a3
        :pswitch_195
        :pswitch_18d
        :pswitch_176
        :pswitch_163
        :pswitch_15b
        :pswitch_153
        :pswitch_14b
        :pswitch_13c
        :pswitch_12d
        :pswitch_11a
        :pswitch_112
        :pswitch_10a
        :pswitch_fb
        :pswitch_f3
        :pswitch_eb
        :pswitch_df
        :pswitch_b8
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_74
        :pswitch_65
        :pswitch_5d
        :pswitch_4e
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
