.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAnqpQueryDone:I = 0x1

.field static final TRANSACTION_onAssociationRejected:I = 0x2

.field static final TRANSACTION_onAuthenticationTimeout:I = 0x3

.field static final TRANSACTION_onAuxiliarySupplicantEvent:I = 0x4

.field static final TRANSACTION_onBssTmHandlingDone:I = 0x5

.field static final TRANSACTION_onBssidChanged:I = 0x6

.field static final TRANSACTION_onDisconnected:I = 0x7

.field static final TRANSACTION_onDppFailure:I = 0x8

.field static final TRANSACTION_onDppProgress:I = 0x9

.field static final TRANSACTION_onDppSuccess:I = 0xa

.field static final TRANSACTION_onDppSuccessConfigReceived:I = 0xb

.field static final TRANSACTION_onDppSuccessConfigSent:I = 0xc

.field static final TRANSACTION_onEapFailure:I = 0xd

.field static final TRANSACTION_onExtRadioWorkStart:I = 0xe

.field static final TRANSACTION_onExtRadioWorkTimeout:I = 0xf

.field static final TRANSACTION_onHs20DeauthImminentNotice:I = 0x10

.field static final TRANSACTION_onHs20IconQueryDone:I = 0x11

.field static final TRANSACTION_onHs20SubscriptionRemediation:I = 0x12

.field static final TRANSACTION_onHs20TermsAndConditionsAcceptanceRequestedNotification:I = 0x13

.field static final TRANSACTION_onNetworkAdded:I = 0x14

.field static final TRANSACTION_onNetworkNotFound:I = 0x15

.field static final TRANSACTION_onNetworkRemoved:I = 0x16

.field static final TRANSACTION_onPmkCacheAdded:I = 0x17

.field static final TRANSACTION_onQosPolicyRequest:I = 0x1d

.field static final TRANSACTION_onQosPolicyReset:I = 0x1c

.field static final TRANSACTION_onStateChanged:I = 0x18

.field static final TRANSACTION_onWpsEventFail:I = 0x19

.field static final TRANSACTION_onWpsEventPbcOverlap:I = 0x1a

.field static final TRANSACTION_onWpsEventSuccess:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;->markVintfStability()V

    .line 125
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 137
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    if-eqz v1, :cond_13

    .line 138
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    return-object v0

    .line 140
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_1b6

    packed-switch p1, :pswitch_data_1c4

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 156
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 161
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 167
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 425
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 427
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;

    .line 428
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onQosPolicyRequest(I[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;)V

    goto/16 :goto_1b5

    .line 419
    :pswitch_43
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onQosPolicyReset()V

    goto/16 :goto_1b5

    .line 414
    :pswitch_48
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    goto/16 :goto_1b5

    .line 409
    :pswitch_4d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    goto/16 :goto_1b5

    .line 399
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 404
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventFail([BII)V

    goto/16 :goto_1b5

    .line 384
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    move-object v2, p0

    .line 393
    invoke-interface/range {v2 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onStateChanged(I[BI[BZ)V

    goto/16 :goto_1b5

    .line 375
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 378
    invoke-interface {p0, p3, p4, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onPmkCacheAdded(J[B)V

    goto/16 :goto_1b5

    .line 368
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    goto/16 :goto_1b5

    .line 361
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 362
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkNotFound([B)V

    goto/16 :goto_1b5

    .line 354
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 355
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    goto/16 :goto_1b5

    .line 345
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V

    goto/16 :goto_1b5

    .line 334
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 339
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto/16 :goto_1b5

    .line 323
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 328
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;[B)V

    goto/16 :goto_1b5

    .line 310
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_1b5

    .line 303
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_1b5

    .line 296
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    goto/16 :goto_1b5

    .line 287
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 290
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onEapFailure([BI)V

    goto/16 :goto_1b5

    .line 281
    :pswitch_108
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    goto/16 :goto_1b5

    .line 267
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 275
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;

    move-object v2, p0

    .line 276
    invoke-interface/range {v2 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived([BLjava/lang/String;[BILcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V

    goto/16 :goto_1b5

    .line 260
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 261
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccess(I)V

    goto/16 :goto_1b5

    .line 253
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    goto/16 :goto_1b5

    .line 240
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object p2

    .line 247
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppFailure(ILjava/lang/String;Ljava/lang/String;[C)V

    goto :goto_1b5

    .line 229
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 234
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    goto :goto_1b5

    .line 220
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 223
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    goto :goto_1b5

    .line 213
    :pswitch_16e
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;

    .line 214
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;)V

    goto :goto_1b5

    .line 202
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAuxiliarySupplicantEvent(I[BLjava/lang/String;)V

    goto :goto_1b5

    .line 195
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 196
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    goto :goto_1b5

    .line 188
    :pswitch_192
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;

    .line 189
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;)V

    goto :goto_1b5

    .line 177
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 179
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;

    .line 181
    sget-object p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;

    .line 182
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;)V

    :goto_1b5
    return v1

    :sswitch_data_1b6
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_19e
        :pswitch_192
        :pswitch_18a
        :pswitch_17a
        :pswitch_16e
        :pswitch_162
        :pswitch_152
        :pswitch_13e
        :pswitch_135
        :pswitch_12c
        :pswitch_10d
        :pswitch_108
        :pswitch_fb
        :pswitch_f2
        :pswitch_e9
        :pswitch_d4
        :pswitch_c3
        :pswitch_b2
        :pswitch_a5
        :pswitch_9c
        :pswitch_93
        :pswitch_8a
        :pswitch_7d
        :pswitch_63
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
        :pswitch_32
    .end packed-switch
.end method
