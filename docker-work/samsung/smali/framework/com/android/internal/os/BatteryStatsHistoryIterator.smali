.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 3
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 38
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHistory;->startIteratingHistory()Z

    .line 40
    return-void
.end method

.method private static blacklist readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p0, "batteryLevelInt"    # I
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 293
    const/high16 v0, -0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 294
    const v0, 0x1ff8000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 295
    and-int/lit16 v0, p0, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 296
    return-void
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "index"    # I
    .param p3, "outTag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 268
    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p2, v1, :cond_7

    .line 269
    return v0

    .line 272
    :cond_7
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_26

    .line 273
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 274
    .local v0, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 275
    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 276
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 279
    .end local v0    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_3b

    .line 280
    :cond_26
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$HistoryTag;

    .line 281
    .local v1, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v1, :cond_34

    .line 282
    invoke-virtual {p3, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_39

    .line 284
    :cond_34
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 285
    iput v0, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 287
    :goto_39
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 289
    .end local v1    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :goto_3b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist next(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 9
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 47
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel(Landroid/os/BatteryStats$HistoryItem;)Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, "p":Landroid/os/Parcel;
    if-nez v0, :cond_f

    .line 49
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->finishIteratingHistory()V

    .line 50
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_f
    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 54
    .local v1, "lastRealtimeMs":J
    iget-wide v3, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 55
    .local v3, "lastWalltimeMs":J
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 56
    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2c

    iget-byte v5, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2c

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2c

    .line 58
    iget-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    iput-wide v5, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 60
    :cond_2c
    const/4 v5, 0x1

    return v5
.end method

.method blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 19
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "firstToken":I
    const v4, 0x1ffff

    and-int/2addr v4, v3

    .line 66
    .local v4, "deltaTimeToken":I
    const/4 v5, 0x0

    iput-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 67
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 73
    const/4 v7, 0x2

    const v8, 0x1fffd

    if-ge v4, v8, :cond_21

    .line 74
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_4a

    .line 75
    :cond_21
    if-ne v4, v8, :cond_27

    .line 76
    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void

    .line 79
    :cond_27
    const v8, 0x1fffe

    if-ne v4, v8, :cond_3c

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 81
    .local v8, "delta":I
    iget-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 82
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 84
    .end local v8    # "delta":I
    goto :goto_4a

    .line 85
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 87
    .local v8, "delta":J
    iget-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v10, v8

    iput-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 88
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v7

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 92
    .end local v8    # "delta":J
    :goto_4a
    const/high16 v8, 0x80000

    and-int/2addr v8, v3

    if-eqz v8, :cond_5c

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 94
    .local v8, "batteryLevelInt":I
    invoke-static {v8, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    .line 95
    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_5d

    .line 104
    .end local v8    # "batteryLevelInt":I
    :cond_5c
    const/4 v8, 0x0

    .line 110
    .restart local v8    # "batteryLevelInt":I
    :goto_5d
    const/high16 v9, 0x40000

    and-int/2addr v9, v3

    const v10, 0xffff

    if-eqz v9, :cond_b7

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 112
    .local v9, "CurrentNTemperatureInt":I
    shr-int/lit8 v11, v9, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    iput-byte v11, v2, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    .line 113
    shr-int/lit8 v11, v9, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    iput-byte v11, v2, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    .line 114
    and-int v11, v9, v10

    int-to-short v11, v11

    iput-short v11, v2, Landroid/os/BatteryStats$HistoryItem;->current:S

    .line 115
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v11, v6

    iput v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 122
    .local v11, "TemperatureInt2":I
    shr-int/lit8 v12, v11, 0x1d

    and-int/2addr v12, v6

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    .line 123
    shr-int/lit8 v12, v11, 0x1c

    and-int/2addr v12, v6

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    .line 124
    shr-int/lit8 v12, v11, 0x1b

    and-int/2addr v12, v6

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    .line 125
    shr-int/lit8 v12, v11, 0x1a

    and-int/2addr v12, v6

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    .line 126
    shr-int/lit8 v12, v11, 0x19

    and-int/2addr v12, v6

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    .line 127
    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    .line 128
    shr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    iput-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    .line 129
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v12, v6

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_b9

    .line 138
    .end local v9    # "CurrentNTemperatureInt":I
    .end local v11    # "TemperatureInt2":I
    :cond_b7
    const/4 v9, 0x0

    .line 139
    .restart local v9    # "CurrentNTemperatureInt":I
    const/4 v11, 0x0

    .line 143
    .restart local v11    # "TemperatureInt2":I
    :goto_b9
    const/high16 v12, 0x20000

    and-int/2addr v12, v3

    const v13, 0xffffff

    if-eqz v12, :cond_ec

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    .line 145
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v12, v6

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 150
    .local v12, "batterySecInfoInt":I
    shr-int/lit8 v14, v12, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    .line 151
    and-int v14, v12, v13

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    .line 152
    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v14, v6

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    .line 158
    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v14, v6

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_ed

    .line 162
    .end local v12    # "batterySecInfoInt":I
    :cond_ec
    const/4 v12, 0x0

    .line 166
    .restart local v12    # "batterySecInfoInt":I
    :goto_ed
    const/high16 v14, 0x100000

    and-int/2addr v14, v3

    const/high16 v15, -0x2000000

    if-eqz v14, :cond_12d

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 168
    .local v14, "stateInt":I
    and-int/2addr v15, v3

    and-int/2addr v13, v14

    or-int/2addr v13, v15

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 170
    shr-int/lit8 v13, v14, 0x1d

    and-int/lit8 v13, v13, 0x7

    int-to-byte v13, v13

    iput-byte v13, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 172
    shr-int/lit8 v13, v14, 0x1a

    and-int/lit8 v13, v13, 0x7

    shr-int/lit8 v15, v14, 0xe

    and-int/lit8 v15, v15, 0x8

    or-int/2addr v13, v15

    int-to-byte v13, v13

    iput-byte v13, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 178
    shr-int/lit8 v13, v14, 0x18

    and-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    iput-byte v13, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 180
    iget-byte v13, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v13, :pswitch_data_1cc

    goto :goto_127

    .line 188
    :pswitch_11d
    const/4 v7, 0x4

    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_127

    .line 185
    :pswitch_121
    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 186
    goto :goto_127

    .line 182
    :pswitch_124
    iput-byte v6, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 183
    nop

    .line 191
    :goto_127
    iget v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v6

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 200
    .end local v14    # "stateInt":I
    goto :goto_135

    .line 201
    :cond_12d
    and-int v7, v3, v15

    iget v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 205
    :goto_135
    const/high16 v7, 0x200000

    and-int/2addr v7, v3

    if-eqz v7, :cond_140

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 213
    :cond_140
    const/high16 v7, 0x400000

    and-int/2addr v7, v3

    const/4 v13, 0x0

    if-eqz v7, :cond_173

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 215
    .local v7, "indexes":I
    and-int v14, v7, v10

    .line 216
    .local v14, "wakeLockIndex":I
    shr-int/lit8 v15, v7, 0x10

    and-int/2addr v15, v10

    .line 217
    .local v15, "wakeReasonIndex":I
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v14, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 218
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_15e

    .line 220
    :cond_15c
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 222
    :goto_15e
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v15, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 223
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_16d

    .line 225
    :cond_16b
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 227
    :goto_16d
    iget v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 228
    .end local v7    # "indexes":I
    .end local v14    # "wakeLockIndex":I
    .end local v15    # "wakeReasonIndex":I
    goto :goto_177

    .line 229
    :cond_173
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 230
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 233
    :goto_177
    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_1a0

    .line 234
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 236
    .local v5, "codeAndIndex":I
    and-int v7, v5, v10

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 237
    shr-int/lit8 v7, v5, 0x10

    and-int/2addr v7, v10

    .line 238
    .local v7, "index":I
    iget-object v10, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v7, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_198

    .line 239
    iget-object v10, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_19a

    .line 241
    :cond_198
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 243
    :goto_19a
    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v6

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 249
    .end local v5    # "codeAndIndex":I
    .end local v7    # "index":I
    goto :goto_1a3

    .line 250
    :cond_1a0
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 253
    :goto_1a3
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_1b1

    .line 254
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 255
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v5, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_1b3

    .line 257
    :cond_1b1
    iput-object v13, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 260
    :goto_1b3
    const/high16 v5, 0x1000000

    and-int/2addr v5, v3

    if-eqz v5, :cond_1be

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 263
    :cond_1be
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 265
    return-void

    nop

    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_124
        :pswitch_121
        :pswitch_11d
    .end packed-switch
.end method
