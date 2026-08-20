.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire:I = 0x65

.field static final blacklist TRANSACTION_addDvfsLockAllowedUid:I = 0x54

.field static final blacklist TRANSACTION_checkHintExist:I = 0x68

.field static final blacklist TRANSACTION_checkResourceExist:I = 0x69

.field static final blacklist TRANSACTION_checkSysfsIdExist:I = 0x6c

.field static final blacklist TRANSACTION_disableGpisHint:I = 0x6e

.field static final blacklist TRANSACTION_enableInteractionHint:I = 0x70

.field static final blacklist TRANSACTION_getBatteryRemainingUsageTime:I = 0x40

.field static final blacklist TRANSACTION_getGameThrottlingLevel:I = 0x4b

.field static final blacklist TRANSACTION_getProcessCpuUsage:I = 0x52

.field static final blacklist TRANSACTION_getSsrmStatus:I = 0x32

.field static final blacklist TRANSACTION_getSupportedFrequency:I = 0x67

.field static final blacklist TRANSACTION_mpdUpdate:I = 0xf

.field static final blacklist TRANSACTION_readFile:I = 0x53

.field static final blacklist TRANSACTION_readSysfs:I = 0x6b

.field static final blacklist TRANSACTION_release:I = 0x66

.field static final blacklist TRANSACTION_removeDvfsLockAllowedUid:I = 0x55

.field static final blacklist TRANSACTION_requestCPUUpdate:I = 0xe

.field static final blacklist TRANSACTION_requestFreezeSlowdown:I = 0x58

.field static final blacklist TRANSACTION_requestGpis:I = 0x5c

.field static final blacklist TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final blacklist TRANSACTION_restrictApp:I = 0x6d

.field static final blacklist TRANSACTION_sendCommandToSSRM:I = 0x30

.field static final blacklist TRANSACTION_sendDrawingTid:I = 0x57

.field static final blacklist TRANSACTION_sendDrawingTime:I = 0x56

.field static final blacklist TRANSACTION_setFrozenTime:I = 0x59

.field static final blacklist TRANSACTION_setGameFps:I = 0x4a

.field static final blacklist TRANSACTION_setGamePowerSaving:I = 0x49

.field static final blacklist TRANSACTION_setGameTouchParam:I = 0x4d

.field static final blacklist TRANSACTION_setGameTurboMode:I = 0x4c

.field static final blacklist TRANSACTION_setGpisHint:I = 0x6f

.field static final blacklist TRANSACTION_supportVRTemperaturesInformation:I = 0x33

.field static final blacklist TRANSACTION_unsetGameTouchParam:I = 0x4e

.field static final blacklist TRANSACTION_writeSysfs:I = 0x6a


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 137
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 138
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 146
    if-nez p0, :cond_4

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_4
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 150
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_14

    .line 151
    move-object v1, v0

    check-cast v1, Landroid/os/ICustomFrequencyManager;

    return-object v1

    .line 153
    :cond_14
    new-instance v1, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 162
    sparse-switch p0, :sswitch_data_84

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 294
    :sswitch_5
    const-string v0, "enableInteractionHint"

    return-object v0

    .line 298
    :sswitch_8
    const-string/jumbo v0, "setGpisHint"

    return-object v0

    .line 290
    :sswitch_c
    const-string v0, "disableGpisHint"

    return-object v0

    .line 286
    :sswitch_f
    const-string/jumbo v0, "restrictApp"

    return-object v0

    .line 282
    :sswitch_13
    const-string v0, "checkSysfsIdExist"

    return-object v0

    .line 278
    :sswitch_16
    const-string/jumbo v0, "readSysfs"

    return-object v0

    .line 274
    :sswitch_1a
    const-string/jumbo v0, "writeSysfs"

    return-object v0

    .line 270
    :sswitch_1e
    const-string v0, "checkResourceExist"

    return-object v0

    .line 266
    :sswitch_21
    const-string v0, "checkHintExist"

    return-object v0

    .line 262
    :sswitch_24
    const-string/jumbo v0, "getSupportedFrequency"

    return-object v0

    .line 258
    :sswitch_28
    const-string/jumbo v0, "release"

    return-object v0

    .line 254
    :sswitch_2c
    const-string v0, "acquire"

    return-object v0

    .line 250
    :sswitch_2f
    const-string/jumbo v0, "requestGpis"

    return-object v0

    .line 246
    :sswitch_33
    const-string/jumbo v0, "setFrozenTime"

    return-object v0

    .line 242
    :sswitch_37
    const-string/jumbo v0, "requestFreezeSlowdown"

    return-object v0

    .line 238
    :sswitch_3b
    const-string/jumbo v0, "sendDrawingTid"

    return-object v0

    .line 234
    :sswitch_3f
    const-string/jumbo v0, "sendDrawingTime"

    return-object v0

    .line 230
    :sswitch_43
    const-string/jumbo v0, "removeDvfsLockAllowedUid"

    return-object v0

    .line 226
    :sswitch_47
    const-string v0, "addDvfsLockAllowedUid"

    return-object v0

    .line 222
    :sswitch_4a
    const-string/jumbo v0, "readFile"

    return-object v0

    .line 218
    :sswitch_4e
    const-string/jumbo v0, "getProcessCpuUsage"

    return-object v0

    .line 214
    :sswitch_52
    const-string/jumbo v0, "unsetGameTouchParam"

    return-object v0

    .line 210
    :sswitch_56
    const-string/jumbo v0, "setGameTouchParam"

    return-object v0

    .line 206
    :sswitch_5a
    const-string/jumbo v0, "setGameTurboMode"

    return-object v0

    .line 202
    :sswitch_5e
    const-string v0, "getGameThrottlingLevel"

    return-object v0

    .line 198
    :sswitch_61
    const-string/jumbo v0, "setGameFps"

    return-object v0

    .line 194
    :sswitch_65
    const-string/jumbo v0, "setGamePowerSaving"

    return-object v0

    .line 190
    :sswitch_69
    const-string v0, "getBatteryRemainingUsageTime"

    return-object v0

    .line 186
    :sswitch_6c
    const-string/jumbo v0, "supportVRTemperaturesInformation"

    return-object v0

    .line 182
    :sswitch_70
    const-string/jumbo v0, "getSsrmStatus"

    return-object v0

    .line 178
    :sswitch_74
    const-string/jumbo v0, "sendCommandToSSRM"

    return-object v0

    .line 174
    :sswitch_78
    const-string/jumbo v0, "mpdUpdate"

    return-object v0

    .line 170
    :sswitch_7c
    const-string/jumbo v0, "requestCPUUpdate"

    return-object v0

    .line 166
    :sswitch_80
    const-string/jumbo v0, "requestMpParameterUpdate"

    return-object v0

    :sswitch_data_84
    .sparse-switch
        0xd -> :sswitch_80
        0xe -> :sswitch_7c
        0xf -> :sswitch_78
        0x30 -> :sswitch_74
        0x32 -> :sswitch_70
        0x33 -> :sswitch_6c
        0x40 -> :sswitch_69
        0x49 -> :sswitch_65
        0x4a -> :sswitch_61
        0x4b -> :sswitch_5e
        0x4c -> :sswitch_5a
        0x4d -> :sswitch_56
        0x4e -> :sswitch_52
        0x52 -> :sswitch_4e
        0x53 -> :sswitch_4a
        0x54 -> :sswitch_47
        0x55 -> :sswitch_43
        0x56 -> :sswitch_3f
        0x57 -> :sswitch_3b
        0x58 -> :sswitch_37
        0x59 -> :sswitch_33
        0x5c -> :sswitch_2f
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_28
        0x67 -> :sswitch_24
        0x68 -> :sswitch_21
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1a
        0x6b -> :sswitch_16
        0x6c -> :sswitch_13
        0x6d -> :sswitch_f
        0x6e -> :sswitch_c
        0x6f -> :sswitch_8
        0x70 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 157
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1291
    const/16 v0, 0x6f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 309
    invoke-static {p1}, Landroid/os/ICustomFrequencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.os.ICustomFrequencyManager"

    .line 314
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 315
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 314
    :cond_16
    move-object/from16 v11, p2

    .line 317
    :goto_18
    packed-switch v7, :pswitch_data_296

    .line 325
    sparse-switch v7, :sswitch_data_29c

    .line 681
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 321
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    return v10

    .line 664
    :sswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 665
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->enableInteractionHint(Z)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_295

    .line 673
    .end local v0    # "_arg0":Z
    :sswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 674
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGpisHint(Z)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_295

    .line 657
    .end local v0    # "_arg0":Z
    :sswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->disableGpisHint()V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_295

    .line 645
    :sswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restrictApp(Ljava/lang/String;II)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_295

    .line 635
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 636
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysfsIdExist(I)Z

    move-result v1

    .line 638
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    goto/16 :goto_295

    .line 625
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->readSysfs(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    goto/16 :goto_295

    .line 615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->writeSysfs(ILjava/lang/String;)V

    .line 620
    goto/16 :goto_295

    .line 605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkResourceExist(I)Z

    move-result v1

    .line 608
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 610
    goto/16 :goto_295

    .line 595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkHintExist(I)Z

    move-result v1

    .line 598
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 600
    goto/16 :goto_295

    .line 583
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 585
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedFrequency(II)[I

    move-result-object v2

    .line 588
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 590
    goto/16 :goto_295

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :sswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 575
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->release(II)V

    .line 578
    goto/16 :goto_295

    .line 557
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 559
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 561
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 565
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 566
    .local v16, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/ICustomFrequencyManager$Stub;->acquire(IILjava/lang/String;I[I)V

    .line 568
    goto/16 :goto_295

    .line 545
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[I
    :sswitch_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestGpis(III)V

    .line 552
    goto/16 :goto_295

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setFrozenTime(I)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_295

    .line 522
    .end local v0    # "_arg0":I
    :sswitch_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 526
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v3

    .line 529
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    goto/16 :goto_295

    .line 510
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 514
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 515
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTid(III)V

    .line 517
    goto/16 :goto_295

    .line 498
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 503
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTime(IIJ)V

    .line 505
    goto/16 :goto_295

    .line 488
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :sswitch_171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 489
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->removeDvfsLockAllowedUid(I)Z

    move-result v1

    .line 491
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_295

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 479
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->addDvfsLockAllowedUid(I)I

    move-result v1

    .line 481
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    goto/16 :goto_295

    .line 466
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 469
    .local v1, "_arg1":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    goto/16 :goto_295

    .line 456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_1af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 457
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;

    move-result-object v1

    .line 459
    .local v1, "_result":Landroid/os/CpuTrackerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 461
    goto/16 :goto_295

    .line 449
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Landroid/os/CpuTrackerInfo;
    :sswitch_1c2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->unsetGameTouchParam()V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_295

    .line 437
    :sswitch_1ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_295

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 429
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_295

    .line 420
    .end local v0    # "_arg0":Z
    :sswitch_1f0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v0

    .line 421
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    goto/16 :goto_295

    .line 412
    .end local v0    # "_result":I
    :sswitch_1fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_295

    .line 403
    .end local v0    # "_arg0":I
    :sswitch_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 404
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_295

    .line 393
    .end local v0    # "_arg0":Z
    :sswitch_21a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 396
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    goto :goto_295

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_22c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 384
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    .line 386
    .local v3, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 388
    goto :goto_295

    .line 369
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[F
    :sswitch_246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getSsrmStatus(I)I

    move-result v1

    .line 372
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto :goto_295

    .line 359
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    goto :goto_295

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto :goto_295

    .line 339
    .end local v0    # "_arg0":I
    :sswitch_275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 342
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_295

    .line 330
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    nop

    .line 684
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_295
    return v10

    :pswitch_data_296
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :sswitch_data_29c
    .sparse-switch
        0xd -> :sswitch_287
        0xe -> :sswitch_275
        0xf -> :sswitch_267
        0x30 -> :sswitch_258
        0x32 -> :sswitch_246
        0x33 -> :sswitch_22c
        0x40 -> :sswitch_21a
        0x49 -> :sswitch_20b
        0x4a -> :sswitch_1fc
        0x4b -> :sswitch_1f0
        0x4c -> :sswitch_1e1
        0x4d -> :sswitch_1ca
        0x4e -> :sswitch_1c2
        0x52 -> :sswitch_1af
        0x53 -> :sswitch_197
        0x54 -> :sswitch_184
        0x55 -> :sswitch_171
        0x56 -> :sswitch_15d
        0x57 -> :sswitch_149
        0x58 -> :sswitch_12e
        0x59 -> :sswitch_11f
        0x5c -> :sswitch_10b
        0x65 -> :sswitch_e7
        0x66 -> :sswitch_d7
        0x67 -> :sswitch_c0
        0x68 -> :sswitch_ad
        0x69 -> :sswitch_9a
        0x6a -> :sswitch_8a
        0x6b -> :sswitch_77
        0x6c -> :sswitch_64
        0x6d -> :sswitch_4d
        0x6e -> :sswitch_45
        0x6f -> :sswitch_36
        0x70 -> :sswitch_27
    .end sparse-switch
.end method
