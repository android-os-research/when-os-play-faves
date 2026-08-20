.class public abstract Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;
.super Landroid/os/Binder;
.source "ISamsungDeviceHealthManager.java"

# interfaces
.implements Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireGameSdkMaxlock:I = 0xb

.field static final blacklist TRANSACTION_acquireSiop:I = 0x27

.field static final blacklist TRANSACTION_addHeavyLoadApps:I = 0x2e

.field static final blacklist TRANSACTION_addLowModeApps:I = 0x30

.field static final blacklist TRANSACTION_addLowRefreshRateApps:I = 0x32

.field static final blacklist TRANSACTION_destroyGameSdkMaxlock:I = 0xd

.field static final blacklist TRANSACTION_getActiveSensorList:I = 0x2b

.field static final blacklist TRANSACTION_getBatteryEventHistory:I = 0x19

.field static final blacklist TRANSACTION_getBatteryStats:I = 0xf

.field static final blacklist TRANSACTION_getCoolingDevices:I = 0x14

.field static final blacklist TRANSACTION_getGameSiopInfo:I = 0x24

.field static final blacklist TRANSACTION_getHeavyLoadApps:I = 0x2f

.field static final blacklist TRANSACTION_getLRTemperature:I = 0xe

.field static final blacklist TRANSACTION_getLowModeApps:I = 0x31

.field static final blacklist TRANSACTION_getLowRefreshRateApps:I = 0x33

.field static final blacklist TRANSACTION_getNetworkUsageStats:I = 0x1d

.field static final blacklist TRANSACTION_getOverheatReason:I = 0x2a

.field static final blacklist TRANSACTION_getProcessUsageStats:I = 0x1c

.field static final blacklist TRANSACTION_getRUT:I = 0x13

.field static final blacklist TRANSACTION_getRemainingUsageTime:I = 0x6

.field static final blacklist TRANSACTION_getRemainingUsageTimeWithSettings:I = 0x7

.field static final blacklist TRANSACTION_getSsrmStatus:I = 0x9

.field static final blacklist TRANSACTION_getSupportedHistoryTypes:I = 0x1a

.field static final blacklist TRANSACTION_getSupportedThermalThrottlingDelta:I = 0x21

.field static final blacklist TRANSACTION_getTemperature:I = 0x17

.field static final blacklist TRANSACTION_getTemperatures:I = 0x15

.field static final blacklist TRANSACTION_getThermalControlFlag:I = 0x2d

.field static final blacklist TRANSACTION_getThermalStats:I = 0x1b

.field static final blacklist TRANSACTION_getThermalThrottlingDelta:I = 0x20

.field static final blacklist TRANSACTION_initGameSdkMaxlock:I = 0xa

.field static final blacklist TRANSACTION_initializeSiopScenario:I = 0x26

.field static final blacklist TRANSACTION_isAIDAllowed:I = 0x12

.field static final blacklist TRANSACTION_isDownLoadingForUid:I = 0x10

.field static final blacklist TRANSACTION_isGameSupportLRP:I = 0x11

.field static final blacklist TRANSACTION_isZLAAllowed:I = 0x18

.field static final blacklist TRANSACTION_logAction:I = 0x1

.field static final blacklist TRANSACTION_logActionWithPkg:I = 0x2

.field static final blacklist TRANSACTION_logActionWithSource:I = 0x3

.field static final blacklist TRANSACTION_logAnomaly:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x16

.field static final blacklist TRANSACTION_releaseGameSdkMaxlock:I = 0xc

.field static final blacklist TRANSACTION_releaseSiop:I = 0x28

.field static final blacklist TRANSACTION_sendCommand:I = 0x5

.field static final blacklist TRANSACTION_setAnomalyConfig:I = 0x25

.field static final blacklist TRANSACTION_setThermalControlFlag:I = 0x2c

.field static final blacklist TRANSACTION_setThermalThrottlingDelta:I = 0x1e

.field static final blacklist TRANSACTION_setThermalThrottlingDeltaWithPackageName:I = 0x1f

.field static final blacklist TRANSACTION_supportVRTemperaturesInformation:I = 0x8

.field static final blacklist TRANSACTION_terminateSiopScenario:I = 0x29

.field static final blacklist TRANSACTION_updateGameSdkOperation:I = 0x23

.field static final blacklist TRANSACTION_updateSpaOperation:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 214
    const-string v0, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 222
    if-nez p0, :cond_4

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_4
    const-string v0, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 226
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_14

    .line 227
    move-object v1, v0

    check-cast v1, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-object v1

    .line 229
    :cond_14
    new-instance v1, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 238
    packed-switch p0, :pswitch_data_aa

    .line 446
    const/4 v0, 0x0

    return-object v0

    .line 442
    :pswitch_5
    const-string v0, "getLowRefreshRateApps"

    return-object v0

    .line 438
    :pswitch_8
    const-string v0, "addLowRefreshRateApps"

    return-object v0

    .line 434
    :pswitch_b
    const-string v0, "getLowModeApps"

    return-object v0

    .line 430
    :pswitch_e
    const-string v0, "addLowModeApps"

    return-object v0

    .line 426
    :pswitch_11
    const-string v0, "getHeavyLoadApps"

    return-object v0

    .line 422
    :pswitch_14
    const-string v0, "addHeavyLoadApps"

    return-object v0

    .line 418
    :pswitch_17
    const-string v0, "getThermalControlFlag"

    return-object v0

    .line 414
    :pswitch_1a
    const-string/jumbo v0, "setThermalControlFlag"

    return-object v0

    .line 410
    :pswitch_1e
    const-string v0, "getActiveSensorList"

    return-object v0

    .line 406
    :pswitch_21
    const-string v0, "getOverheatReason"

    return-object v0

    .line 402
    :pswitch_24
    const-string/jumbo v0, "terminateSiopScenario"

    return-object v0

    .line 398
    :pswitch_28
    const-string/jumbo v0, "releaseSiop"

    return-object v0

    .line 394
    :pswitch_2c
    const-string v0, "acquireSiop"

    return-object v0

    .line 390
    :pswitch_2f
    const-string v0, "initializeSiopScenario"

    return-object v0

    .line 386
    :pswitch_32
    const-string/jumbo v0, "setAnomalyConfig"

    return-object v0

    .line 382
    :pswitch_36
    const-string v0, "getGameSiopInfo"

    return-object v0

    .line 378
    :pswitch_39
    const-string/jumbo v0, "updateGameSdkOperation"

    return-object v0

    .line 374
    :pswitch_3d
    const-string/jumbo v0, "updateSpaOperation"

    return-object v0

    .line 370
    :pswitch_41
    const-string v0, "getSupportedThermalThrottlingDelta"

    return-object v0

    .line 366
    :pswitch_44
    const-string v0, "getThermalThrottlingDelta"

    return-object v0

    .line 362
    :pswitch_47
    const-string/jumbo v0, "setThermalThrottlingDeltaWithPackageName"

    return-object v0

    .line 358
    :pswitch_4b
    const-string/jumbo v0, "setThermalThrottlingDelta"

    return-object v0

    .line 354
    :pswitch_4f
    const-string v0, "getNetworkUsageStats"

    return-object v0

    .line 350
    :pswitch_52
    const-string v0, "getProcessUsageStats"

    return-object v0

    .line 346
    :pswitch_55
    const-string v0, "getThermalStats"

    return-object v0

    .line 342
    :pswitch_58
    const-string v0, "getSupportedHistoryTypes"

    return-object v0

    .line 338
    :pswitch_5b
    const-string v0, "getBatteryEventHistory"

    return-object v0

    .line 334
    :pswitch_5e
    const-string v0, "isZLAAllowed"

    return-object v0

    .line 330
    :pswitch_61
    const-string v0, "getTemperature"

    return-object v0

    .line 326
    :pswitch_64
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 322
    :pswitch_68
    const-string v0, "getTemperatures"

    return-object v0

    .line 318
    :pswitch_6b
    const-string v0, "getCoolingDevices"

    return-object v0

    .line 314
    :pswitch_6e
    const-string v0, "getRUT"

    return-object v0

    .line 310
    :pswitch_71
    const-string v0, "isAIDAllowed"

    return-object v0

    .line 306
    :pswitch_74
    const-string v0, "isGameSupportLRP"

    return-object v0

    .line 302
    :pswitch_77
    const-string v0, "isDownLoadingForUid"

    return-object v0

    .line 298
    :pswitch_7a
    const-string v0, "getBatteryStats"

    return-object v0

    .line 294
    :pswitch_7d
    const-string v0, "getLRTemperature"

    return-object v0

    .line 290
    :pswitch_80
    const-string v0, "destroyGameSdkMaxlock"

    return-object v0

    .line 286
    :pswitch_83
    const-string/jumbo v0, "releaseGameSdkMaxlock"

    return-object v0

    .line 282
    :pswitch_87
    const-string v0, "acquireGameSdkMaxlock"

    return-object v0

    .line 278
    :pswitch_8a
    const-string v0, "initGameSdkMaxlock"

    return-object v0

    .line 274
    :pswitch_8d
    const-string v0, "getSsrmStatus"

    return-object v0

    .line 270
    :pswitch_90
    const-string/jumbo v0, "supportVRTemperaturesInformation"

    return-object v0

    .line 266
    :pswitch_94
    const-string v0, "getRemainingUsageTimeWithSettings"

    return-object v0

    .line 262
    :pswitch_97
    const-string v0, "getRemainingUsageTime"

    return-object v0

    .line 258
    :pswitch_9a
    const-string/jumbo v0, "sendCommand"

    return-object v0

    .line 254
    :pswitch_9e
    const-string v0, "logAnomaly"

    return-object v0

    .line 250
    :pswitch_a1
    const-string v0, "logActionWithSource"

    return-object v0

    .line 246
    :pswitch_a4
    const-string v0, "logActionWithPkg"

    return-object v0

    .line 242
    :pswitch_a7
    const-string v0, "logAction"

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
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

    .line 233
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1933
    const/16 v0, 0x32

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 453
    invoke-static {p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 457
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    .line 458
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 459
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    :cond_15
    packed-switch v8, :pswitch_data_3ca

    .line 469
    packed-switch v8, :pswitch_data_3d0

    .line 975
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 465
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    return v12

    .line 968
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLowRefreshRateApps()Ljava/util/List;

    move-result-object v0

    .line 969
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 971
    goto/16 :goto_3c8

    .line 959
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 960
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addLowRefreshRateApps(Ljava/util/List;)Z

    move-result v1

    .line 962
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 964
    goto/16 :goto_3c8

    .line 951
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLowModeApps()Ljava/util/List;

    move-result-object v0

    .line 952
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 954
    goto/16 :goto_3c8

    .line 942
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 943
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addLowModeApps(Ljava/util/List;)Z

    move-result v1

    .line 945
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 947
    goto/16 :goto_3c8

    .line 934
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getHeavyLoadApps()Ljava/util/List;

    move-result-object v0

    .line 935
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 937
    goto/16 :goto_3c8

    .line 925
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 926
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addHeavyLoadApps(Ljava/util/List;)Z

    move-result v1

    .line 928
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 930
    goto/16 :goto_3c8

    .line 917
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    :pswitch_81
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalControlFlag()I

    move-result v0

    .line 918
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    goto/16 :goto_3c8

    .line 908
    .end local v0    # "_result":I
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalControlFlag(I)Z

    move-result v1

    .line 911
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    goto/16 :goto_3c8

    .line 900
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    goto/16 :goto_3c8

    .line 889
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 891
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 892
    .local v2, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getOverheatReason(JJ)Ljava/util/List;

    move-result-object v4

    .line 894
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 896
    goto/16 :goto_3c8

    .line 880
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->terminateSiopScenario(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_3c8

    .line 871
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 872
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->releaseSiop(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_3c8

    .line 862
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->acquireSiop(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_3c8

    .line 851
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 853
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 854
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->initializeSiopScenario(Landroid/os/Bundle;Landroid/os/IBinder;)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    goto/16 :goto_3c8

    .line 841
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_107
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 842
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setAnomalyConfig(Landroid/app/PendingIntent;)Z

    move-result v1

    .line 844
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 846
    goto/16 :goto_3c8

    .line 833
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_result":Z
    :pswitch_11e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getGameSiopInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 834
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 836
    goto/16 :goto_3c8

    .line 823
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_12a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 825
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 826
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateGameSdkOperation(ZLandroid/os/IBinder;)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_3c8

    .line 812
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 814
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 815
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateSpaOperation(ZLandroid/os/IBinder;)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    goto/16 :goto_3c8

    .line 804
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_150
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSupportedThermalThrottlingDelta()I

    move-result v0

    .line 805
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    goto/16 :goto_3c8

    .line 797
    .end local v0    # "_result":I
    :pswitch_15c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalThrottlingDelta()I

    move-result v0

    .line 798
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    goto/16 :goto_3c8

    .line 786
    .end local v0    # "_result":I
    :pswitch_168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 789
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalThrottlingDeltaWithPackageName(Ljava/lang/String;I)Z

    move-result v2

    .line 791
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 793
    goto/16 :goto_3c8

    .line 776
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_17f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 777
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalThrottlingDelta(I)Z

    move-result v1

    .line 779
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 781
    goto/16 :goto_3c8

    .line 764
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 766
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 767
    .local v2, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getNetworkUsageStats(JJ)Ljava/util/List;

    move-result-object v4

    .line 769
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 771
    goto/16 :goto_3c8

    .line 752
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats;>;"
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 754
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 755
    .restart local v2    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getProcessUsageStats(JJ)Ljava/util/List;

    move-result-object v4

    .line 757
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 759
    goto/16 :goto_3c8

    .line 740
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats;>;"
    :pswitch_1c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 742
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 743
    .restart local v2    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalStats(JJ)Ljava/util/List;

    move-result-object v4

    .line 745
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 747
    goto/16 :goto_3c8

    .line 732
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemThermalStats;>;"
    :pswitch_1d7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSupportedHistoryTypes()I

    move-result v0

    .line 733
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    goto/16 :goto_3c8

    .line 719
    .end local v0    # "_result":I
    :pswitch_1e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 721
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 723
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 724
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v15

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getBatteryEventHistory(JJI)Ljava/util/List;

    move-result-object v0

    .line 726
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 728
    goto/16 :goto_3c8

    .line 709
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryEventHistory;>;"
    .end local v6    # "_arg2":I
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":J
    :pswitch_203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isZLAAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 712
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 714
    goto/16 :goto_3c8

    .line 699
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 700
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getTemperature(I)I

    move-result v1

    .line 702
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    goto/16 :goto_3c8

    .line 690
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v0

    .line 691
    .local v0, "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->registerCallback(Landroid/os/IThermalEventListener;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_3c8

    .line 682
    .end local v0    # "_arg0":Landroid/os/IThermalEventListener;
    :pswitch_23c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getTemperatures()Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 685
    goto/16 :goto_3c8

    .line 675
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :pswitch_248
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCoolingDevices()Ljava/util/List;

    move-result-object v0

    .line 676
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 678
    goto/16 :goto_3c8

    .line 664
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    :pswitch_254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRUT(ILjava/lang/String;)I

    move-result v2

    .line 669
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    goto/16 :goto_3c8

    .line 654
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_26b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isAIDAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 657
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    goto/16 :goto_3c8

    .line 646
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_27e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isGameSupportLRP()Z

    move-result v0

    .line 647
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 649
    goto/16 :goto_3c8

    .line 637
    .end local v0    # "_result":Z
    :pswitch_28a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isDownLoadingForUid(I)Z

    move-result v1

    .line 640
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    goto/16 :goto_3c8

    .line 621
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_29d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 623
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 625
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 627
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 628
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    move-object/from16 v0, p0

    move v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v0

    .line 630
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 632
    goto/16 :goto_3c8

    .line 613
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Z
    :pswitch_2c4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLRTemperature()I

    move-result v0

    .line 614
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    goto/16 :goto_3c8

    .line 607
    .end local v0    # "_result":I
    :pswitch_2d0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->destroyGameSdkMaxlock()V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_3c8

    .line 601
    :pswitch_2d8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->releaseGameSdkMaxlock()V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_3c8

    .line 591
    :pswitch_2e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 593
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 594
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->acquireGameSdkMaxlock(II)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_3c8

    .line 580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 582
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 583
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->initGameSdkMaxlock(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_3c8

    .line 570
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSsrmStatus(I)I

    move-result v1

    .line 573
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    goto/16 :goto_3c8

    .line 556
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    .line 563
    .local v3, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 565
    goto/16 :goto_3c8

    .line 544
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[F
    :pswitch_334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 546
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRemainingUsageTimeWithSettings(II)I

    move-result v2

    .line 549
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    goto/16 :goto_3c8

    .line 534
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_34b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRemainingUsageTime(I)I

    move-result v1

    .line 537
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    goto :goto_3c8

    .line 524
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_35d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    goto :goto_3c8

    .line 515
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_36c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 516
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logAnomaly(Landroid/os/Bundle;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto :goto_3c8

    .line 502
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_37e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 506
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logActionWithSource(Ljava/lang/String;II)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    goto :goto_3c8

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 491
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logActionWithPkg(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto :goto_3c8

    .line 474
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_3b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 479
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logAction(Ljava/lang/String;ILjava/util/List;)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    nop

    .line 978
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_3c8
    return v12

    nop

    :pswitch_data_3ca
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_3b0
        :pswitch_394
        :pswitch_37e
        :pswitch_36c
        :pswitch_35d
        :pswitch_34b
        :pswitch_334
        :pswitch_319
        :pswitch_306
        :pswitch_2f3
        :pswitch_2e0
        :pswitch_2d8
        :pswitch_2d0
        :pswitch_2c4
        :pswitch_29d
        :pswitch_28a
        :pswitch_27e
        :pswitch_26b
        :pswitch_254
        :pswitch_248
        :pswitch_23c
        :pswitch_229
        :pswitch_216
        :pswitch_203
        :pswitch_1e3
        :pswitch_1d7
        :pswitch_1c0
        :pswitch_1a9
        :pswitch_192
        :pswitch_17f
        :pswitch_168
        :pswitch_15c
        :pswitch_150
        :pswitch_13d
        :pswitch_12a
        :pswitch_11e
        :pswitch_107
        :pswitch_f0
        :pswitch_e1
        :pswitch_d2
        :pswitch_c3
        :pswitch_ac
        :pswitch_a0
        :pswitch_8d
        :pswitch_81
        :pswitch_6e
        :pswitch_62
        :pswitch_4f
        :pswitch_43
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
