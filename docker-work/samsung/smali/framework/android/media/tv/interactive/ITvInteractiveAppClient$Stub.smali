.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppClient.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdRequest:I = 0x11

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x7

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x4

.field static final blacklist TRANSACTION_onCommandRequest:I = 0x9

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x5

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xc

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xb

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0xf

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x10

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0xd

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0xe

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0xa

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_38

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 169
    :pswitch_5
    const-string v0, "onAdRequest"

    return-object v0

    .line 165
    :pswitch_8
    const-string v0, "onRequestSigning"

    return-object v0

    .line 161
    :pswitch_b
    const-string v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 157
    :pswitch_e
    const-string v0, "onRequestTrackInfoList"

    return-object v0

    .line 153
    :pswitch_11
    const-string v0, "onRequestStreamVolume"

    return-object v0

    .line 149
    :pswitch_14
    const-string v0, "onRequestCurrentChannelLcn"

    return-object v0

    .line 145
    :pswitch_17
    const-string v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 141
    :pswitch_1a
    const-string v0, "onSetVideoBounds"

    return-object v0

    .line 137
    :pswitch_1d
    const-string v0, "onCommandRequest"

    return-object v0

    .line 133
    :pswitch_20
    const-string v0, "onTeletextAppStateChanged"

    return-object v0

    .line 129
    :pswitch_23
    const-string v0, "onBiInteractiveAppCreated"

    return-object v0

    .line 125
    :pswitch_26
    const-string v0, "onSessionStateChanged"

    return-object v0

    .line 121
    :pswitch_29
    const-string v0, "onRemoveBroadcastInfo"

    return-object v0

    .line 117
    :pswitch_2c
    const-string v0, "onBroadcastInfoRequest"

    return-object v0

    .line 113
    :pswitch_2f
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 109
    :pswitch_32
    const-string v0, "onSessionReleased"

    return-object v0

    .line 105
    :pswitch_35
    const-string v0, "onSessionCreated"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
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

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 647
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 180
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 184
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.media.tv.interactive.ITvInteractiveAppClient"

    .line 185
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 186
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_13
    packed-switch v7, :pswitch_data_16e

    .line 196
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_174

    .line 380
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 192
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return v10

    .line 371
    :pswitch_26
    sget-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/AdRequest;

    .line 373
    .local v0, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdRequest(Landroid/media/tv/AdRequest;I)V

    .line 376
    goto/16 :goto_16d

    .line 355
    .end local v0    # "_arg0":Landroid/media/tv/AdRequest;
    .end local v1    # "_arg1":I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 357
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 359
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 363
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 364
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 366
    goto/16 :goto_16d

    .line 347
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 350
    goto/16 :goto_16d

    .line 339
    .end local v0    # "_arg0":I
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTrackInfoList(I)V

    .line 342
    goto/16 :goto_16d

    .line 331
    .end local v0    # "_arg0":I
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStreamVolume(I)V

    .line 334
    goto/16 :goto_16d

    .line 323
    .end local v0    # "_arg0":I
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelLcn(I)V

    .line 326
    goto/16 :goto_16d

    .line 315
    .end local v0    # "_arg0":I
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 318
    goto/16 :goto_16d

    .line 305
    .end local v0    # "_arg0":I
    :pswitch_9a
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 307
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetVideoBounds(Landroid/graphics/Rect;I)V

    .line 310
    goto/16 :goto_16d

    .line 293
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":I
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 297
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 300
    goto/16 :goto_16d

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTeletextAppStateChanged(II)V

    .line 288
    goto/16 :goto_16d

    .line 271
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d6
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 273
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 278
    goto/16 :goto_16d

    .line 259
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v6, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionStateChanged(III)V

    .line 266
    goto/16 :goto_16d

    .line 249
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRemoveBroadcastInfo(II)V

    .line 254
    goto :goto_16d

    .line 239
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_111
    sget-object v0, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/BroadcastInfoRequest;

    .line 241
    .local v0, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {v6, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 244
    goto :goto_16d

    .line 223
    .end local v0    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    .end local v1    # "_arg1":I
    :pswitch_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 225
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 227
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 229
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 231
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 232
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onLayoutSurface(IIIII)V

    .line 234
    goto :goto_16d

    .line 215
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v6, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionReleased(I)V

    .line 218
    goto :goto_16d

    .line 201
    .end local v0    # "_arg0":I
    :pswitch_152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 205
    .local v1, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 207
    .local v2, "_arg2":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 210
    nop

    .line 383
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/view/InputChannel;
    .end local v3    # "_arg3":I
    :goto_16d
    return v10

    :pswitch_data_16e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_152
        :pswitch_147
        :pswitch_124
        :pswitch_111
        :pswitch_102
        :pswitch_ee
        :pswitch_d6
        :pswitch_c6
        :pswitch_ae
        :pswitch_9a
        :pswitch_8e
        :pswitch_82
        :pswitch_76
        :pswitch_6a
        :pswitch_5e
        :pswitch_3a
        :pswitch_26
    .end packed-switch
.end method
