.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 202
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    .line 203
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    .line 214
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 215
    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_13

    .line 216
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    return-object v0

    .line 218
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 228
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1f6

    packed-switch p1, :pswitch_data_1fa

    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 464
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 468
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/ContentValues;

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v3, p0

    .line 474
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriberByIndexAndGetIndex(IILandroid/content/ContentValues;Ljava/lang/String;I)I

    move-result p0

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f5

    .line 452
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfoForSubscriber(II)I

    move-result p0

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f5

    .line 440
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I

    move-result-object p0

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1f5

    .line 430
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object p0

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1f5

    .line 418
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInitForSubscriber(II)Ljava/util/List;

    move-result-object p0

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_1f5

    .line 408
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I

    move-result p0

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f5

    .line 398
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I

    move-result-object p0

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1f5

    .line 390
    :pswitch_c1
    invoke-interface {p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object p0

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1f5

    .line 381
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsCapacityForSubscriber(I)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1f5

    .line 369
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object p0

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1f5

    .line 359
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object p0

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1f5

    .line 341
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    sget-object p1, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 351
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexUsingARnSubId(IILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)I

    move-result p0

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f5

    .line 323
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/ContentValues;

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 333
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexForSubscriber(IILandroid/content/ContentValues;ILjava/lang/String;)Z

    move-result p0

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1f5

    .line 307
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 311
    sget-object v1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p0

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1f5

    .line 287
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 299
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1f5

    .line 277
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInit(I)Ljava/util/List;

    move-result-object p0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1f5

    .line 265
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInPBForSubscriber(II)Ljava/util/List;

    move-result-object p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1f5

    .line 253
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object p0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1f5

    .line 243
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object p0

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :goto_1f5
    return v0

    .line 234
    :cond_1f6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1e4
        :pswitch_1ce
        :pswitch_1b8
        :pswitch_1a6
        :pswitch_17f
        :pswitch_15c
        :pswitch_133
        :pswitch_10a
        :pswitch_f7
        :pswitch_e0
        :pswitch_cd
        :pswitch_c1
        :pswitch_ae
        :pswitch_9b
        :pswitch_84
        :pswitch_71
        :pswitch_5a
        :pswitch_43
        :pswitch_1a
    .end packed-switch
.end method
