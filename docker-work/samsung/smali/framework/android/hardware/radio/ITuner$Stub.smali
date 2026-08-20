.class public abstract Landroid/hardware/radio/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/radio/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITuner"

.field static final greylist-max-o TRANSACTION_cancel:I = 0xa

.field static final greylist-max-o TRANSACTION_cancelAnnouncement:I = 0xb

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x4

.field static final greylist-max-o TRANSACTION_getImage:I = 0xc

.field static final greylist-max-o TRANSACTION_getParameters:I = 0x14

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x2

.field static final greylist-max-o TRANSACTION_isConfigFlagSet:I = 0x11

.field static final greylist-max-o TRANSACTION_isConfigFlagSupported:I = 0x10

.field static final greylist-max-o TRANSACTION_isMuted:I = 0x6

.field static final greylist-max-o TRANSACTION_scan:I = 0x8

.field static final greylist-max-o TRANSACTION_setConfigFlag:I = 0x12

.field static final greylist-max-o TRANSACTION_setConfiguration:I = 0x3

.field static final greylist-max-o TRANSACTION_setMuted:I = 0x5

.field static final greylist-max-o TRANSACTION_setParameters:I = 0x13

.field static final greylist-max-o TRANSACTION_startBackgroundScan:I = 0xd

.field static final greylist-max-o TRANSACTION_startProgramListUpdates:I = 0xe

.field static final greylist-max-o TRANSACTION_step:I = 0x7

.field static final greylist-max-o TRANSACTION_stopProgramListUpdates:I = 0xf

.field static final greylist-max-o TRANSACTION_tune:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 112
    const-string v0, "android.hardware.radio.ITuner"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITuner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 120
    if-nez p0, :cond_4

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    const-string v0, "android.hardware.radio.ITuner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ITuner;

    if-eqz v1, :cond_14

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITuner;

    return-object v1

    .line 127
    :cond_14
    new-instance v1, Landroid/hardware/radio/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 136
    packed-switch p0, :pswitch_data_46

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 216
    :pswitch_5
    const-string v0, "getParameters"

    return-object v0

    .line 212
    :pswitch_8
    const-string v0, "setParameters"

    return-object v0

    .line 208
    :pswitch_b
    const-string v0, "setConfigFlag"

    return-object v0

    .line 204
    :pswitch_e
    const-string v0, "isConfigFlagSet"

    return-object v0

    .line 200
    :pswitch_11
    const-string v0, "isConfigFlagSupported"

    return-object v0

    .line 196
    :pswitch_14
    const-string/jumbo v0, "stopProgramListUpdates"

    return-object v0

    .line 192
    :pswitch_18
    const-string/jumbo v0, "startProgramListUpdates"

    return-object v0

    .line 188
    :pswitch_1c
    const-string/jumbo v0, "startBackgroundScan"

    return-object v0

    .line 184
    :pswitch_20
    const-string v0, "getImage"

    return-object v0

    .line 180
    :pswitch_23
    const-string v0, "cancelAnnouncement"

    return-object v0

    .line 176
    :pswitch_26
    const-string v0, "cancel"

    return-object v0

    .line 172
    :pswitch_29
    const-string/jumbo v0, "tune"

    return-object v0

    .line 168
    :pswitch_2d
    const-string v0, "scan"

    return-object v0

    .line 164
    :pswitch_30
    const-string/jumbo v0, "step"

    return-object v0

    .line 160
    :pswitch_34
    const-string v0, "isMuted"

    return-object v0

    .line 156
    :pswitch_37
    const-string v0, "setMuted"

    return-object v0

    .line 152
    :pswitch_3a
    const-string v0, "getConfiguration"

    return-object v0

    .line 148
    :pswitch_3d
    const-string v0, "setConfiguration"

    return-object v0

    .line 144
    :pswitch_40
    const-string v0, "isClosed"

    return-object v0

    .line 140
    :pswitch_43
    const-string v0, "close"

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
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 403
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$2(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 131
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 857
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 227
    invoke-static {p1}, Landroid/hardware/radio/ITuner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 231
    const-string v0, "android.hardware.radio.ITuner"

    .line 232
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 233
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    :cond_d
    packed-switch p1, :pswitch_data_182

    .line 243
    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_188

    .line 443
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 239
    :pswitch_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    return v1

    .line 426
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 427
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 429
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-nez v4, :cond_32

    .line 431
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_180

    .line 433
    :cond_32
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    new-instance v2, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 439
    goto/16 :goto_180

    .line 400
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    .local v3, "N":I
    if-gez v3, :cond_4b

    const/4 v4, 0x0

    goto :goto_50

    :cond_4b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v4, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_50
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v4}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 409
    .end local v3    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v4}, Landroid/hardware/radio/ITuner$Stub;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 411
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-nez v3, :cond_6e

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_180

    .line 415
    :cond_6e
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    new-instance v2, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Landroid/hardware/radio/ITuner$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 421
    goto/16 :goto_180

    .line 388
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 390
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 391
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->setConfigFlag(IZ)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto/16 :goto_180

    .line 378
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->isConfigFlagSet(I)Z

    move-result v3

    .line 381
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    goto/16 :goto_180

    .line 368
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->isConfigFlagSupported(I)Z

    move-result v3

    .line 371
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    goto/16 :goto_180

    .line 361
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b8
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->stopProgramListUpdates()V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_180

    .line 353
    :pswitch_c0
    sget-object v2, Landroid/hardware/radio/ProgramList$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Filter;

    .line 354
    .local v2, "_arg0":Landroid/hardware/radio/ProgramList$Filter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto/16 :goto_180

    .line 345
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramList$Filter;
    :pswitch_d3
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->startBackgroundScan()Z

    move-result v2

    .line 346
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    goto/16 :goto_180

    .line 336
    .end local v2    # "_result":Z
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 339
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 341
    goto/16 :goto_180

    .line 329
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_f2
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancelAnnouncement()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_180

    .line 323
    :pswitch_fa
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancel()V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_180

    .line 315
    :pswitch_102
    sget-object v2, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    .line 316
    .local v2, "_arg0":Landroid/hardware/radio/ProgramSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->tune(Landroid/hardware/radio/ProgramSelector;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto :goto_180

    .line 304
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 306
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 307
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->scan(ZZ)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto :goto_180

    .line 293
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 295
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 296
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITuner$Stub;->step(ZZ)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto :goto_180

    .line 285
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_138
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isMuted()Z

    move-result v2

    .line 286
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_180

    .line 277
    .end local v2    # "_result":Z
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 278
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->setMuted(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto :goto_180

    .line 269
    .end local v2    # "_arg0":Z
    :pswitch_151
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v2

    .line 270
    .local v2, "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    goto :goto_180

    .line 261
    .end local v2    # "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_15c
    sget-object v2, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 262
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_180

    .line 253
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_16e
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isClosed()Z

    move-result v2

    .line 254
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    goto :goto_180

    .line 247
    .end local v2    # "_result":Z
    :pswitch_179
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->close()V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    nop

    .line 446
    :goto_180
    return v1

    nop

    :pswitch_data_182
    .packed-switch 0x5f4e5446
        :pswitch_19
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_179
        :pswitch_16e
        :pswitch_15c
        :pswitch_151
        :pswitch_143
        :pswitch_138
        :pswitch_126
        :pswitch_114
        :pswitch_102
        :pswitch_fa
        :pswitch_f2
        :pswitch_df
        :pswitch_d3
        :pswitch_c0
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_43
        :pswitch_1d
    .end packed-switch
.end method
