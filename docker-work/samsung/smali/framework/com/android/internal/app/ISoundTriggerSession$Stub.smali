.class public abstract Lcom/android/internal/app/ISoundTriggerSession$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerSession.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteSoundModel:I = 0x3

.field static final blacklist TRANSACTION_getModelState:I = 0xc

.field static final blacklist TRANSACTION_getModuleProperties:I = 0xd

.field static final blacklist TRANSACTION_getParameter:I = 0xf

.field static final blacklist TRANSACTION_getSoundModel:I = 0x1

.field static final blacklist TRANSACTION_isRecognitionActive:I = 0xb

.field static final blacklist TRANSACTION_loadGenericSoundModel:I = 0x6

.field static final blacklist TRANSACTION_loadKeyphraseSoundModel:I = 0x7

.field static final blacklist TRANSACTION_queryParameter:I = 0x10

.field static final blacklist TRANSACTION_setParameter:I = 0xe

.field static final blacklist TRANSACTION_startRecognition:I = 0x4

.field static final blacklist TRANSACTION_startRecognitionForService:I = 0x8

.field static final blacklist TRANSACTION_stopRecognition:I = 0x5

.field static final blacklist TRANSACTION_stopRecognitionForService:I = 0x9

.field static final blacklist TRANSACTION_unloadSoundModel:I = 0xa

.field static final blacklist TRANSACTION_updateSoundModel:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/ISoundTriggerSession;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_40

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 176
    :pswitch_5
    const-string/jumbo v0, "queryParameter"

    return-object v0

    .line 172
    :pswitch_9
    const-string v0, "getParameter"

    return-object v0

    .line 168
    :pswitch_c
    const-string/jumbo v0, "setParameter"

    return-object v0

    .line 164
    :pswitch_10
    const-string v0, "getModuleProperties"

    return-object v0

    .line 160
    :pswitch_13
    const-string v0, "getModelState"

    return-object v0

    .line 156
    :pswitch_16
    const-string v0, "isRecognitionActive"

    return-object v0

    .line 152
    :pswitch_19
    const-string/jumbo v0, "unloadSoundModel"

    return-object v0

    .line 148
    :pswitch_1d
    const-string/jumbo v0, "stopRecognitionForService"

    return-object v0

    .line 144
    :pswitch_21
    const-string/jumbo v0, "startRecognitionForService"

    return-object v0

    .line 140
    :pswitch_25
    const-string/jumbo v0, "loadKeyphraseSoundModel"

    return-object v0

    .line 136
    :pswitch_29
    const-string/jumbo v0, "loadGenericSoundModel"

    return-object v0

    .line 132
    :pswitch_2d
    const-string/jumbo v0, "stopRecognition"

    return-object v0

    .line 128
    :pswitch_31
    const-string/jumbo v0, "startRecognition"

    return-object v0

    .line 124
    :pswitch_35
    const-string v0, "deleteSoundModel"

    return-object v0

    .line 120
    :pswitch_38
    const-string/jumbo v0, "updateSoundModel"

    return-object v0

    .line 116
    :pswitch_3c
    const-string v0, "getSoundModel"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 717
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 187
    invoke-static {p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    .line 192
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    :cond_d
    packed-switch p1, :pswitch_data_1ba

    .line 203
    packed-switch p1, :pswitch_data_1c0

    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 199
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v1

    .line 373
    :pswitch_1c
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 375
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v4

    .line 378
    .local v4, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 380
    goto/16 :goto_1b8

    .line 361
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :pswitch_37
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 363
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getParameter(Landroid/os/ParcelUuid;I)I

    move-result v4

    .line 366
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_1b8

    .line 347
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_52
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 349
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->setParameter(Landroid/os/ParcelUuid;II)I

    move-result v5

    .line 354
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_1b8

    .line 339
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v2

    .line 340
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    goto/16 :goto_1b8

    .line 330
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :pswitch_7d
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 331
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getModelState(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 333
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    goto/16 :goto_1b8

    .line 320
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":I
    :pswitch_94
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 321
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result v3

    .line 323
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    goto/16 :goto_1b8

    .line 310
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":Z
    :pswitch_ab
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 311
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 313
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto/16 :goto_1b8

    .line 300
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":I
    :pswitch_c2
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 301
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->stopRecognitionForService(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 303
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    goto/16 :goto_1b8

    .line 284
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":I
    :pswitch_d9
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 286
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 288
    .local v3, "_arg1":Landroid/os/Bundle;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 290
    .local v4, "_arg2":Landroid/content/ComponentName;
    sget-object v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 291
    .local v5, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 293
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto/16 :goto_1b8

    .line 274
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v5    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v6    # "_result":I
    :pswitch_108
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 275
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v3

    .line 277
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_1b8

    .line 264
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v3    # "_result":I
    :pswitch_11f
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 265
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v3

    .line 267
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    goto/16 :goto_1b8

    .line 252
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .end local v3    # "_result":I
    :pswitch_136
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 254
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 255
    .local v3, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v4

    .line 257
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    goto :goto_1b8

    .line 236
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :pswitch_154
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 238
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 240
    .restart local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 242
    .local v4, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 243
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v6

    .line 245
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    goto :goto_1b8

    .line 227
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :pswitch_17e
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 228
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->deleteSoundModel(Landroid/os/ParcelUuid;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_1b8

    .line 218
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :pswitch_190
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 219
    .local v2, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_1b8

    .line 208
    .end local v2    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :pswitch_1a2
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 209
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v3

    .line 211
    .local v3, "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 387
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :goto_1b8
    return v1

    nop

    :pswitch_data_1ba
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1a2
        :pswitch_190
        :pswitch_17e
        :pswitch_154
        :pswitch_136
        :pswitch_11f
        :pswitch_108
        :pswitch_d9
        :pswitch_c2
        :pswitch_ab
        :pswitch_94
        :pswitch_7d
        :pswitch_71
        :pswitch_52
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
