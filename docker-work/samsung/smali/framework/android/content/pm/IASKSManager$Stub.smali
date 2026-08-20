.class public abstract Landroid/content/pm/IASKSManager$Stub;
.super Landroid/os/Binder;
.source "IASKSManager.java"

# interfaces
.implements Landroid/content/pm/IASKSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IASKSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IASKSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyScpmPolicyFromApp:I = 0x10

.field static final blacklist TRANSACTION_checkASKSTarget:I = 0xc

.field static final blacklist TRANSACTION_checkDeletableListForASKS:I = 0x9

.field static final blacklist TRANSACTION_checkFollowingLegitimateWay:I = 0x8

.field static final blacklist TRANSACTION_checkRestrictedPermission:I = 0x5

.field static final blacklist TRANSACTION_checkUnknownSourcePackage:I = 0xd

.field static final blacklist TRANSACTION_clearASKSruleForRemovedPackage:I = 0x4

.field static final blacklist TRANSACTION_getIMEIList:I = 0x7

.field static final blacklist TRANSACTION_getSEInfo:I = 0x6

.field static final blacklist TRANSACTION_getUNvalueForASKS:I = 0xb

.field static final blacklist TRANSACTION_getUnknownAppList:I = 0xf

.field static final blacklist TRANSACTION_isTrustedStore:I = 0x12

.field static final blacklist TRANSACTION_isUnknownApps:I = 0xe

.field static final blacklist TRANSACTION_postASKSsetup:I = 0x3

.field static final blacklist TRANSACTION_readASKSFiles:I = 0x11

.field static final blacklist TRANSACTION_setTrustTimebyStatusChanged:I = 0xa

.field static final blacklist TRANSACTION_systemReady:I = 0x1

.field static final blacklist TRANSACTION_verifyASKStokenForPackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.content.pm.IASKSManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IASKSManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IASKSManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "android.content.pm.IASKSManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IASKSManager;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IASKSManager;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/content/pm/IASKSManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IASKSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_40

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 184
    :pswitch_5
    const-string v0, "isTrustedStore"

    return-object v0

    .line 180
    :pswitch_8
    const-string/jumbo v0, "readASKSFiles"

    return-object v0

    .line 176
    :pswitch_c
    const-string v0, "applyScpmPolicyFromApp"

    return-object v0

    .line 172
    :pswitch_f
    const-string v0, "getUnknownAppList"

    return-object v0

    .line 168
    :pswitch_12
    const-string v0, "isUnknownApps"

    return-object v0

    .line 164
    :pswitch_15
    const-string v0, "checkUnknownSourcePackage"

    return-object v0

    .line 160
    :pswitch_18
    const-string v0, "checkASKSTarget"

    return-object v0

    .line 156
    :pswitch_1b
    const-string v0, "getUNvalueForASKS"

    return-object v0

    .line 152
    :pswitch_1e
    const-string/jumbo v0, "setTrustTimebyStatusChanged"

    return-object v0

    .line 148
    :pswitch_22
    const-string v0, "checkDeletableListForASKS"

    return-object v0

    .line 144
    :pswitch_25
    const-string v0, "checkFollowingLegitimateWay"

    return-object v0

    .line 140
    :pswitch_28
    const-string v0, "getIMEIList"

    return-object v0

    .line 136
    :pswitch_2b
    const-string v0, "getSEInfo"

    return-object v0

    .line 132
    :pswitch_2e
    const-string v0, "checkRestrictedPermission"

    return-object v0

    .line 128
    :pswitch_31
    const-string v0, "clearASKSruleForRemovedPackage"

    return-object v0

    .line 124
    :pswitch_34
    const-string/jumbo v0, "postASKSsetup"

    return-object v0

    .line 120
    :pswitch_38
    const-string/jumbo v0, "verifyASKStokenForPackage"

    return-object v0

    .line 116
    :pswitch_3c
    const-string/jumbo v0, "systemReady"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
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

    .line 775
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 195
    invoke-static {p1}, Landroid/content/pm/IASKSManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.content.pm.IASKSManager"

    .line 200
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    .line 201
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_15
    packed-switch v13, :pswitch_data_202

    .line 211
    packed-switch v13, :pswitch_data_208

    .line 412
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 207
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v10

    .line 403
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v12, v0}, Landroid/content/pm/IASKSManager$Stub;->isTrustedStore(Ljava/lang/String;)Z

    move-result v1

    .line 406
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 408
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_201

    .line 391
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->readASKSFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_201

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->applyScpmPolicyFromApp()V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_201

    .line 377
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getUnknownAppList()Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 380
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_201

    .line 366
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 369
    .local v1, "_arg1":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v2

    .line 371
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_201

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Landroid/content/pm/Signature;
    .end local v2    # "_result":Z
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 338
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 344
    .local v19, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, [Landroid/content/pm/Signature;

    .line 346
    .local v20, "_arg4":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 348
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 350
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 352
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 354
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 356
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 357
    .local v26, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v27, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/content/pm/IASKSManager$Stub;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    goto/16 :goto_201

    .line 326
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":[Ljava/lang/String;
    .end local v18    # "_arg2":[Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":[Landroid/content/pm/Signature;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Ljava/lang/String;
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ee
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v12, v0}, Landroid/content/pm/IASKSManager$Stub;->checkASKSTarget(I)[Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 331
    goto/16 :goto_201

    .line 318
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_105
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getUNvalueForASKS()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    goto/16 :goto_201

    .line 312
    .end local v0    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_115
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->setTrustTimebyStatusChanged()V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_201

    .line 306
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_121
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->checkDeletableListForASKS()V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_201

    .line 295
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12d
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->checkFollowingLegitimateWay(Ljava/lang/String;I)Z

    move-result v2

    .line 300
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    goto/16 :goto_201

    .line 287
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_148
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->getIMEIList()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 290
    goto/16 :goto_201

    .line 278
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_158
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v12, v0}, Landroid/content/pm/IASKSManager$Stub;->getSEInfo(Ljava/lang/String;)[B

    move-result-object v1

    .line 281
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    goto/16 :goto_201

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16f
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v12, v0, v1}, Landroid/content/pm/IASKSManager$Stub;->checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    goto/16 :goto_201

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18a
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v12, v0}, Landroid/content/pm/IASKSManager$Stub;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_201

    .line 244
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19c
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/pm/IASKSManager$Stub;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_201

    .line 222
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b6
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 228
    .local v16, "_arg2":J
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Landroid/content/pm/Signature;

    .line 230
    .local v11, "_arg3":[Landroid/content/pm/Signature;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 234
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 235
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-wide/from16 v3, v16

    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/IASKSManager$Stub;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 237
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    goto :goto_201

    .line 215
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_1f6
    move/from16 v27, v10

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;->systemReady()V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    nop

    .line 415
    :goto_201
    return v27

    :pswitch_data_202
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1b6
        :pswitch_19c
        :pswitch_18a
        :pswitch_16f
        :pswitch_158
        :pswitch_148
        :pswitch_12d
        :pswitch_121
        :pswitch_115
        :pswitch_105
        :pswitch_ee
        :pswitch_91
        :pswitch_72
        :pswitch_62
        :pswitch_56
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
