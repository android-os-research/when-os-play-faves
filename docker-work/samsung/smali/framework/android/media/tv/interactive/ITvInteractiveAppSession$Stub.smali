.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSession.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x4

.field static final blacklist TRANSACTION_createMediaView:I = 0x1b

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0x5

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x1a

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x19

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x14

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x15

.field static final blacklist TRANSACTION_notifyError:I = 0xd

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x16

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x10

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x11

.field static final blacklist TRANSACTION_notifyTuned:I = 0xf

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x12

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x13

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x1c

.field static final blacklist TRANSACTION_release:I = 0xe

.field static final blacklist TRANSACTION_removeMediaView:I = 0x1d

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x3

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x7

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xb

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xc

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0x9

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xa

.field static final blacklist TRANSACTION_setSurface:I = 0x17

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0x6

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x1

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_14

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object v1

    .line 128
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 137
    packed-switch p0, :pswitch_data_60

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 253
    :pswitch_5
    const-string v0, "removeMediaView"

    return-object v0

    .line 249
    :pswitch_8
    const-string v0, "relayoutMediaView"

    return-object v0

    .line 245
    :pswitch_b
    const-string v0, "createMediaView"

    return-object v0

    .line 241
    :pswitch_e
    const-string v0, "notifyAdResponse"

    return-object v0

    .line 237
    :pswitch_11
    const-string v0, "notifyBroadcastInfoResponse"

    return-object v0

    .line 233
    :pswitch_14
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 229
    :pswitch_17
    const-string/jumbo v0, "setSurface"

    return-object v0

    .line 225
    :pswitch_1b
    const-string v0, "notifySignalStrength"

    return-object v0

    .line 221
    :pswitch_1e
    const-string v0, "notifyContentBlocked"

    return-object v0

    .line 217
    :pswitch_21
    const-string v0, "notifyContentAllowed"

    return-object v0

    .line 213
    :pswitch_24
    const-string v0, "notifyVideoUnavailable"

    return-object v0

    .line 209
    :pswitch_27
    const-string v0, "notifyVideoAvailable"

    return-object v0

    .line 205
    :pswitch_2a
    const-string v0, "notifyTracksChanged"

    return-object v0

    .line 201
    :pswitch_2d
    const-string v0, "notifyTrackSelected"

    return-object v0

    .line 197
    :pswitch_30
    const-string v0, "notifyTuned"

    return-object v0

    .line 193
    :pswitch_33
    const-string v0, "release"

    return-object v0

    .line 189
    :pswitch_36
    const-string v0, "notifyError"

    return-object v0

    .line 185
    :pswitch_39
    const-string v0, "sendSigningResult"

    return-object v0

    .line 181
    :pswitch_3c
    const-string v0, "sendCurrentTvInputId"

    return-object v0

    .line 177
    :pswitch_3f
    const-string v0, "sendTrackInfoList"

    return-object v0

    .line 173
    :pswitch_42
    const-string v0, "sendStreamVolume"

    return-object v0

    .line 169
    :pswitch_45
    const-string v0, "sendCurrentChannelLcn"

    return-object v0

    .line 165
    :pswitch_48
    const-string v0, "sendCurrentChannelUri"

    return-object v0

    .line 161
    :pswitch_4b
    const-string/jumbo v0, "setTeletextAppEnabled"

    return-object v0

    .line 157
    :pswitch_4f
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    .line 153
    :pswitch_52
    const-string v0, "createBiInteractiveApp"

    return-object v0

    .line 149
    :pswitch_55
    const-string v0, "resetInteractiveApp"

    return-object v0

    .line 145
    :pswitch_58
    const-string/jumbo v0, "stopInteractiveApp"

    return-object v0

    .line 141
    :pswitch_5c
    const-string/jumbo v0, "startInteractiveApp"

    return-object v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
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
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 132
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 910
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 264
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 268
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    .line 269
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 270
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    :cond_d
    packed-switch p1, :pswitch_data_186

    .line 280
    packed-switch p1, :pswitch_data_18c

    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 276
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return v1

    .line 504
    :pswitch_1c
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->removeMediaView()V

    .line 505
    goto/16 :goto_185

    .line 497
    :pswitch_21
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 498
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 500
    goto/16 :goto_185

    .line 487
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 489
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 490
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 492
    goto/16 :goto_185

    .line 479
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_45
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    .line 480
    .local v2, "_arg0":Landroid/media/tv/AdResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    .line 482
    goto/16 :goto_185

    .line 471
    .end local v2    # "_arg0":Landroid/media/tv/AdResponse;
    :pswitch_55
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    .line 472
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 474
    goto/16 :goto_185

    .line 459
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoResponse;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->dispatchSurfaceChanged(III)V

    .line 466
    goto/16 :goto_185

    .line 451
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_79
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 452
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setSurface(Landroid/view/Surface;)V

    .line 454
    goto/16 :goto_185

    .line 443
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifySignalStrength(I)V

    .line 446
    goto/16 :goto_185

    .line 435
    .end local v2    # "_arg0":I
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentBlocked(Ljava/lang/String;)V

    .line 438
    goto/16 :goto_185

    .line 429
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a1
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentAllowed()V

    .line 430
    goto/16 :goto_185

    .line 422
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoUnavailable(I)V

    .line 425
    goto/16 :goto_185

    .line 416
    .end local v2    # "_arg0":I
    :pswitch_b2
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoAvailable()V

    .line 417
    goto/16 :goto_185

    .line 409
    :pswitch_b7
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 410
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTracksChanged(Ljava/util/List;)V

    .line 412
    goto/16 :goto_185

    .line 399
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTrackSelected(ILjava/lang/String;)V

    .line 404
    goto/16 :goto_185

    .line 391
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d5
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 392
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTuned(Landroid/net/Uri;)V

    .line 394
    goto/16 :goto_185

    .line 385
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_e5
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->release()V

    .line 386
    goto/16 :goto_185

    .line 376
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 379
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    goto/16 :goto_185

    .line 366
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 369
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    .line 371
    goto/16 :goto_185

    .line 358
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 361
    goto/16 :goto_185

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11a
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    .line 353
    goto :goto_185

    .line 342
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 343
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendStreamVolume(F)V

    .line 345
    goto :goto_185

    .line 334
    .end local v2    # "_arg0":F
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelLcn(I)V

    .line 337
    goto :goto_185

    .line 326
    .end local v2    # "_arg0":I
    :pswitch_13d
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 327
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 329
    goto :goto_185

    .line 318
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 319
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setTeletextAppEnabled(Z)V

    .line 321
    goto :goto_185

    .line 310
    .end local v2    # "_arg0":Z
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 313
    goto :goto_185

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_162
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 302
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 303
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 305
    goto :goto_185

    .line 294
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_179
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->resetInteractiveApp()V

    .line 295
    goto :goto_185

    .line 289
    :pswitch_17d
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->stopInteractiveApp()V

    .line 290
    goto :goto_185

    .line 284
    :pswitch_181
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->startInteractiveApp()V

    .line 285
    nop

    .line 512
    :goto_185
    return v1

    :pswitch_data_186
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_181
        :pswitch_17d
        :pswitch_179
        :pswitch_162
        :pswitch_157
        :pswitch_14c
        :pswitch_13d
        :pswitch_132
        :pswitch_127
        :pswitch_11a
        :pswitch_10e
        :pswitch_fe
        :pswitch_ea
        :pswitch_e5
        :pswitch_d5
        :pswitch_c5
        :pswitch_b7
        :pswitch_b2
        :pswitch_a6
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_79
        :pswitch_65
        :pswitch_55
        :pswitch_45
        :pswitch_31
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method
