.class public abstract Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addFeatureStatusCallback:I = 0x7

.field static final blacklist TRANSACTION_createEmergencyOnlyMmTelFeature:I = 0x3

.field static final blacklist TRANSACTION_createMmTelFeature:I = 0x2

.field static final blacklist TRANSACTION_createRcsFeature:I = 0x4

.field static final blacklist TRANSACTION_disableIms:I = 0xf

.field static final blacklist TRANSACTION_enableIms:I = 0xe

.field static final blacklist TRANSACTION_getConfig:I = 0xb

.field static final blacklist TRANSACTION_getImsServiceCapabilities:I = 0x6

.field static final blacklist TRANSACTION_getRegistration:I = 0xc

.field static final blacklist TRANSACTION_getSipTransport:I = 0xd

.field static final blacklist TRANSACTION_notifyImsServiceReadyForFeatureCreation:I = 0x9

.field static final blacklist TRANSACTION_querySupportedImsFeatures:I = 0x5

.field static final blacklist TRANSACTION_removeFeatureStatusCallback:I = 0x8

.field static final blacklist TRANSACTION_removeImsFeature:I = 0xa

.field static final blacklist TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v1, :cond_14

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v1

    .line 94
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 103
    packed-switch p0, :pswitch_data_3a

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_5
    const-string v0, "disableIms"

    return-object v0

    .line 159
    :pswitch_8
    const-string v0, "enableIms"

    return-object v0

    .line 155
    :pswitch_b
    const-string/jumbo v0, "getSipTransport"

    return-object v0

    .line 151
    :pswitch_f
    const-string/jumbo v0, "getRegistration"

    return-object v0

    .line 147
    :pswitch_13
    const-string v0, "getConfig"

    return-object v0

    .line 143
    :pswitch_16
    const-string/jumbo v0, "removeImsFeature"

    return-object v0

    .line 139
    :pswitch_1a
    const-string/jumbo v0, "notifyImsServiceReadyForFeatureCreation"

    return-object v0

    .line 135
    :pswitch_1e
    const-string/jumbo v0, "removeFeatureStatusCallback"

    return-object v0

    .line 131
    :pswitch_22
    const-string v0, "addFeatureStatusCallback"

    return-object v0

    .line 127
    :pswitch_25
    const-string/jumbo v0, "getImsServiceCapabilities"

    return-object v0

    .line 123
    :pswitch_29
    const-string/jumbo v0, "querySupportedImsFeatures"

    return-object v0

    .line 119
    :pswitch_2d
    const-string v0, "createRcsFeature"

    return-object v0

    .line 115
    :pswitch_30
    const-string v0, "createEmergencyOnlyMmTelFeature"

    return-object v0

    .line 111
    :pswitch_33
    const-string v0, "createMmTelFeature"

    return-object v0

    .line 107
    :pswitch_36
    const-string/jumbo v0, "setListener"

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 98
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 642
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 174
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 178
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    .line 179
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_d
    packed-switch p1, :pswitch_data_138

    .line 190
    packed-switch p1, :pswitch_data_13e

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 186
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 341
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 344
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->disableIms(II)V

    .line 346
    goto/16 :goto_137

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->enableIms(II)V

    .line 336
    goto/16 :goto_137

    .line 321
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v3

    .line 324
    .local v3, "_result":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 326
    goto/16 :goto_137

    .line 309
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/ISipTransport;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 314
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 316
    goto/16 :goto_137

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 300
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 302
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 304
    goto/16 :goto_137

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 289
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeImsFeature(IIZ)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_137

    .line 277
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_94
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->notifyImsServiceReadyForFeatureCreation()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_137

    .line 265
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 270
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_137

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 257
    .restart local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_137

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_d1
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getImsServiceCapabilities()J

    move-result-wide v2

    .line 245
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    goto :goto_137

    .line 237
    .end local v2    # "_result":J
    :pswitch_dc
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v2

    .line 238
    .local v2, "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 240
    goto :goto_137

    .line 226
    .end local v2    # "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v4

    .line 231
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 233
    goto :goto_137

    .line 216
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v3

    .line 219
    .local v3, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 221
    goto :goto_137

    .line 204
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v4

    .line 209
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 211
    goto :goto_137

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsServiceControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    nop

    .line 353
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    :goto_137
    return v1

    :pswitch_data_138
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_125
        :pswitch_10f
        :pswitch_fd
        :pswitch_e7
        :pswitch_dc
        :pswitch_d1
        :pswitch_b7
        :pswitch_9c
        :pswitch_94
        :pswitch_7d
        :pswitch_66
        :pswitch_4f
        :pswitch_3c
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
