.class public abstract Lcom/samsung/android/gamesdk/IGameSDKService$Stub;
.super Landroid/os/Binder;
.source "IGameSDKService.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/IGameSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/IGameSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_finalGameSDK:I = 0x1d

.field static final TRANSACTION_getCPULevelMax:I = 0x7

.field static final TRANSACTION_getClusterInfo:I = 0x21

.field static final TRANSACTION_getCpuJTLevel:I = 0xc

.field static final TRANSACTION_getCpuLevelCurrent:I = 0x17

.field static final TRANSACTION_getCpuLoad:I = 0x15

.field static final TRANSACTION_getCurrentRefreshRate:I = 0x12

.field static final TRANSACTION_getFrameworkFPS:I = 0x13

.field static final TRANSACTION_getGPULevelMax:I = 0x8

.field static final TRANSACTION_getGpuFrameTime:I = 0x1a

.field static final TRANSACTION_getGpuJTLevel:I = 0xd

.field static final TRANSACTION_getGpuLevelCurrent:I = 0x18

.field static final TRANSACTION_getGpuLoad:I = 0x16

.field static final TRANSACTION_getHighPrecisionSkinTempLevel:I = 0x9

.field static final TRANSACTION_getPrevFrameworkFPS:I = 0x14

.field static final TRANSACTION_getSkinTempLevel:I = 0x6

.field static final TRANSACTION_getSupportedRefreshRates:I = 0xf

.field static final TRANSACTION_getTempLevel:I = 0x5

.field static final TRANSACTION_getVersion:I = 0x4

.field static final TRANSACTION_initGameSDK:I = 0x1

.field static final TRANSACTION_initGameSDKWithJsonData:I = 0x3

.field static final TRANSACTION_initGameSDKWithVersion:I = 0x2

.field static final TRANSACTION_isGameSDKVrrSupported:I = 0xe

.field static final TRANSACTION_isPMModeEnable:I = 0x19

.field static final TRANSACTION_isPackageInWhiteList:I = 0x1e

.field static final TRANSACTION_registerDebugBridgePid:I = 0x22

.field static final TRANSACTION_resetRefreshRate:I = 0x11

.field static final TRANSACTION_setCpuBoostMode:I = 0x1f

.field static final TRANSACTION_setDisableTMLevel:I = 0x1b

.field static final TRANSACTION_setFreqLevels:I = 0x1c

.field static final TRANSACTION_setGameSDKListener:I = 0xb

.field static final TRANSACTION_setGameSDKStateListener:I = 0x23

.field static final TRANSACTION_setGpuBoostMode:I = 0x20

.field static final TRANSACTION_setLevelWithScene:I = 0xa

.field static final TRANSACTION_setRefreshRate:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 162
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 170
    if-nez p0, :cond_4

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_4
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 174
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/gamesdk/IGameSDKService;

    if-eqz v1, :cond_14

    .line 175
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gamesdk/IGameSDKService;

    return-object v1

    .line 177
    :cond_14
    new-instance v1, Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 181
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

    .line 185
    const-string v0, "com.samsung.android.gamesdk.IGameSDKService"

    .line 186
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_d
    packed-switch p1, :pswitch_data_1f8

    .line 197
    packed-switch p1, :pswitch_data_1fe

    .line 477
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return v1

    .line 469
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/gamesdk/IGameSDKStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    move-result-object v2

    .line 470
    .local v2, "_arg0":Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)Z

    move-result v3

    .line 471
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    goto/16 :goto_1f7

    .line 460
    .end local v2    # "_arg0":Lcom/samsung/android/gamesdk/IGameSDKStateListener;
    .end local v3    # "_result":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->registerDebugBridgePid(I)Z

    move-result v3

    .line 462
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    goto/16 :goto_1f7

    .line 452
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getClusterInfo()I

    move-result v2

    .line 453
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    goto/16 :goto_1f7

    .line 444
    .end local v2    # "_result":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGpuBoostMode(I)Z

    move-result v3

    .line 446
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    goto/16 :goto_1f7

    .line 435
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setCpuBoostMode(I)Z

    move-result v3

    .line 437
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    goto/16 :goto_1f7

    .line 426
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isPackageInWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 428
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    goto/16 :goto_1f7

    .line 418
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->finalGameSDK(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_1f7

    .line 407
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setFreqLevels(II)I

    move-result v4

    .line 411
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    goto/16 :goto_1f7

    .line 398
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 399
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setDisableTMLevel(I)Z

    move-result v3

    .line 400
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    goto/16 :goto_1f7

    .line 390
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ac
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuFrameTime()D

    move-result-wide v2

    .line 391
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 393
    goto/16 :goto_1f7

    .line 383
    .end local v2    # "_result":D
    :pswitch_b8
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isPMModeEnable()I

    move-result v2

    .line 384
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    goto/16 :goto_1f7

    .line 376
    .end local v2    # "_result":I
    :pswitch_c4
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuLevelCurrent()I

    move-result v2

    .line 377
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    goto/16 :goto_1f7

    .line 369
    .end local v2    # "_result":I
    :pswitch_d0
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuLevelCurrent()I

    move-result v2

    .line 370
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto/16 :goto_1f7

    .line 362
    .end local v2    # "_result":I
    :pswitch_dc
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuLoad()D

    move-result-wide v2

    .line 363
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 365
    goto/16 :goto_1f7

    .line 355
    .end local v2    # "_result":D
    :pswitch_e8
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuLoad()D

    move-result-wide v2

    .line 356
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 358
    goto/16 :goto_1f7

    .line 348
    .end local v2    # "_result":D
    :pswitch_f4
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getPrevFrameworkFPS()D

    move-result-wide v2

    .line 349
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 351
    goto/16 :goto_1f7

    .line 341
    .end local v2    # "_result":D
    :pswitch_100
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getFrameworkFPS()D

    move-result-wide v2

    .line 342
    .restart local v2    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 344
    goto/16 :goto_1f7

    .line 334
    .end local v2    # "_result":D
    :pswitch_10c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCurrentRefreshRate()I

    move-result v2

    .line 335
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    goto/16 :goto_1f7

    .line 328
    .end local v2    # "_result":I
    :pswitch_118
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->resetRefreshRate()V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_1f7

    .line 321
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setRefreshRate(I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_1f7

    .line 313
    .end local v2    # "_arg0":I
    :pswitch_12c
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getSupportedRefreshRates()[I

    move-result-object v2

    .line 314
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 316
    goto/16 :goto_1f7

    .line 306
    .end local v2    # "_result":[I
    :pswitch_138
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->isGameSDKVrrSupported()Z

    move-result v2

    .line 307
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    goto/16 :goto_1f7

    .line 299
    .end local v2    # "_result":Z
    :pswitch_144
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGpuJTLevel()I

    move-result v2

    .line 300
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    goto/16 :goto_1f7

    .line 292
    .end local v2    # "_result":I
    :pswitch_150
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCpuJTLevel()I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    goto/16 :goto_1f7

    .line 284
    .end local v2    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v2

    .line 285
    .local v2, "_arg0":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z

    move-result v3

    .line 286
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    goto/16 :goto_1f7

    .line 271
    .end local v2    # "_arg0":Lcom/samsung/android/gamesdk/IGameSDKListener;
    .end local v3    # "_result":Z
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 276
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->setLevelWithScene(Ljava/lang/String;II)Z

    move-result v5

    .line 277
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_1f7

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_188
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getHighPrecisionSkinTempLevel()D

    move-result-wide v2

    .line 264
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 266
    goto :goto_1f7

    .line 256
    .end local v2    # "_result":D
    :pswitch_193
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getGPULevelMax()I

    move-result v2

    .line 257
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    goto :goto_1f7

    .line 249
    .end local v2    # "_result":I
    :pswitch_19e
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getCPULevelMax()I

    move-result v2

    .line 250
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    goto :goto_1f7

    .line 242
    .end local v2    # "_result":I
    :pswitch_1a9
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getSkinTempLevel()I

    move-result v2

    .line 243
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    goto :goto_1f7

    .line 235
    .end local v2    # "_result":I
    :pswitch_1b4
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getTempLevel()I

    move-result v2

    .line 236
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    goto :goto_1f7

    .line 228
    .end local v2    # "_result":I
    :pswitch_1bf
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    goto :goto_1f7

    .line 218
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDKWithJsonData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 222
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    goto :goto_1f7

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDKWithVersion(Ljava/lang/String;)Z

    move-result v3

    .line 211
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    goto :goto_1f7

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1ec
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->initGameSDK()Z

    move-result v2

    .line 202
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    nop

    .line 480
    .end local v2    # "_result":Z
    :goto_1f7
    return v1

    :pswitch_data_1f8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_1ec
        :pswitch_1dd
        :pswitch_1ca
        :pswitch_1bf
        :pswitch_1b4
        :pswitch_1a9
        :pswitch_19e
        :pswitch_193
        :pswitch_188
        :pswitch_170
        :pswitch_15c
        :pswitch_150
        :pswitch_144
        :pswitch_138
        :pswitch_12c
        :pswitch_120
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_c4
        :pswitch_b8
        :pswitch_ac
        :pswitch_9c
        :pswitch_88
        :pswitch_7c
        :pswitch_6c
        :pswitch_5c
        :pswitch_4c
        :pswitch_40
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
