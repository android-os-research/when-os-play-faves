.class public Lcom/android/server/am/MARsPackageInfo;
.super Ljava/lang/Object;
.source "MARsPackageInfo.java"


# static fields
.field public static final FLAG_OPTION_RESTRICT_ALLOW_ALARM:I = 0x2

.field public static final FLAG_OPTION_RESTRICT_ALLOW_RAGEBIRD:I = 0x4

.field public static final FLAG_OPTION_RESTRICT_BLOCK_ALARM:I = 0x1

.field public static TAG:Ljava/lang/String; = "MARsPackageInfo"


# instance fields
.field public BatteryUsage:D

.field public appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public checkJobRunningCount:I

.field public curLevel:I

.field public disableReason:I

.field public disableResetTime:J

.field public disableType:I

.field public fasReason:Ljava/lang/String;

.field public fasType:I

.field public freezedTimeForLevelUp:[J

.field public hasAppIcon:Z

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public isInUsageStats:Z

.field public isRemovedPkg:Z

.field public isSCPMTarget:Z

.field public lastUsedTime:J

.field public maxLevel:I

.field public mpsm:I

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public nextKillTimeForLongRunningProcess:J

.field public optionFlag:I

.field public packageType:I

.field public preBatteryUsage:D

.field public resetTime:J

.field public sbike:I

.field public sharedUidName:Ljava/lang/String;

.field public state:I

.field public uds:I

.field public uid:I

.field public unfreezedCount:I

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 27

    move-object/from16 v1, p0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v4

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToState(Ljava/lang/String;)I

    move-result v5

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    .line 98
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_30} :catch_107

    move v13, v0

    goto :goto_33

    :cond_32
    move v13, v9

    .line 99
    :goto_33
    :try_start_33
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_37} :catch_f9

    .line 100
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_45} :catch_e9

    const/4 v15, 0x1

    if-ne v0, v15, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v15, 0x0

    .line 101
    :goto_4a
    :try_start_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_58} :catch_e3

    goto :goto_5b

    :cond_59
    const-wide/16 v16, 0x0

    .line 102
    :goto_5b
    :try_start_5b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_69} :catch_dd

    move/from16 v18, v0

    goto :goto_6e

    :cond_6c
    const/16 v18, 0x0

    .line 103
    :goto_6e
    :try_start_6e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_7c} :catch_d7

    move v7, v0

    goto :goto_7f

    :cond_7e
    const/4 v7, 0x0

    :goto_7f
    if-eqz v15, :cond_8f

    .line 104
    :try_start_81
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x4

    if-eq v7, v0, :cond_8f

    const/4 v7, 0x3

    .line 106
    :cond_8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 107
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_ab} :catch_d1

    goto :goto_ae

    :cond_ac
    const-wide/16 v19, 0x0

    .line 108
    :goto_ae
    :try_start_ae
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_bc} :catch_cb

    goto :goto_bf

    :cond_bd
    const-wide/16 v11, 0x0

    :goto_bf
    move/from16 v0, v18

    move-wide/from16 v21, v19

    move-wide/from16 v23, v11

    move-wide/from16 v10, v16

    move-wide/from16 v16, v23

    goto/16 :goto_139

    :catch_cb
    move-exception v0

    move-object v11, v0

    move v0, v7

    move-wide/from16 v7, v16

    goto :goto_f3

    :catch_d1
    move-exception v0

    move-object v11, v0

    move v0, v7

    move-wide/from16 v7, v16

    goto :goto_f1

    :catch_d7
    move-exception v0

    move-object v11, v0

    move-wide/from16 v7, v16

    const/4 v0, 0x0

    goto :goto_f1

    :catch_dd
    move-exception v0

    move-object v11, v0

    move-wide/from16 v7, v16

    const/4 v0, 0x0

    goto :goto_ef

    :catch_e3
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    goto :goto_ef

    :catch_e9
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    :goto_ef
    const/16 v18, 0x0

    :goto_f1
    const-wide/16 v19, 0x0

    :goto_f3
    move/from16 v23, v13

    move v13, v9

    move/from16 v9, v23

    goto :goto_113

    :catch_f9
    move-exception v0

    move-object v11, v0

    move v14, v9

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move v9, v13

    move v13, v14

    goto :goto_113

    :catch_107
    move-exception v0

    move-object v11, v0

    move v13, v9

    move v14, v13

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    .line 110
    :goto_113
    sget-object v12, Lcom/android/server/am/MARsPackageInfo;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v0

    const-string v0, "NumberFormatException !"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v10, v7

    move/from16 v0, v18

    move-wide/from16 v21, v19

    const-wide/16 v16, 0x0

    move/from16 v7, p1

    move/from16 v23, v13

    move v13, v9

    move/from16 v9, v23

    .line 114
    :goto_139
    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 115
    iput v13, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 116
    iput v14, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 117
    iput-boolean v15, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    const/4 v2, 0x0

    .line 118
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 119
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 120
    iput-object v3, v1, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 121
    iput v4, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 122
    iput v5, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 123
    iput-wide v10, v1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    const-wide/32 v2, -0xdbba0

    .line 124
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 125
    iput v0, v1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 126
    iput v7, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 127
    iput v9, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    move-wide/from16 v2, v21

    .line 128
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    move-wide/from16 v11, v16

    .line 129
    iput-wide v11, v1, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    const/4 v2, 0x0

    .line 130
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    const/4 v0, 0x0

    .line 131
    iput-object v0, v1, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 132
    iput v6, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 134
    iput-object v0, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    .line 135
    iput v2, v1, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    .line 136
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    .line 137
    iput v2, v1, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 74
    iput p3, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    return-void
.end method


# virtual methods
.method public getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object p0
.end method

.method public getBatteryUsage()D
    .registers 3

    .line 309
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    return-wide v0
.end method

.method public getCheckJobRunningCount()I
    .registers 1

    .line 405
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    return p0
.end method

.method public getCurLevel()I
    .registers 1

    .line 285
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    return p0
.end method

.method public getDisableReason()I
    .registers 1

    .line 357
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return p0
.end method

.method public getDisableResetTime()J
    .registers 3

    .line 301
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    return-wide v0
.end method

.method public getDisableType()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    return p0
.end method

.method public getDisabled()Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    return p0
.end method

.method public getFASEnabled()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    return p0
.end method

.method public getFasReason()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    return-object p0
.end method

.method public getFasType()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    return p0
.end method

.method public getHasAppIcon()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    return p0
.end method

.method public getIsInRestrictedBucket()Z
    .registers 1

    .line 213
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    return p0
.end method

.method public getIsInUsageStats()Z
    .registers 1

    .line 159
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    return p0
.end method

.method public getIsRemovedPkg()Z
    .registers 1

    .line 341
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    return p0
.end method

.method public getIsSCPMTarget()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    return p0
.end method

.method public getLastUsedTime()J
    .registers 3

    .line 261
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    return-wide v0
.end method

.method public getMaxLevel()I
    .registers 1

    .line 277
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    return p0
.end method

.method public getMpsm()I
    .registers 1

    .line 381
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->mpsm:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedUpdateTime()Z
    .registers 1

    .line 325
    iget-boolean p0, p0, Lcom/android/server/am/MARsPackageInfo;->needUpdateTime:Z

    return p0
.end method

.method public getPackageType()I
    .registers 1

    .line 269
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    return p0
.end method

.method public getPreBatteryUsage()D
    .registers 3

    .line 317
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    return-wide v0
.end method

.method public getResetTime()J
    .registers 3

    .line 253
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    return-wide v0
.end method

.method public getSBike()I
    .registers 1

    .line 373
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    return p0
.end method

.method public getSharedUidName()Ljava/lang/String;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    return p0
.end method

.method public getUds()I
    .registers 1

    .line 365
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->uds:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 189
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    return p0
.end method

.method public getunfreezedCount()I
    .registers 1

    .line 397
    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    return p0
.end method

.method public initOptionFlag()V
    .registers 5

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 180
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v2, ".cts."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_10
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 181
    :cond_1e
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    goto :goto_39

    .line 182
    :cond_25
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 183
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 184
    :cond_39
    :goto_39
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 185
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    :cond_4d
    return-void
.end method

.method public setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-void
.end method

.method public setBatteryUsage(D)V
    .registers 3

    .line 313
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    return-void
.end method

.method public setCheckJobRunningCount(I)V
    .registers 2

    .line 409
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    return-void
.end method

.method public setCurLevel(I)V
    .registers 2

    .line 289
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    return-void
.end method

.method public setDisableReason(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return-void
.end method

.method public setDisableResetTime(J)V
    .registers 3

    .line 305
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    return-void
.end method

.method public setDisableType(I)V
    .registers 2

    .line 297
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    return-void
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 233
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    return-void
.end method

.method public setFASEnabled(Z)V
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    return-void
.end method

.method public setFasReason(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    return-void
.end method

.method public setFasType(I)V
    .registers 2

    .line 241
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    return-void
.end method

.method public setHasAppIcon(Z)V
    .registers 2

    .line 337
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    return-void
.end method

.method public setIsInRestrictedBucket(Z)V
    .registers 2

    .line 217
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    return-void
.end method

.method public setIsInUsageStats(Z)V
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    return-void
.end method

.method public setIsRemovedPkg(Z)V
    .registers 2

    .line 345
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    return-void
.end method

.method public setIsSCPMTarget(Z)V
    .registers 2

    .line 413
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    return-void
.end method

.method public setLastUsedTime(J)V
    .registers 3

    .line 265
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    return-void
.end method

.method public setMaxLevel(I)V
    .registers 2

    .line 281
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    return-void
.end method

.method public setMpsm(I)V
    .registers 2

    .line 385
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->mpsm:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 172
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    :cond_d
    return-void
.end method

.method public setNeedUpdateTime(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->needUpdateTime:Z

    return-void
.end method

.method public setPackageType(I)V
    .registers 2

    .line 273
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    return-void
.end method

.method public setPreBatteryUsage(D)V
    .registers 3

    .line 321
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    return-void
.end method

.method public setResetTime(J)V
    .registers 3

    .line 257
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    return-void
.end method

.method public setSBike(I)V
    .registers 2

    .line 377
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    return-void
.end method

.method public setSharedUidName(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 249
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    return-void
.end method

.method public setUds(I)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->uds:I

    return-void
.end method

.method public setUid(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    return-void
.end method

.method public setunfreezedCount(I)V
    .registers 2

    .line 401
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    return-void
.end method

.method public updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V
    .registers 6

    .line 141
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eq v0, v1, :cond_5c

    .line 143
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 144
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 145
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 146
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 147
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 148
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 150
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-le v0, v1, :cond_46

    move v1, v0

    goto :goto_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    :goto_46
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 151
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 152
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 153
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 154
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    .line 155
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    :cond_5c
    return-void
.end method
