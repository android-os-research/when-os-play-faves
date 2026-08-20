.class public Lcom/android/server/tare/AlarmManagerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "AlarmManagerEconomicPolicy.java"


# static fields
.field public static final ACTION_ALARM_CLOCK:I = 0x40000008

.field public static final ACTION_ALARM_NONWAKEUP_EXACT:I = 0x40000005

.field public static final ACTION_ALARM_NONWAKEUP_EXACT_ALLOW_WHILE_IDLE:I = 0x40000004

.field public static final ACTION_ALARM_NONWAKEUP_INEXACT:I = 0x40000007

.field public static final ACTION_ALARM_NONWAKEUP_INEXACT_ALLOW_WHILE_IDLE:I = 0x40000006

.field public static final ACTION_ALARM_WAKEUP_EXACT:I = 0x40000001

.field public static final ACTION_ALARM_WAKEUP_EXACT_ALLOW_WHILE_IDLE:I = 0x40000000

.field public static final ACTION_ALARM_WAKEUP_INEXACT:I = 0x40000003

.field public static final ACTION_ALARM_WAKEUP_INEXACT_ALLOW_WHILE_IDLE:I = 0x40000002

.field public static final COST_MODIFIERS:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mHardSatiatedConsumptionLimit:J

.field public mInitialSatiatedConsumptionLimit:J

.field public final mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

.field public mMaxSatiatedBalance:J

.field public mMinSatiatedBalanceExempted:J

.field public mMinSatiatedBalanceOther:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mRewards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 138
    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-void

    :array_22
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 4

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 151
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 159
    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    const-string p1, ""

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "Min satiated balances:"

    .line 386
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 389
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 390
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 391
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Consumption limits: ["

    .line 392
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", "

    .line 394
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    .line 396
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Actions:"

    .line 399
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 401
    :goto_66
    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    .line 402
    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 404
    :cond_7c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 406
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Rewards:"

    .line 407
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 409
    :goto_8a
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a0

    .line 410
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 412
    :cond_a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0
.end method

.method public getCostModifiers()[I
    .registers 1

    .line 203
    sget-object p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-object p0
.end method

.method public getHardSatiatedConsumptionLimit()J
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 174
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide p0

    .line 177
    :cond_b
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide p0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0
.end method

.method public final loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .registers 20

    move-object/from16 v7, p0

    .line 220
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 224
    :try_start_c
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    .line 226
    sget-object v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_1c
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const-string v4, "am_min_satiated_balance_exempted"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 232
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    const-string v4, "am_min_satiated_balance_other_app"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 235
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_SATIATED_BALANCE_CAKES:J

    const-string v4, "am_max_satiated_balance"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 238
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "am_initial_consumption_limit"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 240
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_HARD_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "am_hard_consumption_limit"

    .line 241
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    .line 240
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    .line 244
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_base_price"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    .line 248
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const/high16 v14, 0x40000000    # 2.0f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_ctp"

    .line 250
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 248
    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000001    # 2.0000002f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000001    # 2.0000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_exact_wakeup_ctp"

    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_exact_wakeup_base_price"

    .line 259
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 254
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 264
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    .line 268
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v14, 0x40000002    # 2.0000005f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000002    # 2.0000005f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_ctp"

    .line 270
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 268
    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000003    # 2.0000007f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000003    # 2.0000007f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_inexact_wakeup_ctp"

    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_inexact_wakeup_base_price"

    .line 279
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 274
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    .line 286
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v14, 0x40000004    # 2.000001f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000004    # 2.000001f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_ctp"

    .line 288
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 286
    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000005    # 2.0000012f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000005    # 2.0000012f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_exact_nonwakeup_ctp"

    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_exact_nonwakeup_base_price"

    .line 298
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 293
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    .line 305
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    .line 308
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v1, 0x40000006    # 2.0000014f

    new-instance v2, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000006    # 2.0000014f

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000007    # 2.0000017f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000007    # 2.0000017f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_inexact_nonwakeup_ctp"

    move-object/from16 v1, p0

    .line 315
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_inexact_nonwakeup_base_price"

    .line 318
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 313
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000008    # 2.000002f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000008    # 2.000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_CTP_CAKES:J

    const-string v4, "am_action_alarm_alarmclock_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 323
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_alarmclock_base_price"

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 321
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffe

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffe

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    const-string v4, "am_reward_top_activity_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 331
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v5, 0x989680

    const-string v4, "am_reward_top_activity_ongoing"

    .line 334
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    const-string v4, "am_reward_top_activity_max"

    .line 337
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 330
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/high16 v8, -0x80000000

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v10, -0x80000000

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    const-string v4, "am_reward_notification_seen_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 341
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    const-string v4, "am_reward_notification_seen_ongoing"

    .line 344
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    const-string v4, "am_reward_notification_seen_max"

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 340
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7fffffff

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7fffffff

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_notification_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 352
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_notification_interaction_ongoing"

    .line 355
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_notification_interaction_max"

    .line 358
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 350
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffd

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffd

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_widget_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 362
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_widget_interaction_ongoing"

    .line 365
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_widget_interaction_max"

    .line 368
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 361
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffc

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffc

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_other_user_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 373
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_other_user_interaction_ongoing"

    .line 376
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_other_user_interaction_max"

    .line 379
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 371
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 165
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tare_alarm_manager_constants"

    .line 167
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
