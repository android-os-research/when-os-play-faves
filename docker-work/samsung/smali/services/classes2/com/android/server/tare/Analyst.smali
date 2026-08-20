.class public Lcom/android/server/tare/Analyst;
.super Ljava/lang/Object;
.source "Analyst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Analyst$Report;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final NUM_PERIODS_TO_RETAIN:I = 0x8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mPeriodIndex:I

.field public final mReports:[Lcom/android/server/tare/Analyst$Report;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Analyst;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_27

    const/4 v1, 0x3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sput-boolean v0, Lcom/android/server/tare/Analyst;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/tare/Analyst$Report;

    .line 94
    iput-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Reports:"

    .line 202
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "      Total Discharge"

    .line 204
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Profit (avg/action : avg/discharge)"

    const/16 v3, 0x2f

    .line 206
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loss (avg/action : avg/discharge)"

    .line 207
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Rewards (avg/reward : avg/discharge)"

    .line 208
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "+Regs (avg/reg : avg/discharge)"

    .line 209
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-Regs (avg/reg : avg/discharge)"

    .line 210
    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v2, 0x0

    move v4, v2

    :goto_45
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1c9

    .line 213
    iget v6, v0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    rem-int/2addr v6, v5

    .line 214
    iget-object v5, v0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v5, v5, v6

    if-nez v5, :cond_57

    move v6, v2

    goto/16 :goto_1c4

    :cond_57
    const-string/jumbo v6, "t-"

    .line 218
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, ":  "

    .line 220
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v0, v6, v7}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const/4 v7, 0x2

    const/4 v8, 0x3

    const-string v9, "%s (%s : %s)"

    const/4 v10, 0x1

    const-string v11, "N/A"

    if-lez v6, :cond_b3

    .line 223
    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v6, :cond_8c

    .line 224
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    int-to-long v14, v6

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_8d

    :cond_8c
    move-object v6, v11

    :goto_8d
    new-array v12, v8, [Ljava/lang/Object;

    .line 226
    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 227
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget v15, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    int-to-long v2, v15

    div-long/2addr v13, v2

    .line 228
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v10

    aput-object v6, v12, v7

    .line 226
    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ba

    .line 232
    :cond_b3
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    :goto_ba
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    if-lez v2, :cond_f3

    .line 235
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_cb

    .line 236
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_cc

    :cond_cb
    move-object v2, v11

    :goto_cc
    new-array v3, v8, [Ljava/lang/Object;

    .line 238
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 239
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    .line 240
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    .line 238
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_fc

    :cond_f3
    const/16 v3, 0x2f

    .line 244
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    :goto_fc
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    if-lez v2, :cond_135

    .line 247
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_10d

    .line 248
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_10e

    :cond_10d
    move-object v2, v11

    :goto_10e
    new-array v3, v8, [Ljava/lang/Object;

    .line 250
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 251
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    .line 252
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    .line 250
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13e

    :cond_135
    const/16 v3, 0x2f

    .line 256
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 258
    :goto_13e
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    if-lez v2, :cond_177

    .line 259
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_14f

    .line 260
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_150

    :cond_14f
    move-object v2, v11

    :goto_150
    new-array v3, v8, [Ljava/lang/Object;

    .line 263
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 264
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    .line 265
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    .line 263
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_180

    :cond_177
    const/16 v3, 0x2f

    .line 270
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 272
    :goto_180
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    if-lez v2, :cond_1b7

    .line 273
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_190

    .line 274
    iget-wide v11, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    int-to-long v2, v2

    div-long/2addr v11, v2

    invoke-static {v11, v12}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v11

    :cond_190
    new-array v2, v8, [Ljava/lang/Object;

    .line 277
    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 278
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget v3, v5, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    int-to-long v14, v3

    div-long/2addr v12, v14

    .line 279
    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v11, v2, v7

    .line 277
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c1

    :cond_1b7
    const/16 v3, 0x2f

    const/4 v6, 0x0

    .line 284
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    :goto_1c1
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1c4
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto/16 :goto_45

    .line 288
    :cond_1c9
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getReports()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_8
    if-gt v2, v1, :cond_1a

    .line 101
    iget v3, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    .line 102
    iget-object v4, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v3, v4, v3

    if-eqz v3, :cond_17

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    return-object v0
.end method

.method public loadReports(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    :goto_d
    const/16 v1, 0x8

    if-ge v2, v1, :cond_26

    if-ge v2, v0, :cond_1e

    .line 119
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/Analyst$Report;

    aput-object v3, v1, v2

    goto :goto_23

    .line 121
    :cond_1e
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-void
.end method

.method public noteBatteryLevelChange(I)V
    .registers 5

    const/16 v0, 0x64

    if-ne p1, v0, :cond_20

    .line 127
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_20

    iget v2, v2, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge v2, p1, :cond_20

    add-int/lit8 v1, v1, 0x1

    .line 129
    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    .line 130
    aget-object v0, v0, v1

    if-eqz v0, :cond_20

    .line 132
    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V

    .line 133
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void

    .line 138
    :cond_20
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_36

    .line 139
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aput-object v0, v1, p0

    .line 141
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void

    .line 146
    :cond_36
    iget p0, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge p1, p0, :cond_40

    .line 147
    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    sub-int/2addr p0, p1

    add-int/2addr v1, p0

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 149
    :cond_40
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void
.end method

.method public noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 8

    .line 153
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_f

    .line 154
    new-instance v2, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v2}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    aput-object v2, v0, v1

    .line 156
    :cond_f
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object p0, v0, p0

    .line 157
    iget v0, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_73

    if-eqz v0, :cond_51

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_28

    goto :goto_84

    .line 161
    :cond_28
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v2, v0

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_3f

    .line 162
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    neg-long v0, v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 163
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    goto :goto_84

    :cond_3f
    neg-long v2, v0

    cmp-long p1, v2, v4

    if-gez p1, :cond_84

    .line 165
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 166
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    goto :goto_84

    .line 170
    :cond_51
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_63

    .line 171
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 172
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    goto :goto_84

    :cond_63
    cmp-long p1, v0, v2

    if-gez p1, :cond_84

    .line 174
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 175
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    goto :goto_84

    .line 179
    :cond_73
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_84

    .line 180
    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 181
    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    :cond_84
    :goto_84
    return-void
.end method

.method public final padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p0

    const/4 p0, 0x2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tearDown()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 188
    :goto_2
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    const/4 v3, 0x0

    .line 189
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    :cond_d
    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    return-void
.end method
