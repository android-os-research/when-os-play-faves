.class public abstract Lcom/android/internal/app/IAppOpsService$Stub;
.super Landroid/os/Binder;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsService"

.field static final blacklist TRANSACTION_addHistoricalOps:I = 0x18

.field static final greylist TRANSACTION_checkAudioOperation:I = 0x8

.field static final greylist TRANSACTION_checkOperation:I = 0x1

.field static final blacklist TRANSACTION_checkOperationRaw:I = 0x30

.field static final greylist TRANSACTION_checkPackage:I = 0xf

.field static final blacklist TRANSACTION_clearHistory:I = 0x1b

.field static final blacklist TRANSACTION_collectNoteOpCallsForValidation:I = 0x32

.field static final blacklist TRANSACTION_collectRuntimeAppOpAccessMessage:I = 0x10

.field static final blacklist TRANSACTION_extractAsyncOps:I = 0x2f

.field static final greylist TRANSACTION_finishOperation:I = 0x4

.field static final blacklist TRANSACTION_finishProxyOperation:I = 0xe

.field static final blacklist TRANSACTION_getHistoricalOps:I = 0x14

.field static final blacklist TRANSACTION_getHistoricalOpsFromDiskRaw:I = 0x15

.field static final greylist TRANSACTION_getOpsForPackage:I = 0x13

.field static final greylist TRANSACTION_getPackagesForOps:I = 0x12

.field static final greylist-max-o TRANSACTION_getUidOps:I = 0x1d

.field static final greylist-max-o TRANSACTION_isOperationActive:I = 0x27

.field static final blacklist TRANSACTION_isProxying:I = 0x28

.field static final greylist TRANSACTION_noteOperation:I = 0x2

.field static final greylist TRANSACTION_noteProxyOperation:I = 0xc

.field static final blacklist TRANSACTION_offsetHistory:I = 0x16

.field static final greylist-max-o TRANSACTION_permissionToOpCode:I = 0x7

.field static final blacklist TRANSACTION_rebootHistory:I = 0x1c

.field static final blacklist TRANSACTION_reloadNonHistoricalState:I = 0x31

.field static final greylist TRANSACTION_removeUser:I = 0x24

.field static final blacklist TRANSACTION_reportRuntimeAppOpAccessMessageAndGetConfig:I = 0x11

.field static final blacklist TRANSACTION_requestPermissionAccessInformation:I = 0x33

.field static final greylist TRANSACTION_resetAllModes:I = 0x20

.field static final blacklist TRANSACTION_resetHistoryParameters:I = 0x19

.field static final blacklist TRANSACTION_resetPackageOpsNoHistory:I = 0x1a

.field static final greylist TRANSACTION_setAudioRestriction:I = 0x21

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0xa

.field static final blacklist TRANSACTION_setHistoryParameters:I = 0x17

.field static final greylist TRANSACTION_setMode:I = 0x1f

.field static final greylist TRANSACTION_setUidMode:I = 0x1e

.field static final greylist TRANSACTION_setUserRestriction:I = 0x23

.field static final greylist TRANSACTION_setUserRestrictions:I = 0x22

.field static final blacklist TRANSACTION_shouldCollectNotes:I = 0x9

.field static final greylist TRANSACTION_startOperation:I = 0x3

.field static final blacklist TRANSACTION_startProxyOperation:I = 0xd

.field static final greylist-max-o TRANSACTION_startWatchingActive:I = 0x25

.field static final blacklist TRANSACTION_startWatchingAsyncNoted:I = 0x2d

.field static final greylist TRANSACTION_startWatchingMode:I = 0x5

.field static final greylist-max-o TRANSACTION_startWatchingModeWithFlags:I = 0xb

.field static final blacklist TRANSACTION_startWatchingNoted:I = 0x2b

.field static final blacklist TRANSACTION_startWatchingStarted:I = 0x29

.field static final greylist-max-o TRANSACTION_stopWatchingActive:I = 0x26

.field static final blacklist TRANSACTION_stopWatchingAsyncNoted:I = 0x2e

.field static final greylist TRANSACTION_stopWatchingMode:I = 0x6

.field static final blacklist TRANSACTION_stopWatchingNoted:I = 0x2c

.field static final blacklist TRANSACTION_stopWatchingStarted:I = 0x2a


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 197
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 198
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 206
    if-nez p0, :cond_4

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 210
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_14

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    return-object v1

    .line 213
    :cond_14
    new-instance v1, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 222
    packed-switch p0, :pswitch_data_c0

    .line 430
    const/4 v0, 0x0

    return-object v0

    .line 426
    :pswitch_5
    const-string/jumbo v0, "requestPermissionAccessInformation"

    return-object v0

    .line 422
    :pswitch_9
    const-string v0, "collectNoteOpCallsForValidation"

    return-object v0

    .line 418
    :pswitch_c
    const-string/jumbo v0, "reloadNonHistoricalState"

    return-object v0

    .line 414
    :pswitch_10
    const-string v0, "checkOperationRaw"

    return-object v0

    .line 410
    :pswitch_13
    const-string v0, "extractAsyncOps"

    return-object v0

    .line 406
    :pswitch_16
    const-string/jumbo v0, "stopWatchingAsyncNoted"

    return-object v0

    .line 402
    :pswitch_1a
    const-string/jumbo v0, "startWatchingAsyncNoted"

    return-object v0

    .line 398
    :pswitch_1e
    const-string/jumbo v0, "stopWatchingNoted"

    return-object v0

    .line 394
    :pswitch_22
    const-string/jumbo v0, "startWatchingNoted"

    return-object v0

    .line 390
    :pswitch_26
    const-string/jumbo v0, "stopWatchingStarted"

    return-object v0

    .line 386
    :pswitch_2a
    const-string/jumbo v0, "startWatchingStarted"

    return-object v0

    .line 382
    :pswitch_2e
    const-string v0, "isProxying"

    return-object v0

    .line 378
    :pswitch_31
    const-string v0, "isOperationActive"

    return-object v0

    .line 374
    :pswitch_34
    const-string/jumbo v0, "stopWatchingActive"

    return-object v0

    .line 370
    :pswitch_38
    const-string/jumbo v0, "startWatchingActive"

    return-object v0

    .line 366
    :pswitch_3c
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 362
    :pswitch_40
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 358
    :pswitch_44
    const-string/jumbo v0, "setUserRestrictions"

    return-object v0

    .line 354
    :pswitch_48
    const-string/jumbo v0, "setAudioRestriction"

    return-object v0

    .line 350
    :pswitch_4c
    const-string/jumbo v0, "resetAllModes"

    return-object v0

    .line 346
    :pswitch_50
    const-string/jumbo v0, "setMode"

    return-object v0

    .line 342
    :pswitch_54
    const-string/jumbo v0, "setUidMode"

    return-object v0

    .line 338
    :pswitch_58
    const-string v0, "getUidOps"

    return-object v0

    .line 334
    :pswitch_5b
    const-string/jumbo v0, "rebootHistory"

    return-object v0

    .line 330
    :pswitch_5f
    const-string v0, "clearHistory"

    return-object v0

    .line 326
    :pswitch_62
    const-string/jumbo v0, "resetPackageOpsNoHistory"

    return-object v0

    .line 322
    :pswitch_66
    const-string/jumbo v0, "resetHistoryParameters"

    return-object v0

    .line 318
    :pswitch_6a
    const-string v0, "addHistoricalOps"

    return-object v0

    .line 314
    :pswitch_6d
    const-string/jumbo v0, "setHistoryParameters"

    return-object v0

    .line 310
    :pswitch_71
    const-string/jumbo v0, "offsetHistory"

    return-object v0

    .line 306
    :pswitch_75
    const-string v0, "getHistoricalOpsFromDiskRaw"

    return-object v0

    .line 302
    :pswitch_78
    const-string v0, "getHistoricalOps"

    return-object v0

    .line 298
    :pswitch_7b
    const-string v0, "getOpsForPackage"

    return-object v0

    .line 294
    :pswitch_7e
    const-string v0, "getPackagesForOps"

    return-object v0

    .line 290
    :pswitch_81
    const-string/jumbo v0, "reportRuntimeAppOpAccessMessageAndGetConfig"

    return-object v0

    .line 286
    :pswitch_85
    const-string v0, "collectRuntimeAppOpAccessMessage"

    return-object v0

    .line 282
    :pswitch_88
    const-string v0, "checkPackage"

    return-object v0

    .line 278
    :pswitch_8b
    const-string v0, "finishProxyOperation"

    return-object v0

    .line 274
    :pswitch_8e
    const-string/jumbo v0, "startProxyOperation"

    return-object v0

    .line 270
    :pswitch_92
    const-string/jumbo v0, "noteProxyOperation"

    return-object v0

    .line 266
    :pswitch_96
    const-string/jumbo v0, "startWatchingModeWithFlags"

    return-object v0

    .line 262
    :pswitch_9a
    const-string/jumbo v0, "setCameraAudioRestriction"

    return-object v0

    .line 258
    :pswitch_9e
    const-string/jumbo v0, "shouldCollectNotes"

    return-object v0

    .line 254
    :pswitch_a2
    const-string v0, "checkAudioOperation"

    return-object v0

    .line 250
    :pswitch_a5
    const-string/jumbo v0, "permissionToOpCode"

    return-object v0

    .line 246
    :pswitch_a9
    const-string/jumbo v0, "stopWatchingMode"

    return-object v0

    .line 242
    :pswitch_ad
    const-string/jumbo v0, "startWatchingMode"

    return-object v0

    .line 238
    :pswitch_b1
    const-string v0, "finishOperation"

    return-object v0

    .line 234
    :pswitch_b4
    const-string/jumbo v0, "startOperation"

    return-object v0

    .line 230
    :pswitch_b8
    const-string/jumbo v0, "noteOperation"

    return-object v0

    .line 226
    :pswitch_bc
    const-string v0, "checkOperation"

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
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

    .line 217
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2136
    const/16 v0, 0x32

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 437
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 441
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "com.android.internal.app.IAppOpsService"

    .line 442
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v14, v9, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 443
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    :cond_15
    packed-switch v14, :pswitch_data_67e

    .line 453
    packed-switch v14, :pswitch_data_684

    .line 1133
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 449
    :pswitch_21
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    return v9

    .line 1127
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->requestPermissionAccessInformation()V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1113
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1117
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1119
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1120
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1106
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":J
    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->reloadNonHistoricalState()V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1091
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1093
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1095
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1100
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1081
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1084
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1086
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1070
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v1

    .line 1073
    .local v1, "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1059
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v1

    .line 1062
    .restart local v1    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1050
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
    :pswitch_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v0

    .line 1051
    .local v0, "_arg0":Lcom/android/internal/app/IAppOpsNotedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1039
    .end local v0    # "_arg0":Lcom/android/internal/app/IAppOpsNotedCallback;
    :pswitch_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1041
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsNotedCallback;

    move-result-object v1

    .line 1042
    .local v1, "_arg1":Lcom/android/internal/app/IAppOpsNotedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1030
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Lcom/android/internal/app/IAppOpsNotedCallback;
    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v0

    .line 1031
    .local v0, "_arg0":Lcom/android/internal/app/IAppOpsStartedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1019
    .end local v0    # "_arg0":Lcom/android/internal/app/IAppOpsStartedCallback;
    :pswitch_112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1021
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;

    move-result-object v1

    .line 1022
    .local v1, "_arg1":Lcom/android/internal/app/IAppOpsStartedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 1001
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Lcom/android/internal/app/IAppOpsStartedCallback;
    :pswitch_12c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1003
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1005
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1007
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1009
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1010
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1012
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1014
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 987
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 992
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->isOperationActive(IILjava/lang/String;)Z

    move-result v3

    .line 994
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 996
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 978
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v0

    .line 979
    .local v0, "_arg0":Lcom/android/internal/app/IAppOpsActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 967
    .end local v0    # "_arg0":Lcom/android/internal/app/IAppOpsActiveCallback;
    :pswitch_18e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 969
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsActiveCallback;

    move-result-object v1

    .line 970
    .local v1, "_arg1":Lcom/android/internal/app/IAppOpsActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 958
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Lcom/android/internal/app/IAppOpsActiveCallback;
    :pswitch_1a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 959
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 941
    .end local v0    # "_arg0":I
    :pswitch_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 943
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 945
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 947
    .local v8, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 949
    .restart local v10    # "_arg3":I
    sget-object v0, Landroid/os/PackageTagsList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/PackageTagsList;

    .line 950
    .local v16, "_arg4":Landroid/os/PackageTagsList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 928
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Landroid/os/IBinder;
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/PackageTagsList;
    :pswitch_1ea
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 930
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 932
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 911
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    :pswitch_208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 913
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 915
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 917
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 919
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 920
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v10

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(IIII[Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 900
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 885
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 887
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 892
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 872
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 874
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 876
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 877
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 860
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 862
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 863
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getUidOps(I[I)Ljava/util/List;

    move-result-object v2

    .line 865
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 867
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 851
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_29a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 852
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->rebootHistory(J)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 844
    .end local v0    # "_arg0":J
    :pswitch_2ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->clearHistory()V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 836
    :pswitch_2b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetPackageOpsNoHistory(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 829
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetHistoryParameters()V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 821
    :pswitch_2d4
    sget-object v0, Landroid/app/AppOpsManager$HistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 822
    .local v0, "_arg0":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 808
    .end local v0    # "_arg0":Landroid/app/AppOpsManager$HistoricalOps;
    :pswitch_2ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 810
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 812
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 813
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->setHistoryParameters(IJI)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 799
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 800
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->offsetHistory(J)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_67c

    .line 772
    .end local v0    # "_arg0":J
    :pswitch_316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 774
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 776
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 778
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 780
    .local v19, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 782
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 784
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 786
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 788
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 790
    .local v26, "_arg8":I
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/RemoteCallback;

    .line 791
    .local v27, "_arg9":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move v14, v9

    move-wide/from16 v9, v24

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_67c

    .line 745
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "_arg9":Landroid/os/RemoteCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_369
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 747
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 749
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 751
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 753
    .restart local v19    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 755
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 757
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 759
    .restart local v22    # "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 761
    .restart local v24    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 763
    .restart local v26    # "_arg8":I
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/RemoteCallback;

    .line 764
    .restart local v27    # "_arg9":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move-wide/from16 v9, v24

    move/from16 v11, v26

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_67c

    .line 731
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "_arg9":Landroid/os/RemoteCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3bb
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 736
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    .line 738
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 740
    goto/16 :goto_67c

    .line 721
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3d9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 722
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 724
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 726
    goto/16 :goto_67c

    .line 707
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3ef
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/SyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SyncNotedAppOp;

    .line 711
    .local v1, "_arg1":Landroid/app/SyncNotedAppOp;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v3

    .line 714
    .local v3, "_result":Lcom/android/internal/app/MessageSamplingConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    goto/16 :goto_67c

    .line 699
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/SyncNotedAppOp;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/internal/app/MessageSamplingConfig;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_412
    move v4, v9

    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0

    .line 700
    .local v0, "_result":Landroid/app/RuntimeAppOpAccessMessage;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {v14, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 702
    goto/16 :goto_67c

    .line 688
    .end local v0    # "_result":Landroid/app/RuntimeAppOpAccessMessage;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_422
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 690
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    move-result v2

    .line 693
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    goto/16 :goto_67c

    .line 673
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_43c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 675
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 679
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 680
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    goto/16 :goto_67c

    .line 643
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_45e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 645
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 647
    .local v16, "_arg1":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 649
    .local v17, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 651
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 653
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 655
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 657
    .local v21, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 659
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 661
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 663
    .local v24, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 664
    .local v25, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 666
    .local v0, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 668
    goto/16 :goto_67c

    .line 623
    .end local v0    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Landroid/content/AttributionSource;
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Z
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":I
    .end local v25    # "_arg10":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4ba
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 625
    .local v7, "_arg0":I
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/AttributionSource;

    .line 627
    .local v8, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 629
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 633
    .local v11, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 634
    .local v12, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 636
    .restart local v0    # "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 638
    goto/16 :goto_67c

    .line 608
    .end local v0    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/content/AttributionSource;
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_4f2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 610
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v3

    .line 615
    .local v3, "_arg3":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_67c

    .line 599
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/app/IAppOpsCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_514
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->setCameraAudioRestriction(I)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_67c

    .line 589
    .end local v0    # "_arg0":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_526
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 590
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->shouldCollectNotes(I)Z

    move-result v1

    .line 592
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 594
    goto/16 :goto_67c

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_53c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 575
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    .line 582
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    goto/16 :goto_67c

    .line 563
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_55e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    goto/16 :goto_67c

    .line 554
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_574
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v0

    .line 555
    .local v0, "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_67c

    .line 541
    .end local v0    # "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v2

    .line 546
    .local v2, "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_67c

    .line 524
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a8
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 526
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 528
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 530
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto/16 :goto_67c

    .line 494
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5d1
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 496
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 498
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 500
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 502
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 504
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 506
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 508
    .restart local v21    # "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 510
    .local v22, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 512
    .local v23, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 514
    .restart local v24    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 515
    .restart local v25    # "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 517
    .local v0, "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 519
    goto :goto_67c

    .line 472
    .end local v0    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Ljava/lang/String;
    .end local v23    # "_arg8":Z
    .end local v24    # "_arg9":I
    .end local v25    # "_arg10":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_626
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 474
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 476
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 482
    .local v12, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 484
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 485
    .local v17, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 487
    .restart local v0    # "_result":Landroid/app/SyncNotedAppOp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 489
    goto :goto_67c

    .line 458
    .end local v0    # "_result":Landroid/app/SyncNotedAppOp;
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg4":Z
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_65f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 460
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    move-result v3

    .line 465
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    nop

    .line 1136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_67c
    const/4 v0, 0x1

    return v0

    :pswitch_data_67e
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_684
    .packed-switch 0x1
        :pswitch_65f
        :pswitch_626
        :pswitch_5d1
        :pswitch_5a8
        :pswitch_58a
        :pswitch_574
        :pswitch_55e
        :pswitch_53c
        :pswitch_526
        :pswitch_514
        :pswitch_4f2
        :pswitch_4ba
        :pswitch_45e
        :pswitch_43c
        :pswitch_422
        :pswitch_412
        :pswitch_3ef
        :pswitch_3d9
        :pswitch_3bb
        :pswitch_369
        :pswitch_316
        :pswitch_304
        :pswitch_2ea
        :pswitch_2d4
        :pswitch_2c9
        :pswitch_2b7
        :pswitch_2ac
        :pswitch_29a
        :pswitch_280
        :pswitch_266
        :pswitch_248
        :pswitch_232
        :pswitch_208
        :pswitch_1ea
        :pswitch_1ba
        :pswitch_1a8
        :pswitch_18e
        :pswitch_178
        :pswitch_15a
        :pswitch_12c
        :pswitch_112
        :pswitch_fc
        :pswitch_e2
        :pswitch_cc
        :pswitch_b2
        :pswitch_98
        :pswitch_82
        :pswitch_60
        :pswitch_55
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method
