.class public abstract Lcom/samsung/android/game/IGameManagerService$Stub;
.super Landroid/os/Binder;
.source "IGameManagerService.java"

# interfaces
.implements Lcom/samsung/android/game/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableVrrControl:I = 0x10

.field static final blacklist TRANSACTION_enableVrrControl:I = 0x11

.field static final blacklist TRANSACTION_getForegroundApp:I = 0x3

.field static final blacklist TRANSACTION_getGameList:I = 0x4

.field static final blacklist TRANSACTION_getGamePkgDataIncServer:I = 0xa

.field static final blacklist TRANSACTION_getSosPolicy:I = 0xb

.field static final blacklist TRANSACTION_getTopActivityName:I = 0xc

.field static final blacklist TRANSACTION_getVersion:I = 0x8

.field static final blacklist TRANSACTION_identifyForegroundApp:I = 0x2

.field static final blacklist TRANSACTION_identifyGamePackage:I = 0x1

.field static final blacklist TRANSACTION_initGameManager:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x5

.field static final blacklist TRANSACTION_requestWithJson:I = 0x9

.field static final blacklist TRANSACTION_setPackageConfigurations:I = 0xd

.field static final blacklist TRANSACTION_setPerformanceMode:I = 0xe

.field static final blacklist TRANSACTION_setTargetFrameRate:I = 0xf

.field static final blacklist TRANSACTION_syncGameList:I = 0x12

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "com.samsung.android.game.IGameManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_14

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/game/IGameManagerService;

    return-object v1

    .line 118
    :cond_14
    new-instance v1, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_42

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 199
    :pswitch_5
    const-string/jumbo v0, "syncGameList"

    return-object v0

    .line 195
    :pswitch_9
    const-string v0, "enableVrrControl"

    return-object v0

    .line 191
    :pswitch_c
    const-string v0, "disableVrrControl"

    return-object v0

    .line 187
    :pswitch_f
    const-string/jumbo v0, "setTargetFrameRate"

    return-object v0

    .line 183
    :pswitch_13
    const-string/jumbo v0, "setPerformanceMode"

    return-object v0

    .line 179
    :pswitch_17
    const-string/jumbo v0, "setPackageConfigurations"

    return-object v0

    .line 175
    :pswitch_1b
    const-string v0, "getTopActivityName"

    return-object v0

    .line 171
    :pswitch_1e
    const-string v0, "getSosPolicy"

    return-object v0

    .line 167
    :pswitch_21
    const-string v0, "getGamePkgDataIncServer"

    return-object v0

    .line 163
    :pswitch_24
    const-string/jumbo v0, "requestWithJson"

    return-object v0

    .line 159
    :pswitch_28
    const-string v0, "getVersion"

    return-object v0

    .line 155
    :pswitch_2b
    const-string v0, "initGameManager"

    return-object v0

    .line 151
    :pswitch_2e
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 147
    :pswitch_32
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 143
    :pswitch_36
    const-string v0, "getGameList"

    return-object v0

    .line 139
    :pswitch_39
    const-string v0, "getForegroundApp"

    return-object v0

    .line 135
    :pswitch_3c
    const-string v0, "identifyForegroundApp"

    return-object v0

    .line 131
    :pswitch_3f
    const-string v0, "identifyGamePackage"

    return-object v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 122
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 776
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 210
    invoke-static {p1}, Lcom/samsung/android/game/IGameManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 214
    const-string v0, "com.samsung.android.game.IGameManagerService"

    .line 215
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 216
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    :cond_d
    packed-switch p1, :pswitch_data_170

    .line 226
    packed-switch p1, :pswitch_data_176

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 222
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return v1

    .line 395
    :pswitch_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 396
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 397
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v3}, Lcom/samsung/android/game/IGameManagerService$Stub;->syncGameList(Ljava/util/Map;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_16e

    .line 385
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->enableVrrControl(Ljava/lang/String;)Z

    move-result v3

    .line 388
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_16e

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->disableVrrControl(Ljava/lang/String;)Z

    move-result v3

    .line 378
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto/16 :goto_16e

    .line 363
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 365
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/IGameManagerService$Stub;->setTargetFrameRate(Landroid/os/IBinder;I)Z

    move-result v4

    .line 368
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    goto/16 :goto_16e

    .line 351
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/IGameManagerService$Stub;->setPerformanceMode(ILjava/lang/String;)Z

    move-result v4

    .line 356
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    goto/16 :goto_16e

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_87
    sget-object v2, Lcom/samsung/android/game/SemPackageConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->setPackageConfigurations(Ljava/util/List;)Z

    move-result v3

    .line 344
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 346
    goto/16 :goto_16e

    .line 333
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    .end local v3    # "_result":Z
    :pswitch_9c
    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getTopActivityName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    goto/16 :goto_16e

    .line 324
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->getSosPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    goto/16 :goto_16e

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGamePkgDataIncServer(Ljava/lang/String;)Lcom/samsung/android/game/PkgData;

    move-result-object v3

    .line 317
    .local v3, "_result":Lcom/samsung/android/game/PkgData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 319
    goto/16 :goto_16e

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/game/PkgData;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    goto/16 :goto_16e

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_e5
    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    goto/16 :goto_16e

    .line 282
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 285
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 286
    .local v4, "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/game/IGameManagerService$Stub;->initGameManager(ILjava/util/Map;)Z

    move-result v5

    .line 288
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    goto :goto_16e

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/Map;
    .end local v5    # "_result":Z
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v3

    .line 275
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    goto :goto_16e

    .line 262
    .end local v2    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v3    # "_result":Z
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v2

    .line 263
    .restart local v2    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v3

    .line 265
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    goto :goto_16e

    .line 254
    .end local v2    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v3    # "_result":Z
    :pswitch_13b
    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameList()Ljava/util/List;

    move-result-object v2

    .line 255
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 257
    goto :goto_16e

    .line 247
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_146
    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getForegroundApp()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    goto :goto_16e

    .line 240
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_151
    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyForegroundApp()I

    move-result v2

    .line 241
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    goto :goto_16e

    .line 231
    .end local v2    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyGamePackage(Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    nop

    .line 407
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_16e
    return v1

    nop

    :pswitch_data_170
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_15c
        :pswitch_151
        :pswitch_146
        :pswitch_13b
        :pswitch_125
        :pswitch_10f
        :pswitch_f1
        :pswitch_e5
        :pswitch_ce
        :pswitch_bb
        :pswitch_a8
        :pswitch_9c
        :pswitch_87
        :pswitch_70
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
