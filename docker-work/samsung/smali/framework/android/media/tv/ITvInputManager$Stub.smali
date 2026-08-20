.class public abstract Landroid/media/tv/ITvInputManager$Stub;
.super Landroid/os/Binder;
.source "ITvInputManager.java"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManager"

.field static final greylist-max-o TRANSACTION_acquireTvInputHardware:I = 0x30

.field static final greylist-max-o TRANSACTION_addBlockedRating:I = 0xe

.field static final blacklist TRANSACTION_addHardwareDevice:I = 0x39

.field static final greylist-max-o TRANSACTION_captureFrame:I = 0x33

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0x1d

.field static final greylist-max-o TRANSACTION_createSession:I = 0x10

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x16

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x5

.field static final greylist-max-o TRANSACTION_getAvailableTvStreamConfigList:I = 0x32

.field static final greylist-max-o TRANSACTION_getBlockedRatings:I = 0xd

.field static final blacklist TRANSACTION_getClientPid:I = 0x12

.field static final blacklist TRANSACTION_getClientPriority:I = 0x13

.field static final blacklist TRANSACTION_getCurrentTunedInfos:I = 0x27

.field static final greylist-max-o TRANSACTION_getDvbDeviceList:I = 0x35

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x6

.field static final greylist-max-o TRANSACTION_getHardwareList:I = 0x2f

.field static final greylist-max-o TRANSACTION_getTvContentRatingSystemList:I = 0x7

.field static final greylist-max-o TRANSACTION_getTvInputInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getTvInputList:I = 0x1

.field static final greylist-max-o TRANSACTION_getTvInputState:I = 0x4

.field static final greylist-max-o TRANSACTION_isParentalControlsEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_isRatingBlocked:I = 0xc

.field static final greylist-max-o TRANSACTION_isSingleSessionActive:I = 0x34

.field static final greylist-max-o TRANSACTION_openDvbDevice:I = 0x36

.field static final blacklist TRANSACTION_pauseRecording:I = 0x2a

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x8

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0x1e

.field static final greylist-max-o TRANSACTION_releaseSession:I = 0x11

.field static final greylist-max-o TRANSACTION_releaseTvInputHardware:I = 0x31

.field static final greylist-max-o TRANSACTION_removeBlockedRating:I = 0xf

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x2d

.field static final blacklist TRANSACTION_removeHardwareDevice:I = 0x3a

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0x1f

.field static final blacklist TRANSACTION_requestAd:I = 0x2e

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x2c

.field static final greylist-max-o TRANSACTION_requestChannelBrowsable:I = 0x38

.field static final blacklist TRANSACTION_resumeRecording:I = 0x2b

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x1a

.field static final greylist-max-o TRANSACTION_sendAppPrivateCommand:I = 0x1c

.field static final greylist-max-o TRANSACTION_sendTvInputNotifyIntent:I = 0x37

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x19

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_setMainSession:I = 0x14

.field static final greylist-max-o TRANSACTION_setParentalControlsEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x15

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x17

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x28

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x29

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x26

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x22

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x21

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x23

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x24

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x25

.field static final greylist-max-o TRANSACTION_tune:I = 0x18

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0x20

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateTvInputInfo:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 225
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 226
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 234
    if-nez p0, :cond_4

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_4
    const-string v0, "android.media.tv.ITvInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 238
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputManager;

    if-eqz v1, :cond_14

    .line 239
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputManager;

    return-object v1

    .line 241
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 250
    packed-switch p0, :pswitch_data_c2

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 482
    :pswitch_5
    const-string v0, "removeHardwareDevice"

    return-object v0

    .line 478
    :pswitch_8
    const-string v0, "addHardwareDevice"

    return-object v0

    .line 474
    :pswitch_b
    const-string v0, "requestChannelBrowsable"

    return-object v0

    .line 470
    :pswitch_e
    const-string v0, "sendTvInputNotifyIntent"

    return-object v0

    .line 466
    :pswitch_11
    const-string v0, "openDvbDevice"

    return-object v0

    .line 462
    :pswitch_14
    const-string v0, "getDvbDeviceList"

    return-object v0

    .line 458
    :pswitch_17
    const-string v0, "isSingleSessionActive"

    return-object v0

    .line 454
    :pswitch_1a
    const-string v0, "captureFrame"

    return-object v0

    .line 450
    :pswitch_1d
    const-string v0, "getAvailableTvStreamConfigList"

    return-object v0

    .line 446
    :pswitch_20
    const-string v0, "releaseTvInputHardware"

    return-object v0

    .line 442
    :pswitch_23
    const-string v0, "acquireTvInputHardware"

    return-object v0

    .line 438
    :pswitch_26
    const-string v0, "getHardwareList"

    return-object v0

    .line 434
    :pswitch_29
    const-string v0, "requestAd"

    return-object v0

    .line 430
    :pswitch_2c
    const-string v0, "removeBroadcastInfo"

    return-object v0

    .line 426
    :pswitch_2f
    const-string v0, "requestBroadcastInfo"

    return-object v0

    .line 422
    :pswitch_32
    const-string v0, "resumeRecording"

    return-object v0

    .line 418
    :pswitch_35
    const-string v0, "pauseRecording"

    return-object v0

    .line 414
    :pswitch_38
    const-string/jumbo v0, "stopRecording"

    return-object v0

    .line 410
    :pswitch_3c
    const-string/jumbo v0, "startRecording"

    return-object v0

    .line 406
    :pswitch_40
    const-string v0, "getCurrentTunedInfos"

    return-object v0

    .line 402
    :pswitch_43
    const-string/jumbo v0, "timeShiftEnablePositionTracking"

    return-object v0

    .line 398
    :pswitch_47
    const-string/jumbo v0, "timeShiftSetPlaybackParams"

    return-object v0

    .line 394
    :pswitch_4b
    const-string/jumbo v0, "timeShiftSeekTo"

    return-object v0

    .line 390
    :pswitch_4f
    const-string/jumbo v0, "timeShiftResume"

    return-object v0

    .line 386
    :pswitch_53
    const-string/jumbo v0, "timeShiftPause"

    return-object v0

    .line 382
    :pswitch_57
    const-string/jumbo v0, "timeShiftPlay"

    return-object v0

    .line 378
    :pswitch_5b
    const-string/jumbo v0, "unblockContent"

    return-object v0

    .line 374
    :pswitch_5f
    const-string v0, "removeOverlayView"

    return-object v0

    .line 370
    :pswitch_62
    const-string v0, "relayoutOverlayView"

    return-object v0

    .line 366
    :pswitch_65
    const-string v0, "createOverlayView"

    return-object v0

    .line 362
    :pswitch_68
    const-string v0, "sendAppPrivateCommand"

    return-object v0

    .line 358
    :pswitch_6b
    const-string v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    .line 354
    :pswitch_6e
    const-string v0, "selectTrack"

    return-object v0

    .line 350
    :pswitch_71
    const-string v0, "setCaptionEnabled"

    return-object v0

    .line 346
    :pswitch_74
    const-string/jumbo v0, "tune"

    return-object v0

    .line 342
    :pswitch_78
    const-string/jumbo v0, "setVolume"

    return-object v0

    .line 338
    :pswitch_7c
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    .line 334
    :pswitch_7f
    const-string/jumbo v0, "setSurface"

    return-object v0

    .line 330
    :pswitch_83
    const-string v0, "setMainSession"

    return-object v0

    .line 326
    :pswitch_86
    const-string v0, "getClientPriority"

    return-object v0

    .line 322
    :pswitch_89
    const-string v0, "getClientPid"

    return-object v0

    .line 318
    :pswitch_8c
    const-string v0, "releaseSession"

    return-object v0

    .line 314
    :pswitch_8f
    const-string v0, "createSession"

    return-object v0

    .line 310
    :pswitch_92
    const-string v0, "removeBlockedRating"

    return-object v0

    .line 306
    :pswitch_95
    const-string v0, "addBlockedRating"

    return-object v0

    .line 302
    :pswitch_98
    const-string v0, "getBlockedRatings"

    return-object v0

    .line 298
    :pswitch_9b
    const-string v0, "isRatingBlocked"

    return-object v0

    .line 294
    :pswitch_9e
    const-string v0, "setParentalControlsEnabled"

    return-object v0

    .line 290
    :pswitch_a1
    const-string v0, "isParentalControlsEnabled"

    return-object v0

    .line 286
    :pswitch_a4
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 282
    :pswitch_a8
    const-string v0, "registerCallback"

    return-object v0

    .line 278
    :pswitch_ab
    const-string v0, "getTvContentRatingSystemList"

    return-object v0

    .line 274
    :pswitch_ae
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 270
    :pswitch_b1
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 266
    :pswitch_b4
    const-string v0, "getTvInputState"

    return-object v0

    .line 262
    :pswitch_b7
    const-string/jumbo v0, "updateTvInputInfo"

    return-object v0

    .line 258
    :pswitch_bb
    const-string v0, "getTvInputInfo"

    return-object v0

    .line 254
    :pswitch_be
    const-string v0, "getTvInputList"

    return-object v0

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 245
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2322
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 493
    invoke-static {p1}, Landroid/media/tv/ITvInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.tv.ITvInputManager"

    .line 498
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 499
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    :cond_15
    packed-switch v8, :pswitch_data_5a0

    .line 509
    packed-switch v8, :pswitch_data_5a6

    .line 1220
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 505
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    return v12

    .line 1212
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->removeHardwareDevice(I)V

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    goto/16 :goto_59e

    .line 1203
    .end local v0    # "_arg0":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1204
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->addHardwareDevice(I)V

    .line 1206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    goto/16 :goto_59e

    .line 1192
    .end local v0    # "_arg0":I
    :pswitch_42
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1194
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1195
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->requestChannelBrowsable(Landroid/net/Uri;I)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    goto/16 :goto_59e

    .line 1181
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    :pswitch_59
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1183
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1184
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_59e

    .line 1169
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    :pswitch_70
    sget-object v0, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/DvbDeviceInfo;

    .line 1171
    .local v0, "_arg0":Landroid/media/tv/DvbDeviceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1172
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1174
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1176
    goto/16 :goto_59e

    .line 1161
    .end local v0    # "_arg0":Landroid/media/tv/DvbDeviceInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_8b
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getDvbDeviceList()Ljava/util/List;

    move-result-object v0

    .line 1162
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1164
    goto/16 :goto_59e

    .line 1152
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1153
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->isSingleSessionActive(I)Z

    move-result v1

    .line 1155
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1157
    goto/16 :goto_59e

    .line 1136
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1140
    .local v1, "_arg1":Landroid/view/Surface;
    sget-object v2, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvStreamConfig;

    .line 1142
    .local v2, "_arg2":Landroid/media/tv/TvStreamConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1143
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    move-result v4

    .line 1145
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1147
    goto/16 :goto_59e

    .line 1124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/Surface;
    .end local v2    # "_arg2":Landroid/media/tv/TvStreamConfig;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1127
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1129
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1131
    goto/16 :goto_59e

    .line 1111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    :pswitch_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1113
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    .line 1115
    .local v1, "_arg1":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1116
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_59e

    .line 1091
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/tv/ITvInputHardware;
    .end local v2    # "_arg2":I
    :pswitch_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1093
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object v14

    .line 1095
    .local v14, "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    sget-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/media/tv/TvInputInfo;

    .line 1097
    .local v15, "_arg2":Landroid/media/tv/TvInputInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1099
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1101
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1102
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/ITvInputManager$Stub;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    .line 1104
    .local v0, "_result":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1106
    goto/16 :goto_59e

    .line 1083
    .end local v0    # "_result":Landroid/media/tv/ITvInputHardware;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v15    # "_arg2":Landroid/media/tv/TvInputInfo;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_13e
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getHardwareList()Ljava/util/List;

    move-result-object v0

    .line 1084
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1086
    goto/16 :goto_59e

    .line 1071
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :pswitch_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1073
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/AdRequest;

    .line 1075
    .local v1, "_arg1":Landroid/media/tv/AdRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1076
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_59e

    .line 1058
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/tv/AdRequest;
    .end local v2    # "_arg2":I
    :pswitch_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1060
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->removeBroadcastInfo(Landroid/os/IBinder;II)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_59e

    .line 1045
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1047
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/BroadcastInfoRequest;

    .line 1049
    .local v1, "_arg1":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1050
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    goto/16 :goto_59e

    .line 1032
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/tv/BroadcastInfoRequest;
    .end local v2    # "_arg2":I
    :pswitch_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1036
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1037
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    goto/16 :goto_59e

    .line 1019
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_1b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1021
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1023
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1024
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_59e

    .line 1008
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1010
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1011
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->stopRecording(Landroid/os/IBinder;I)V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    goto/16 :goto_59e

    .line 993
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 995
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 997
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 999
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1000
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_59e

    .line 983
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 984
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->getCurrentTunedInfos(I)Ljava/util/List;

    move-result-object v1

    .line 986
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 988
    goto/16 :goto_59e

    .line 970
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    :pswitch_216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 972
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 974
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 975
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    goto/16 :goto_59e

    .line 957
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_22d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 959
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlaybackParams;

    .line 961
    .local v1, "_arg1":Landroid/media/PlaybackParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_59e

    .line 944
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/PlaybackParams;
    .end local v2    # "_arg2":I
    :pswitch_248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 946
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 948
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 949
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    goto/16 :goto_59e

    .line 933
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_25f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 935
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 936
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftResume(Landroid/os/IBinder;I)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_59e

    .line 922
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 924
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPause(Landroid/os/IBinder;I)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_59e

    .line 909
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 911
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 913
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 914
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_59e

    .line 896
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":I
    :pswitch_2a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 898
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_59e

    .line 885
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 887
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 888
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->removeOverlayView(Landroid/os/IBinder;I)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_59e

    .line 872
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_2ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 874
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 876
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 877
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_59e

    .line 857
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    :pswitch_2e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 859
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 861
    .local v1, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 863
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 864
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_59e

    .line 842
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    .end local v3    # "_arg3":I
    :pswitch_304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 844
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 848
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 849
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    goto/16 :goto_59e

    .line 829
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 831
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 833
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 834
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    goto/16 :goto_59e

    .line 814
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_33a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 816
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 821
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_59e

    .line 801
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 803
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 805
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 806
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    goto/16 :goto_59e

    .line 786
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_36c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 788
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 790
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 792
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 793
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager$Stub;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_59e

    .line 773
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":I
    :pswitch_38f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 775
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 777
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 778
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setVolume(Landroid/os/IBinder;FI)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    goto/16 :goto_59e

    .line 756
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":I
    :pswitch_3a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 758
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 760
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 762
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 764
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 765
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_59e

    .line 743
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_3cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 745
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 747
    .local v1, "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 748
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_59e

    .line 732
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/view/Surface;
    .end local v2    # "_arg2":I
    :pswitch_3e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 734
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->setMainSession(Landroid/os/IBinder;I)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_59e

    .line 720
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_3fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 722
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getClientPriority(ILjava/lang/String;)I

    move-result v2

    .line 725
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    goto/16 :goto_59e

    .line 710
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->getClientPid(Ljava/lang/String;)I

    move-result v1

    .line 713
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    goto/16 :goto_59e

    .line 699
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 701
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_59e

    .line 682
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    move-result-object v6

    .line 684
    .local v6, "_arg0":Landroid/media/tv/ITvInputClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 686
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 688
    .local v14, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 690
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 691
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputManager$Stub;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_59e

    .line 671
    .end local v6    # "_arg0":Landroid/media/tv/ITvInputClient;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->removeBlockedRating(Ljava/lang/String;I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_59e

    .line 660
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 662
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 663
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->addBlockedRating(Ljava/lang/String;I)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_59e

    .line 650
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 655
    goto/16 :goto_59e

    .line 638
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_49c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 641
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->isRatingBlocked(Ljava/lang/String;I)Z

    move-result v2

    .line 643
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    goto/16 :goto_59e

    .line 627
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 629
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->setParentalControlsEnabled(ZI)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_59e

    .line 617
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_4c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->isParentalControlsEnabled(I)Z

    move-result v1

    .line 620
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 622
    goto/16 :goto_59e

    .line 606
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object v0

    .line 608
    .local v0, "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_59e

    .line 595
    .end local v0    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "_arg1":I
    :pswitch_4f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    move-result-object v0

    .line 597
    .restart local v0    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto/16 :goto_59e

    .line 585
    .end local v0    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    .end local v1    # "_arg1":I
    :pswitch_507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->getTvContentRatingSystemList(I)Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 590
    goto/16 :goto_59e

    .line 571
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    :pswitch_51a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/tv/ITvInputManager$Stub;->getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v3

    .line 578
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 580
    goto :goto_59e

    .line 559
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 562
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 564
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 566
    goto :goto_59e

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_54a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputState(Ljava/lang/String;I)I

    move-result v2

    .line 552
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    goto :goto_59e

    .line 536
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_560
    sget-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 538
    .local v0, "_arg0":Landroid/media/tv/TvInputInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto :goto_59e

    .line 524
    .end local v0    # "_arg0":Landroid/media/tv/TvInputInfo;
    .end local v1    # "_arg1":I
    :pswitch_576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v7, v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    .line 529
    .local v2, "_result":Landroid/media/tv/TvInputInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 531
    goto :goto_59e

    .line 514
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/media/tv/TvInputInfo;
    :pswitch_58c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 515
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {v7, v0}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputList(I)Ljava/util/List;

    move-result-object v1

    .line 517
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 519
    nop

    .line 1223
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :goto_59e
    return v12

    nop

    :pswitch_data_5a0
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_5a6
    .packed-switch 0x1
        :pswitch_58c
        :pswitch_576
        :pswitch_560
        :pswitch_54a
        :pswitch_534
        :pswitch_51a
        :pswitch_507
        :pswitch_4f0
        :pswitch_4d9
        :pswitch_4c6
        :pswitch_4b3
        :pswitch_49c
        :pswitch_489
        :pswitch_476
        :pswitch_463
        :pswitch_438
        :pswitch_425
        :pswitch_412
        :pswitch_3fb
        :pswitch_3e8
        :pswitch_3cd
        :pswitch_3a6
        :pswitch_38f
        :pswitch_36c
        :pswitch_355
        :pswitch_33a
        :pswitch_323
        :pswitch_304
        :pswitch_2e5
        :pswitch_2ca
        :pswitch_2b7
        :pswitch_2a0
        :pswitch_285
        :pswitch_272
        :pswitch_25f
        :pswitch_248
        :pswitch_22d
        :pswitch_216
        :pswitch_203
        :pswitch_1e0
        :pswitch_1cd
        :pswitch_1b2
        :pswitch_197
        :pswitch_17c
        :pswitch_165
        :pswitch_14a
        :pswitch_13e
        :pswitch_103
        :pswitch_e8
        :pswitch_d1
        :pswitch_aa
        :pswitch_97
        :pswitch_8b
        :pswitch_70
        :pswitch_59
        :pswitch_42
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
