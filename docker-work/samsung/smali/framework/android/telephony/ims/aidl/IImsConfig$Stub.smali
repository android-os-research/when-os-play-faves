.class public abstract Landroid/telephony/ims/aidl/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addImsConfigCallback:I = 0x1

.field static final blacklist TRANSACTION_addRcsConfigCallback:I = 0xe

.field static final blacklist TRANSACTION_getConfigInt:I = 0x3

.field static final blacklist TRANSACTION_getConfigString:I = 0x4

.field static final blacklist TRANSACTION_getRcsClientConfiguration:I = 0x11

.field static final blacklist TRANSACTION_notifyIntImsConfigChanged:I = 0x13

.field static final blacklist TRANSACTION_notifyProvisionedIntValueChanged:I = 0xc

.field static final blacklist TRANSACTION_notifyProvisionedStringValueChanged:I = 0xd

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationErrorReceived:I = 0xa

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x8

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationRemoved:I = 0x9

.field static final blacklist TRANSACTION_notifyRcsPreConfigurationReceived:I = 0xb

.field static final blacklist TRANSACTION_notifyStringImsConfigChanged:I = 0x14

.field static final blacklist TRANSACTION_removeImsConfigCallback:I = 0x2

.field static final blacklist TRANSACTION_removeRcsConfigCallback:I = 0xf

.field static final blacklist TRANSACTION_setConfigInt:I = 0x5

.field static final blacklist TRANSACTION_setConfigString:I = 0x6

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0x12

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0x10

.field static final blacklist TRANSACTION_updateImsCarrierConfigs:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_4

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_14

    .line 111
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v1

    .line 113
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 122
    packed-switch p0, :pswitch_data_52

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 202
    :pswitch_5
    const-string/jumbo v0, "notifyStringImsConfigChanged"

    return-object v0

    .line 198
    :pswitch_9
    const-string/jumbo v0, "notifyIntImsConfigChanged"

    return-object v0

    .line 194
    :pswitch_d
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    .line 190
    :pswitch_11
    const-string/jumbo v0, "getRcsClientConfiguration"

    return-object v0

    .line 186
    :pswitch_15
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    .line 182
    :pswitch_19
    const-string/jumbo v0, "removeRcsConfigCallback"

    return-object v0

    .line 178
    :pswitch_1d
    const-string v0, "addRcsConfigCallback"

    return-object v0

    .line 174
    :pswitch_20
    const-string/jumbo v0, "notifyProvisionedStringValueChanged"

    return-object v0

    .line 170
    :pswitch_24
    const-string/jumbo v0, "notifyProvisionedIntValueChanged"

    return-object v0

    .line 166
    :pswitch_28
    const-string/jumbo v0, "notifyRcsPreConfigurationReceived"

    return-object v0

    .line 162
    :pswitch_2c
    const-string/jumbo v0, "notifyRcsAutoConfigurationErrorReceived"

    return-object v0

    .line 158
    :pswitch_30
    const-string/jumbo v0, "notifyRcsAutoConfigurationRemoved"

    return-object v0

    .line 154
    :pswitch_34
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 150
    :pswitch_38
    const-string/jumbo v0, "updateImsCarrierConfigs"

    return-object v0

    .line 146
    :pswitch_3c
    const-string/jumbo v0, "setConfigString"

    return-object v0

    .line 142
    :pswitch_40
    const-string/jumbo v0, "setConfigInt"

    return-object v0

    .line 138
    :pswitch_44
    const-string v0, "getConfigString"

    return-object v0

    .line 134
    :pswitch_47
    const-string v0, "getConfigInt"

    return-object v0

    .line 130
    :pswitch_4a
    const-string/jumbo v0, "removeImsConfigCallback"

    return-object v0

    .line 126
    :pswitch_4e
    const-string v0, "addImsConfigCallback"

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 799
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 213
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 217
    const-string v0, "android.telephony.ims.aidl.IImsConfig"

    .line 218
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 219
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    :cond_d
    packed-switch p1, :pswitch_data_182

    .line 229
    packed-switch p1, :pswitch_data_188

    .line 428
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 225
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return v1

    .line 418
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_180

    .line 407
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyIntImsConfigChanged(II)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_180

    .line 398
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_42
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    .line 399
    .local v2, "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_180

    .line 388
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getRcsClientConfiguration(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    goto/16 :goto_180

    .line 381
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->triggerRcsReconfiguration()V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    goto/16 :goto_180

    .line 373
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 374
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_180

    .line 364
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 365
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_180

    .line 353
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyProvisionedStringValueChanged(ILjava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_180

    .line 342
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyProvisionedIntValueChanged(II)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto/16 :goto_180

    .line 333
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 334
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsPreConfigurationReceived([B)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_180

    .line 322
    .end local v2    # "_arg0":[B
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationErrorReceived(ILjava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_180

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_de
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationRemoved()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_180

    .line 305
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 307
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 308
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_180

    .line 296
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Z
    :pswitch_f9
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 297
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto/16 :goto_180

    .line 284
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigString(ILjava/lang/String;)I

    move-result v4

    .line 289
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    goto :goto_180

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->setConfigInt(II)I

    move-result v4

    .line 277
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_180

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigString(I)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    goto :goto_180

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->getConfigInt(I)I

    move-result v3

    .line 255
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    goto :goto_180

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_180

    .line 234
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    nop

    .line 431
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :goto_180
    return v1

    nop

    :pswitch_data_182
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_16e
        :pswitch_15c
        :pswitch_14a
        :pswitch_138
        :pswitch_122
        :pswitch_10c
        :pswitch_f9
        :pswitch_e6
        :pswitch_de
        :pswitch_cb
        :pswitch_bc
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_70
        :pswitch_68
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
