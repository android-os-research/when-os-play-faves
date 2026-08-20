.class public abstract Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifyReadyToHandleImsCallbacks:I = 0x1

.field static final TRANSACTION_onCalling:I = 0x2

.field static final TRANSACTION_onConfParticipantHeld:I = 0xc

.field static final TRANSACTION_onConfParticipantResumed:I = 0xd

.field static final TRANSACTION_onConferenceEstablished:I = 0x14

.field static final TRANSACTION_onEPdgUnavailable:I = 0x1b

.field static final TRANSACTION_onEarlyMediaStarted:I = 0x5

.field static final TRANSACTION_onEnded:I = 0xf

.field static final TRANSACTION_onEpdgStateChanged:I = 0x1c

.field static final TRANSACTION_onError:I = 0x12

.field static final TRANSACTION_onEstablished:I = 0x7

.field static final TRANSACTION_onFailure:I = 0x8

.field static final TRANSACTION_onForwarded:I = 0xe

.field static final TRANSACTION_onHeld:I = 0xa

.field static final TRANSACTION_onImsGeneralEvent:I = 0x1e

.field static final TRANSACTION_onParticipantAdded:I = 0x16

.field static final TRANSACTION_onParticipantRemoved:I = 0x17

.field static final TRANSACTION_onParticipantUpdated:I = 0x15

.field static final TRANSACTION_onProfileUpdated:I = 0x13

.field static final TRANSACTION_onResumed:I = 0xb

.field static final TRANSACTION_onRingingBack:I = 0x4

.field static final TRANSACTION_onSessionChanged:I = 0x1d

.field static final TRANSACTION_onSessionProgress:I = 0x6

.field static final TRANSACTION_onSessionUpdateRequested:I = 0x10

.field static final TRANSACTION_onStopAlertTone:I = 0x11

.field static final TRANSACTION_onSwitched:I = 0x9

.field static final TRANSACTION_onTrying:I = 0x3

.field static final TRANSACTION_onTtyTextRequest:I = 0x18

.field static final TRANSACTION_onUssdReceived:I = 0x1a

.field static final TRANSACTION_onUssdResponse:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "com.sec.ims.volte2.IImsCallSessionEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 126
    if-nez p0, :cond_4

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_4
    const-string v0, "com.sec.ims.volte2.IImsCallSessionEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    if-eqz v1, :cond_14

    .line 131
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    return-object v1

    .line 133
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 137
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

    .line 141
    const-string v0, "com.sec.ims.volte2.IImsCallSessionEventListener"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    packed-switch p1, :pswitch_data_1e2

    .line 153
    packed-switch p1, :pswitch_data_1e8

    .line 431
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 421
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 424
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    goto/16 :goto_1e0

    .line 412
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onSessionChanged(I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_1e0

    .line 405
    .end local v2    # "_arg0":I
    :pswitch_42
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onEpdgStateChanged()V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_1e0

    .line 397
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onEPdgUnavailable(I)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_1e0

    .line 384
    .end local v2    # "_arg0":I
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 389
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onUssdReceived(II[B)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_1e0

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onUssdResponse(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_1e0

    .line 364
    .end local v2    # "_arg0":I
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 367
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onTtyTextRequest(I[B)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_1e0

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onParticipantRemoved(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_1e0

    .line 346
    .end local v2    # "_arg0":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onParticipantAdded(I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_1e0

    .line 331
    .end local v2    # "_arg0":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 337
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 338
    .local v5, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_1e0

    .line 324
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3":[I
    :pswitch_cb
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onConferenceEstablished()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_1e0

    .line 314
    :pswitch_d3
    sget-object v2, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/MediaProfile;

    .line 316
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/MediaProfile;
    sget-object v3, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/data/MediaProfile;

    .line 317
    .local v3, "_arg1":Lcom/sec/ims/volte2/data/MediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto/16 :goto_1e0

    .line 301
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/MediaProfile;
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/data/MediaProfile;
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onError(ILjava/lang/String;I)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_1e0

    .line 294
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_105
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onStopAlertTone()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_1e0

    .line 284
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 287
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onSessionUpdateRequested(I[B)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_1e0

    .line 275
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onEnded(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_1e0

    .line 268
    .end local v2    # "_arg0":I
    :pswitch_12f
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onForwarded()V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_1e0

    .line 258
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 261
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onConfParticipantResumed(IZ)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_1e0

    .line 247
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 250
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onConfParticipantHeld(IZ)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_1e0

    .line 238
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 239
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onResumed(Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_1e0

    .line 227
    .end local v2    # "_arg0":Z
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 229
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 230
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onHeld(ZZ)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_1e0

    .line 218
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onSwitched(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_1e0

    .line 209
    .end local v2    # "_arg0":I
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onFailure(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_1e0

    .line 200
    .end local v2    # "_arg0":I
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onEstablished(I)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_1e0

    .line 191
    .end local v2    # "_arg0":I
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onSessionProgress(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_1e0

    .line 182
    .end local v2    # "_arg0":I
    :pswitch_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onEarlyMediaStarted(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_1e0

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_1c4
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onRingingBack()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_1e0

    .line 169
    :pswitch_1cb
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onTrying()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_1e0

    .line 163
    :pswitch_1d2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->onCalling()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_1e0

    .line 157
    :pswitch_1d9
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->notifyReadyToHandleImsCallbacks()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    nop

    .line 434
    :goto_1e0
    return v1

    nop

    :pswitch_data_1e2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_1d9
        :pswitch_1d2
        :pswitch_1cb
        :pswitch_1c4
        :pswitch_1b6
        :pswitch_1a8
        :pswitch_19a
        :pswitch_18c
        :pswitch_17e
        :pswitch_16c
        :pswitch_15d
        :pswitch_14a
        :pswitch_137
        :pswitch_12f
        :pswitch_120
        :pswitch_10d
        :pswitch_105
        :pswitch_ee
        :pswitch_d3
        :pswitch_cb
        :pswitch_b0
        :pswitch_a1
        :pswitch_92
        :pswitch_7f
        :pswitch_70
        :pswitch_59
        :pswitch_4a
        :pswitch_42
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
