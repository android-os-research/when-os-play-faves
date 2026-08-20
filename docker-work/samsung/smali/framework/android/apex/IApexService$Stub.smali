.class public abstract Landroid/apex/IApexService$Stub;
.super Landroid/os/Binder;
.source "IApexService.java"

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/IApexService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortStagedSession:I = 0x9

.field static final blacklist TRANSACTION_calculateSizeForCompressedApex:I = 0x18

.field static final blacklist TRANSACTION_destroyCeSnapshots:I = 0xe

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0xf

.field static final blacklist TRANSACTION_destroyDeSnapshots:I = 0xd

.field static final blacklist TRANSACTION_getActivePackage:I = 0x11

.field static final blacklist TRANSACTION_getActivePackages:I = 0x7

.field static final blacklist TRANSACTION_getAllPackages:I = 0x8

.field static final blacklist TRANSACTION_getSessions:I = 0x4

.field static final blacklist TRANSACTION_getStagedApexInfos:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessionInfo:I = 0x5

.field static final blacklist TRANSACTION_installAndActivatePackage:I = 0x1a

.field static final blacklist TRANSACTION_markBootCompleted:I = 0x17

.field static final blacklist TRANSACTION_markStagedSessionReady:I = 0x2

.field static final blacklist TRANSACTION_markStagedSessionSuccessful:I = 0x3

.field static final blacklist TRANSACTION_recollectDataApex:I = 0x16

.field static final blacklist TRANSACTION_recollectPreinstalledData:I = 0x15

.field static final blacklist TRANSACTION_remountPackages:I = 0x14

.field static final blacklist TRANSACTION_reserveSpaceForCompressedApex:I = 0x19

.field static final blacklist TRANSACTION_restoreCeData:I = 0xc

.field static final blacklist TRANSACTION_resumeRevertIfNeeded:I = 0x13

.field static final blacklist TRANSACTION_revertActiveSessions:I = 0xa

.field static final blacklist TRANSACTION_snapshotCeData:I = 0xb

.field static final blacklist TRANSACTION_stagePackages:I = 0x12

.field static final blacklist TRANSACTION_submitStagedSession:I = 0x1

.field static final blacklist TRANSACTION_unstagePackages:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 178
    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/apex/IApexService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 186
    if-nez p0, :cond_4

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_4
    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 190
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apex/IApexService;

    if-eqz v1, :cond_14

    .line 191
    move-object v1, v0

    check-cast v1, Landroid/apex/IApexService;

    return-object v1

    .line 193
    :cond_14
    new-instance v1, Landroid/apex/IApexService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apex/IApexService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 197
    return-object p0
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

    .line 201
    sget-object v0, Landroid/apex/IApexService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 202
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 203
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    :cond_d
    packed-switch p1, :pswitch_data_186

    .line 213
    packed-switch p1, :pswitch_data_18c

    .line 436
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 209
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v1

    .line 428
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->installAndActivatePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object v3

    .line 430
    .local v3, "_result":Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 432
    goto/16 :goto_184

    .line 420
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/apex/ApexInfo;
    :pswitch_2c
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    .line 421
    .local v2, "_arg0":Landroid/apex/CompressedApexInfoList;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_184

    .line 411
    .end local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    :pswitch_3c
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    .line 412
    .restart local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide v3

    .line 413
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 415
    goto/16 :goto_184

    .line 404
    .end local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    .end local v3    # "_result":J
    :pswitch_50
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->markBootCompleted()V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_184

    .line 395
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->recollectDataApex(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_184

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 388
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->recollectPreinstalledData(Ljava/util/List;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_184

    .line 380
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_74
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->remountPackages()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_184

    .line 374
    :pswitch_7c
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->resumeRevertIfNeeded()V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_184

    .line 367
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->stagePackages(Ljava/util/List;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_184

    .line 358
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getActivePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object v3

    .line 360
    .local v3, "_result":Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    goto/16 :goto_184

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/apex/ApexInfo;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->unstagePackages(Ljava/util/List;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_184

    .line 340
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 343
    .local v3, "_arg1":[I
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshotsNotSpecified(I[I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_184

    .line 330
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshots(II)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_184

    .line 322
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->destroyDeSnapshots(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_184

    .line 310
    .end local v2    # "_arg0":I
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->restoreCeData(IILjava/lang/String;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_184

    .line 298
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->snapshotCeData(IILjava/lang/String;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_184

    .line 291
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_100
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->revertActiveSessions()V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_184

    .line 284
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->abortStagedSession(I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_184

    .line 276
    .end local v2    # "_arg0":I
    :pswitch_114
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 277
    .local v2, "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 279
    goto :goto_184

    .line 269
    .end local v2    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_11f
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 270
    .restart local v2    # "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 272
    goto :goto_184

    .line 261
    .end local v2    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_12a
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    .line 262
    .local v2, "_arg0":Landroid/apex/ApexSessionParams;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object v3

    .line 263
    .local v3, "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 265
    goto :goto_184

    .line 252
    .end local v2    # "_arg0":Landroid/apex/ApexSessionParams;
    .end local v3    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v3

    .line 254
    .local v3, "_result":Landroid/apex/ApexSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 256
    goto :goto_184

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/apex/ApexSessionInfo;
    :pswitch_14c
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v2

    .line 245
    .local v2, "_result":[Landroid/apex/ApexSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 247
    goto :goto_184

    .line 237
    .end local v2    # "_result":[Landroid/apex/ApexSessionInfo;
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionSuccessful(I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto :goto_184

    .line 229
    .end local v2    # "_arg0":I
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionReady(I)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto :goto_184

    .line 218
    .end local v2    # "_arg0":I
    :pswitch_16d
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    .line 220
    .local v2, "_arg0":Landroid/apex/ApexSessionParams;
    new-instance v3, Landroid/apex/ApexInfoList;

    invoke-direct {v3}, Landroid/apex/ApexInfoList;-><init>()V

    .line 221
    .local v3, "_arg1":Landroid/apex/ApexInfoList;
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 224
    nop

    .line 439
    .end local v2    # "_arg0":Landroid/apex/ApexSessionParams;
    .end local v3    # "_arg1":Landroid/apex/ApexInfoList;
    :goto_184
    return v1

    nop

    :pswitch_data_186
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_16d
        :pswitch_162
        :pswitch_157
        :pswitch_14c
        :pswitch_13d
        :pswitch_12a
        :pswitch_11f
        :pswitch_114
        :pswitch_108
        :pswitch_100
        :pswitch_ec
        :pswitch_d8
        :pswitch_cc
        :pswitch_bc
        :pswitch_ac
        :pswitch_a0
        :pswitch_90
        :pswitch_84
        :pswitch_7c
        :pswitch_74
        :pswitch_68
        :pswitch_58
        :pswitch_50
        :pswitch_3c
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
