.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAFSwitching:I = 0x1d

.field static final blacklist TRANSACTION_cancelScan:I = 0xd

.field static final blacklist TRANSACTION_cancelSeek:I = 0xa

.field static final blacklist TRANSACTION_disableAF:I = 0x17

.field static final blacklist TRANSACTION_disableRDS:I = 0x15

.field static final blacklist TRANSACTION_enableAF:I = 0x16

.field static final blacklist TRANSACTION_enableRDS:I = 0x14

.field static final blacklist TRANSACTION_getCurrentChannel:I = 0xb

.field static final blacklist TRANSACTION_getIntegerTunningParameter:I = 0x2f

.field static final blacklist TRANSACTION_getLastScanResult:I = 0x1e

.field static final blacklist TRANSACTION_getLongTunningParameter:I = 0x31

.field static final blacklist TRANSACTION_getMaxVolume:I = 0x27

.field static final blacklist TRANSACTION_getPlayedFreq:I = 0x13

.field static final blacklist TRANSACTION_getSoftMuteMode:I = 0x2d

.field static final blacklist TRANSACTION_getStringTunningParameter:I = 0x33

.field static final blacklist TRANSACTION_getVolume:I = 0x22

.field static final blacklist TRANSACTION_isAFEnable:I = 0x1c

.field static final blacklist TRANSACTION_isAirPlaneMode:I = 0x28

.field static final blacklist TRANSACTION_isBatteryLow:I = 0x2a

.field static final blacklist TRANSACTION_isBusy:I = 0x1a

.field static final blacklist TRANSACTION_isDeviceSpeakerEnabled:I = 0x34

.field static final blacklist TRANSACTION_isHeadsetPlugged:I = 0x23

.field static final blacklist TRANSACTION_isOn:I = 0x7

.field static final blacklist TRANSACTION_isRDSEnable:I = 0x1b

.field static final blacklist TRANSACTION_isScanning:I = 0xe

.field static final blacklist TRANSACTION_isSeeking:I = 0xf

.field static final blacklist TRANSACTION_isTvOutPlugged:I = 0x24

.field static final blacklist TRANSACTION_mute:I = 0x29

.field static final blacklist TRANSACTION_off:I = 0x6

.field static final blacklist TRANSACTION_on:I = 0x4

.field static final blacklist TRANSACTION_on_in_testmode:I = 0x5

.field static final blacklist TRANSACTION_removeListener:I = 0x2

.field static final blacklist TRANSACTION_scan:I = 0xc

.field static final blacklist TRANSACTION_searchAll:I = 0x12

.field static final blacklist TRANSACTION_searchDown:I = 0x10

.field static final blacklist TRANSACTION_searchUp:I = 0x11

.field static final blacklist TRANSACTION_seekDown:I = 0x9

.field static final blacklist TRANSACTION_seekUp:I = 0x8

.field static final blacklist TRANSACTION_setBand:I = 0x18

.field static final blacklist TRANSACTION_setChannelSpacing:I = 0x19

.field static final blacklist TRANSACTION_setFMIntenna:I = 0x2b

.field static final blacklist TRANSACTION_setIntegerTunningParameter:I = 0x2e

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setLongTunningParameter:I = 0x30

.field static final blacklist TRANSACTION_setMono:I = 0x20

.field static final blacklist TRANSACTION_setRecordMode:I = 0x26

.field static final blacklist TRANSACTION_setSoftmute:I = 0x2c

.field static final blacklist TRANSACTION_setSpeakerOn:I = 0x25

.field static final blacklist TRANSACTION_setStereo:I = 0x1f

.field static final blacklist TRANSACTION_setStringTunningParameter:I = 0x32

.field static final blacklist TRANSACTION_setVolume:I = 0x21

.field static final blacklist TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 219
    if-nez p0, :cond_4

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_4
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 223
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_14

    .line 224
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    return-object v1

    .line 226
    :cond_14
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 235
    packed-switch p0, :pswitch_data_b6

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 443
    :pswitch_5
    const-string v0, "isDeviceSpeakerEnabled"

    return-object v0

    .line 439
    :pswitch_8
    const-string v0, "getStringTunningParameter"

    return-object v0

    .line 435
    :pswitch_b
    const-string/jumbo v0, "setStringTunningParameter"

    return-object v0

    .line 431
    :pswitch_f
    const-string v0, "getLongTunningParameter"

    return-object v0

    .line 427
    :pswitch_12
    const-string/jumbo v0, "setLongTunningParameter"

    return-object v0

    .line 423
    :pswitch_16
    const-string v0, "getIntegerTunningParameter"

    return-object v0

    .line 419
    :pswitch_19
    const-string/jumbo v0, "setIntegerTunningParameter"

    return-object v0

    .line 415
    :pswitch_1d
    const-string v0, "getSoftMuteMode"

    return-object v0

    .line 411
    :pswitch_20
    const-string/jumbo v0, "setSoftmute"

    return-object v0

    .line 407
    :pswitch_24
    const-string/jumbo v0, "setFMIntenna"

    return-object v0

    .line 403
    :pswitch_28
    const-string v0, "isBatteryLow"

    return-object v0

    .line 399
    :pswitch_2b
    const-string v0, "mute"

    return-object v0

    .line 395
    :pswitch_2e
    const-string v0, "isAirPlaneMode"

    return-object v0

    .line 391
    :pswitch_31
    const-string v0, "getMaxVolume"

    return-object v0

    .line 387
    :pswitch_34
    const-string/jumbo v0, "setRecordMode"

    return-object v0

    .line 383
    :pswitch_38
    const-string/jumbo v0, "setSpeakerOn"

    return-object v0

    .line 379
    :pswitch_3c
    const-string v0, "isTvOutPlugged"

    return-object v0

    .line 375
    :pswitch_3f
    const-string v0, "isHeadsetPlugged"

    return-object v0

    .line 371
    :pswitch_42
    const-string v0, "getVolume"

    return-object v0

    .line 367
    :pswitch_45
    const-string/jumbo v0, "setVolume"

    return-object v0

    .line 363
    :pswitch_49
    const-string/jumbo v0, "setMono"

    return-object v0

    .line 359
    :pswitch_4d
    const-string/jumbo v0, "setStereo"

    return-object v0

    .line 355
    :pswitch_51
    const-string v0, "getLastScanResult"

    return-object v0

    .line 351
    :pswitch_54
    const-string v0, "cancelAFSwitching"

    return-object v0

    .line 347
    :pswitch_57
    const-string v0, "isAFEnable"

    return-object v0

    .line 343
    :pswitch_5a
    const-string v0, "isRDSEnable"

    return-object v0

    .line 339
    :pswitch_5d
    const-string v0, "isBusy"

    return-object v0

    .line 335
    :pswitch_60
    const-string/jumbo v0, "setChannelSpacing"

    return-object v0

    .line 331
    :pswitch_64
    const-string/jumbo v0, "setBand"

    return-object v0

    .line 327
    :pswitch_68
    const-string v0, "disableAF"

    return-object v0

    .line 323
    :pswitch_6b
    const-string v0, "enableAF"

    return-object v0

    .line 319
    :pswitch_6e
    const-string v0, "disableRDS"

    return-object v0

    .line 315
    :pswitch_71
    const-string v0, "enableRDS"

    return-object v0

    .line 311
    :pswitch_74
    const-string v0, "getPlayedFreq"

    return-object v0

    .line 307
    :pswitch_77
    const-string/jumbo v0, "searchAll"

    return-object v0

    .line 303
    :pswitch_7b
    const-string/jumbo v0, "searchUp"

    return-object v0

    .line 299
    :pswitch_7f
    const-string/jumbo v0, "searchDown"

    return-object v0

    .line 295
    :pswitch_83
    const-string v0, "isSeeking"

    return-object v0

    .line 291
    :pswitch_86
    const-string v0, "isScanning"

    return-object v0

    .line 287
    :pswitch_89
    const-string v0, "cancelScan"

    return-object v0

    .line 283
    :pswitch_8c
    const-string/jumbo v0, "scan"

    return-object v0

    .line 279
    :pswitch_90
    const-string v0, "getCurrentChannel"

    return-object v0

    .line 275
    :pswitch_93
    const-string v0, "cancelSeek"

    return-object v0

    .line 271
    :pswitch_96
    const-string/jumbo v0, "seekDown"

    return-object v0

    .line 267
    :pswitch_9a
    const-string/jumbo v0, "seekUp"

    return-object v0

    .line 263
    :pswitch_9e
    const-string v0, "isOn"

    return-object v0

    .line 259
    :pswitch_a1
    const-string v0, "off"

    return-object v0

    .line 255
    :pswitch_a4
    const-string v0, "on_in_testmode"

    return-object v0

    .line 251
    :pswitch_a7
    const-string v0, "on"

    return-object v0

    .line 247
    :pswitch_aa
    const-string/jumbo v0, "tune"

    return-object v0

    .line 243
    :pswitch_ae
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 239
    :pswitch_b2
    const-string/jumbo v0, "setListener"

    return-object v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 230
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1793
    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 454
    invoke-static {p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 458
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    .line 459
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 460
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    :cond_d
    packed-switch p1, :pswitch_data_2c0

    .line 470
    packed-switch p1, :pswitch_data_2c6

    .line 878
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 466
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    return v1

    .line 871
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isDeviceSpeakerEnabled()Z

    move-result v2

    .line 872
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 874
    goto/16 :goto_2be

    .line 860
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    goto/16 :goto_2be

    .line 849
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 851
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 852
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_2be

    .line 837
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 839
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 840
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLongTunningParameter(Ljava/lang/String;J)J

    move-result-wide v5

    .line 842
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 844
    goto/16 :goto_2be

    .line 826
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":J
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 828
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 829
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setLongTunningParameter(Ljava/lang/String;J)V

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_2be

    .line 814
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 816
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 817
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getIntegerTunningParameter(Ljava/lang/String;I)I

    move-result v4

    .line 819
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_2be

    .line 803
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 805
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 806
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setIntegerTunningParameter(Ljava/lang/String;I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    goto/16 :goto_2be

    .line 795
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_a6
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getSoftMuteMode()Z

    move-result v2

    .line 796
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 798
    goto/16 :goto_2be

    .line 787
    .end local v2    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 788
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSoftmute(Z)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_2be

    .line 778
    .end local v2    # "_arg0":Z
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 779
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setFMIntenna(Z)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_2be

    .line 770
    .end local v2    # "_arg0":Z
    :pswitch_d0
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v2

    .line 771
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 773
    goto/16 :goto_2be

    .line 762
    .end local v2    # "_result":Z
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 763
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->mute(Z)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_2be

    .line 754
    .end local v2    # "_arg0":Z
    :pswitch_eb
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v2

    .line 755
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 757
    goto/16 :goto_2be

    .line 747
    .end local v2    # "_result":Z
    :pswitch_f7
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v2

    .line 748
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 750
    goto/16 :goto_2be

    .line 739
    .end local v2    # "_result":J
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 740
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setRecordMode(Z)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    goto/16 :goto_2be

    .line 730
    .end local v2    # "_arg0":Z
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 731
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSpeakerOn(Z)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    goto/16 :goto_2be

    .line 722
    .end local v2    # "_arg0":Z
    :pswitch_121
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v2

    .line 723
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto/16 :goto_2be

    .line 715
    .end local v2    # "_result":Z
    :pswitch_12d
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v2

    .line 716
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 718
    goto/16 :goto_2be

    .line 708
    .end local v2    # "_result":Z
    :pswitch_139
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v2

    .line 709
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 711
    goto/16 :goto_2be

    .line 700
    .end local v2    # "_result":J
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 701
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto/16 :goto_2be

    .line 693
    .end local v2    # "_arg0":J
    :pswitch_154
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setMono()V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_2be

    .line 687
    :pswitch_15c
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStereo()V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_2be

    .line 680
    :pswitch_164
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v2

    .line 681
    .local v2, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 683
    goto/16 :goto_2be

    .line 674
    .end local v2    # "_result":[J
    :pswitch_170
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    goto/16 :goto_2be

    .line 667
    :pswitch_178
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v2

    .line 668
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 670
    goto/16 :goto_2be

    .line 660
    .end local v2    # "_result":Z
    :pswitch_184
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v2

    .line 661
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 663
    goto/16 :goto_2be

    .line 653
    .end local v2    # "_result":Z
    :pswitch_190
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v2

    .line 654
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    goto/16 :goto_2be

    .line 645
    .end local v2    # "_result":I
    :pswitch_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_2be

    .line 636
    .end local v2    # "_arg0":I
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_2be

    .line 629
    .end local v2    # "_arg0":I
    :pswitch_1ba
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_2be

    .line 623
    :pswitch_1c2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_2be

    .line 617
    :pswitch_1ca
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_2be

    .line 611
    :pswitch_1d2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_2be

    .line 604
    :pswitch_1da
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getPlayedFreq()J

    move-result-wide v2

    .line 605
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 607
    goto/16 :goto_2be

    .line 597
    .end local v2    # "_result":J
    :pswitch_1e6
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchAll()J

    move-result-wide v2

    .line 598
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    goto/16 :goto_2be

    .line 590
    .end local v2    # "_result":J
    :pswitch_1f2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v2

    .line 591
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 593
    goto/16 :goto_2be

    .line 583
    .end local v2    # "_result":J
    :pswitch_1fe
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v2

    .line 584
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 586
    goto/16 :goto_2be

    .line 576
    .end local v2    # "_result":J
    :pswitch_20a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isSeeking()Z

    move-result v2

    .line 577
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 579
    goto/16 :goto_2be

    .line 569
    .end local v2    # "_result":Z
    :pswitch_216
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v2

    .line 570
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 572
    goto/16 :goto_2be

    .line 562
    .end local v2    # "_result":Z
    :pswitch_222
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v2

    .line 563
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 565
    goto/16 :goto_2be

    .line 556
    .end local v2    # "_result":Z
    :pswitch_22e
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_2be

    .line 549
    :pswitch_236
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v2

    .line 550
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 552
    goto/16 :goto_2be

    .line 543
    .end local v2    # "_result":J
    :pswitch_242
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_2be

    .line 536
    :pswitch_24a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v2

    .line 537
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    goto :goto_2be

    .line 529
    .end local v2    # "_result":J
    :pswitch_255
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v2

    .line 530
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    goto :goto_2be

    .line 522
    .end local v2    # "_result":J
    :pswitch_260
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v2

    .line 523
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 525
    goto :goto_2be

    .line 515
    .end local v2    # "_result":Z
    :pswitch_26b
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v2

    .line 516
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto :goto_2be

    .line 508
    .end local v2    # "_result":Z
    :pswitch_276
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v2

    .line 509
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 511
    goto :goto_2be

    .line 501
    .end local v2    # "_result":Z
    :pswitch_281
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v2

    .line 502
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    goto :goto_2be

    .line 493
    .end local v2    # "_result":Z
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 494
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto :goto_2be

    .line 484
    .end local v2    # "_arg0":J
    :pswitch_29a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v2

    .line 485
    .local v2, "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto :goto_2be

    .line 475
    .end local v2    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    :pswitch_2ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v2

    .line 476
    .restart local v2    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    nop

    .line 881
    .end local v2    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    :goto_2be
    return v1

    nop

    :pswitch_data_2c0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_2ac
        :pswitch_29a
        :pswitch_28c
        :pswitch_281
        :pswitch_276
        :pswitch_26b
        :pswitch_260
        :pswitch_255
        :pswitch_24a
        :pswitch_242
        :pswitch_236
        :pswitch_22e
        :pswitch_222
        :pswitch_216
        :pswitch_20a
        :pswitch_1fe
        :pswitch_1f2
        :pswitch_1e6
        :pswitch_1da
        :pswitch_1d2
        :pswitch_1ca
        :pswitch_1c2
        :pswitch_1ba
        :pswitch_1ab
        :pswitch_19c
        :pswitch_190
        :pswitch_184
        :pswitch_178
        :pswitch_170
        :pswitch_164
        :pswitch_15c
        :pswitch_154
        :pswitch_145
        :pswitch_139
        :pswitch_12d
        :pswitch_121
        :pswitch_112
        :pswitch_103
        :pswitch_f7
        :pswitch_eb
        :pswitch_dc
        :pswitch_d0
        :pswitch_c1
        :pswitch_b2
        :pswitch_a6
        :pswitch_93
        :pswitch_7c
        :pswitch_69
        :pswitch_52
        :pswitch_3f
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
