.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDeviceFound:I = 0x1

.field static final TRANSACTION_onDeviceFoundWithVendorElements:I = 0x12

.field static final TRANSACTION_onDeviceLost:I = 0x2

.field static final TRANSACTION_onFindStopped:I = 0x3

.field static final TRANSACTION_onGoNegotiationCompleted:I = 0x4

.field static final TRANSACTION_onGoNegotiationRequest:I = 0x5

.field static final TRANSACTION_onGroupFormationFailure:I = 0x6

.field static final TRANSACTION_onGroupFormationSuccess:I = 0x7

.field static final TRANSACTION_onGroupFrequencyChanged:I = 0x11

.field static final TRANSACTION_onGroupRemoved:I = 0x8

.field static final TRANSACTION_onGroupStarted:I = 0x9

.field static final TRANSACTION_onInvitationReceived:I = 0xa

.field static final TRANSACTION_onInvitationResult:I = 0xb

.field static final TRANSACTION_onProvisionDiscoveryCompleted:I = 0xc

.field static final TRANSACTION_onR2DeviceFound:I = 0xd

.field static final TRANSACTION_onServiceDiscoveryResponse:I = 0xe

.field static final TRANSACTION_onStaAuthorized:I = 0xf

.field static final TRANSACTION_onStaDeauthorized:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;->markVintfStability()V

    .line 92
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 104
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    if-eqz v1, :cond_13

    .line 105
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    return-object v0

    .line 107
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p3

    .line 115
    sget-object v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v11, 0x1

    if-lt v1, v11, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    move-object v4, p2

    .line 117
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    :cond_13
    move-object v4, p2

    :goto_14
    sparse-switch v1, :sswitch_data_1a8

    packed-switch v1, :pswitch_data_1b6

    .line 359
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 123
    :sswitch_1f
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 128
    :sswitch_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 134
    :sswitch_2e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 335
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    .line 354
    invoke-interface/range {v0 .. v10}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceFoundWithVendorElements([B[B[BLjava/lang/String;IBI[B[B[B)V

    goto/16 :goto_1a7

    .line 326
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFrequencyChanged(Ljava/lang/String;I)V

    goto/16 :goto_1a7

    .line 317
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 320
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    goto/16 :goto_1a7

    .line 308
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 311
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    goto/16 :goto_1a7

    .line 297
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 302
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BC[B)V

    goto/16 :goto_1a7

    .line 274
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    .line 291
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onR2DeviceFound([B[B[BLjava/lang/String;IBI[B[B)V

    goto/16 :goto_1a7

    .line 259
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v4, v5

    move-object v5, v6

    .line 268
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBILjava/lang/String;)V

    goto/16 :goto_1a7

    .line 250
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    goto/16 :goto_1a7

    .line 235
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move v4, v5

    move v5, v6

    .line 244
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    goto/16 :goto_1a7

    .line 214
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    move-object v0, p0

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    .line 229
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ)V

    goto :goto_1a7

    .line 205
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 208
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    goto :goto_1a7

    .line 199
    :pswitch_152
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    goto :goto_1a7

    .line 193
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    goto :goto_1a7

    .line 184
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BI)V

    goto :goto_1a7

    .line 177
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    goto :goto_1a7

    .line 171
    :pswitch_172
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onFindStopped()V

    goto :goto_1a7

    .line 165
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 166
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    goto :goto_1a7

    .line 144
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    .line 159
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;IBI[B)V

    :goto_1a7
    return v11

    :sswitch_data_1a8
    .sparse-switch
        0xfffffe -> :sswitch_2e
        0xffffff -> :sswitch_23
        0x5f4e5446 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_17e
        :pswitch_176
        :pswitch_172
        :pswitch_16a
        :pswitch_15e
        :pswitch_156
        :pswitch_152
        :pswitch_146
        :pswitch_11c
        :pswitch_100
        :pswitch_f3
        :pswitch_d7
        :pswitch_a7
        :pswitch_95
        :pswitch_88
        :pswitch_7b
        :pswitch_6e
        :pswitch_39
    .end packed-switch
.end method
