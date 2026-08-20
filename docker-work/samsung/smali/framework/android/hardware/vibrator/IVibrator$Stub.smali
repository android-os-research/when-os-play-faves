.class public abstract Landroid/hardware/vibrator/IVibrator$Stub;
.super Landroid/os/Binder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibrator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_alwaysOnDisable:I = 0xf

.field static final blacklist TRANSACTION_alwaysOnEnable:I = 0xe

.field static final blacklist TRANSACTION_compose:I = 0xc

.field static final blacklist TRANSACTION_composePwle:I = 0x18

.field static final blacklist TRANSACTION_getBandwidthAmplitudeMap:I = 0x14

.field static final blacklist TRANSACTION_getCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getCompositionDelayMax:I = 0x8

.field static final blacklist TRANSACTION_getCompositionSizeMax:I = 0x9

.field static final blacklist TRANSACTION_getFrequencyMinimum:I = 0x13

.field static final blacklist TRANSACTION_getFrequencyResolution:I = 0x12

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPrimitiveDuration:I = 0xb

.field static final blacklist TRANSACTION_getPwleCompositionSizeMax:I = 0x16

.field static final blacklist TRANSACTION_getPwlePrimitiveDurationMax:I = 0x15

.field static final blacklist TRANSACTION_getQFactor:I = 0x11

.field static final blacklist TRANSACTION_getResonantFrequency:I = 0x10

.field static final blacklist TRANSACTION_getSupportedAlwaysOnEffects:I = 0xd

.field static final blacklist TRANSACTION_getSupportedBraking:I = 0x17

.field static final blacklist TRANSACTION_getSupportedEffects:I = 0x5

.field static final blacklist TRANSACTION_getSupportedPrimitives:I = 0xa

.field static final blacklist TRANSACTION_off:I = 0x2

.field static final blacklist TRANSACTION_on:I = 0x3

.field static final blacklist TRANSACTION_perform:I = 0x4

.field static final blacklist TRANSACTION_setAmplitude:I = 0x6

.field static final blacklist TRANSACTION_setExternalControl:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->markVintfStability()V

    .line 126
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibrator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibrator;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_4
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/vibrator/IVibrator;

    if-eqz v1, :cond_14

    .line 139
    move-object v1, v0

    check-cast v1, Landroid/hardware/vibrator/IVibrator;

    return-object v1

    .line 141
    :cond_14
    new-instance v1, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/vibrator/IVibrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 145
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

    .line 149
    sget-object v0, Landroid/hardware/vibrator/IVibrator$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    sparse-switch p1, :sswitch_data_19e

    .line 173
    packed-switch p1, :pswitch_data_1ac

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 162
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return v1

    .line 168
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 368
    :pswitch_32
    sget-object v2, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/vibrator/PrimitivePwle;

    .line 370
    .local v2, "_arg0":[Landroid/hardware/vibrator/PrimitivePwle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 371
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->composePwle([Landroid/hardware/vibrator/PrimitivePwle;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto/16 :goto_19d

    .line 360
    .end local v2    # "_arg0":[Landroid/hardware/vibrator/PrimitivePwle;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_4d
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedBraking()[I

    move-result-object v2

    .line 361
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 363
    goto/16 :goto_19d

    .line 353
    .end local v2    # "_result":[I
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwleCompositionSizeMax()I

    move-result v2

    .line 354
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_19d

    .line 346
    .end local v2    # "_result":I
    :pswitch_65
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getPwlePrimitiveDurationMax()I

    move-result v2

    .line 347
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    goto/16 :goto_19d

    .line 339
    .end local v2    # "_result":I
    :pswitch_71
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getBandwidthAmplitudeMap()[F

    move-result-object v2

    .line 340
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 342
    goto/16 :goto_19d

    .line 332
    .end local v2    # "_result":[F
    :pswitch_7d
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyMinimum()F

    move-result v2

    .line 333
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 335
    goto/16 :goto_19d

    .line 325
    .end local v2    # "_result":F
    :pswitch_89
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getFrequencyResolution()F

    move-result v2

    .line 326
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 328
    goto/16 :goto_19d

    .line 318
    .end local v2    # "_result":F
    :pswitch_95
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getQFactor()F

    move-result v2

    .line 319
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    goto/16 :goto_19d

    .line 311
    .end local v2    # "_result":F
    :pswitch_a1
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getResonantFrequency()F

    move-result v2

    .line 312
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 314
    goto/16 :goto_19d

    .line 303
    .end local v2    # "_result":F
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnDisable(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_19d

    .line 290
    .end local v2    # "_arg0":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 295
    .local v4, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->alwaysOnEnable(IIB)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_19d

    .line 282
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":B
    :pswitch_d3
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedAlwaysOnEffects()[I

    move-result-object v2

    .line 283
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 285
    goto/16 :goto_19d

    .line 272
    .end local v2    # "_result":[I
    :pswitch_df
    sget-object v2, Landroid/hardware/vibrator/CompositeEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/vibrator/CompositeEffect;

    .line 274
    .local v2, "_arg0":[Landroid/hardware/vibrator/CompositeEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 275
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->compose([Landroid/hardware/vibrator/CompositeEffect;Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto/16 :goto_19d

    .line 262
    .end local v2    # "_arg0":[Landroid/hardware/vibrator/CompositeEffect;
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->getPrimitiveDuration(I)I

    move-result v3

    .line 265
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    goto/16 :goto_19d

    .line 254
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_10d
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedPrimitives()[I

    move-result-object v2

    .line 255
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 257
    goto/16 :goto_19d

    .line 247
    .end local v2    # "_result":[I
    :pswitch_119
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionSizeMax()I

    move-result v2

    .line 248
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    goto/16 :goto_19d

    .line 240
    .end local v2    # "_result":I
    :pswitch_125
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCompositionDelayMax()I

    move-result v2

    .line 241
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    goto :goto_19d

    .line 232
    .end local v2    # "_result":I
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 233
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->setExternalControl(Z)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_19d

    .line 223
    .end local v2    # "_arg0":Z
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 224
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/hardware/vibrator/IVibrator$Stub;->setAmplitude(F)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_19d

    .line 215
    .end local v2    # "_arg0":F
    :pswitch_14c
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getSupportedEffects()[I

    move-result-object v2

    .line 216
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 218
    goto :goto_19d

    .line 202
    .end local v2    # "_result":[I
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 206
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v4

    .line 207
    .local v4, "_arg2":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/vibrator/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/IVibratorCallback;)I

    move-result v5

    .line 209
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    goto :goto_19d

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Landroid/hardware/vibrator/IVibratorCallback;
    .end local v5    # "_result":I
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v3

    .line 194
    .local v3, "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/hardware/vibrator/IVibrator$Stub;->on(ILandroid/hardware/vibrator/IVibratorCallback;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_19d

    .line 184
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/vibrator/IVibratorCallback;
    :pswitch_18b
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->off()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_19d

    .line 177
    :pswitch_192
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibrator$Stub;->getCapabilities()I

    move-result v2

    .line 178
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    nop

    .line 381
    .end local v2    # "_result":I
    :goto_19d
    return v1

    :sswitch_data_19e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_192
        :pswitch_18b
        :pswitch_175
        :pswitch_157
        :pswitch_14c
        :pswitch_13e
        :pswitch_130
        :pswitch_125
        :pswitch_119
        :pswitch_10d
        :pswitch_fa
        :pswitch_df
        :pswitch_d3
        :pswitch_bc
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_4d
        :pswitch_32
    .end packed-switch
.end method
