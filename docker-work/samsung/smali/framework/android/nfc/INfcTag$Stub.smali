.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final greylist-max-o TRANSACTION_canMakeReadOnly:I = 0x10

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_formatNdef:I = 0xb

.field static final greylist-max-o TRANSACTION_getExtendedLengthApdusSupported:I = 0x12

.field static final greylist-max-o TRANSACTION_getMaxTransceiveLength:I = 0x11

.field static final greylist-max-o TRANSACTION_getTechList:I = 0x3

.field static final greylist-max-o TRANSACTION_getTimeout:I = 0xe

.field static final greylist-max-o TRANSACTION_isNdef:I = 0x4

.field static final greylist-max-o TRANSACTION_isPresent:I = 0x5

.field static final blacklist TRANSACTION_isTagUpToDate:I = 0x14

.field static final greylist-max-o TRANSACTION_ndefIsWritable:I = 0xa

.field static final greylist-max-o TRANSACTION_ndefMakeReadOnly:I = 0x9

.field static final greylist-max-o TRANSACTION_ndefRead:I = 0x7

.field static final greylist-max-o TRANSACTION_ndefWrite:I = 0x8

.field static final greylist-max-o TRANSACTION_reconnect:I = 0x2

.field static final greylist-max-o TRANSACTION_rediscover:I = 0xc

.field static final greylist-max-o TRANSACTION_resetTimeouts:I = 0xf

.field static final blacklist TRANSACTION_setTagUpToDate:I = 0x13

.field static final greylist-max-o TRANSACTION_setTimeout:I = 0xd

.field static final greylist-max-o TRANSACTION_transceive:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    const-string v0, "android.nfc.INfcTag"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcTag;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Landroid/nfc/INfcTag$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 124
    packed-switch p0, :pswitch_data_44

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 204
    :pswitch_5
    const-string v0, "isTagUpToDate"

    return-object v0

    .line 200
    :pswitch_8
    const-string/jumbo v0, "setTagUpToDate"

    return-object v0

    .line 196
    :pswitch_c
    const-string v0, "getExtendedLengthApdusSupported"

    return-object v0

    .line 192
    :pswitch_f
    const-string v0, "getMaxTransceiveLength"

    return-object v0

    .line 188
    :pswitch_12
    const-string v0, "canMakeReadOnly"

    return-object v0

    .line 184
    :pswitch_15
    const-string v0, "resetTimeouts"

    return-object v0

    .line 180
    :pswitch_18
    const-string v0, "getTimeout"

    return-object v0

    .line 176
    :pswitch_1b
    const-string/jumbo v0, "setTimeout"

    return-object v0

    .line 172
    :pswitch_1f
    const-string v0, "rediscover"

    return-object v0

    .line 168
    :pswitch_22
    const-string v0, "formatNdef"

    return-object v0

    .line 164
    :pswitch_25
    const-string v0, "ndefIsWritable"

    return-object v0

    .line 160
    :pswitch_28
    const-string v0, "ndefMakeReadOnly"

    return-object v0

    .line 156
    :pswitch_2b
    const-string v0, "ndefWrite"

    return-object v0

    .line 152
    :pswitch_2e
    const-string v0, "ndefRead"

    return-object v0

    .line 148
    :pswitch_31
    const-string/jumbo v0, "transceive"

    return-object v0

    .line 144
    :pswitch_35
    const-string v0, "isPresent"

    return-object v0

    .line 140
    :pswitch_38
    const-string v0, "isNdef"

    return-object v0

    .line 136
    :pswitch_3b
    const-string v0, "getTechList"

    return-object v0

    .line 132
    :pswitch_3e
    const-string v0, "reconnect"

    return-object v0

    .line 128
    :pswitch_41
    const-string v0, "connect"

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 842
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 215
    invoke-static {p1}, Landroid/nfc/INfcTag$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 219
    const-string v0, "android.nfc.INfcTag"

    .line 220
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 221
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    :cond_d
    packed-switch p1, :pswitch_data_19a

    .line 231
    packed-switch p1, :pswitch_data_1a0

    .line 439
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 227
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 430
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 431
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->isTagUpToDate(J)Z

    move-result v4

    .line 433
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 435
    goto/16 :goto_198

    .line 421
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 422
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->setTagUpToDate(J)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_198

    .line 413
    .end local v2    # "_arg0":J
    :pswitch_3e
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    move-result v2

    .line 414
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    goto/16 :goto_198

    .line 404
    .end local v2    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    move-result v3

    .line 407
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    goto/16 :goto_198

    .line 394
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    move-result v3

    .line 397
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_198

    .line 387
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_70
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_198

    .line 378
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    move-result v3

    .line 381
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    goto/16 :goto_198

    .line 366
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 369
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    move-result v4

    .line 371
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto/16 :goto_198

    .line 356
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v3

    .line 359
    .local v3, "_result":Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 361
    goto/16 :goto_198

    .line 344
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/Tag;
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 347
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v4

    .line 349
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    goto/16 :goto_198

    .line 334
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v3

    .line 337
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto/16 :goto_198

    .line 324
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v3

    .line 327
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto/16 :goto_198

    .line 312
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 315
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v4

    .line 317
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    goto/16 :goto_198

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v4    # "_result":I
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 305
    .local v3, "_result":Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    goto/16 :goto_198

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/NdefMessage;
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 292
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 293
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v5

    .line 295
    .local v5, "_result":Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    goto :goto_198

    .line 278
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Landroid/nfc/TransceiveResult;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v3

    .line 281
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    goto :goto_198

    .line 268
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v3

    .line 271
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    goto :goto_198

    .line 258
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v3

    .line 261
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 263
    goto :goto_198

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v3

    .line 251
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    goto :goto_198

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    move-result v4

    .line 241
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    nop

    .line 442
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_198
    return v1

    nop

    :pswitch_data_19a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_182
        :pswitch_170
        :pswitch_15e
        :pswitch_14c
        :pswitch_13a
        :pswitch_120
        :pswitch_10d
        :pswitch_f2
        :pswitch_df
        :pswitch_cc
        :pswitch_b5
        :pswitch_a2
        :pswitch_8b
        :pswitch_78
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_3e
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
