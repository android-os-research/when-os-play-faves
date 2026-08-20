.class public Lcom/android/server/tare/JobSchedulerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "JobSchedulerEconomicPolicy.java"


# static fields
.field public static final ACTION_JOB_DEFAULT_RUNNING:I = 0x60000005

.field public static final ACTION_JOB_DEFAULT_START:I = 0x60000004

.field public static final ACTION_JOB_HIGH_RUNNING:I = 0x60000003

.field public static final ACTION_JOB_HIGH_START:I = 0x60000002

.field public static final ACTION_JOB_LOW_RUNNING:I = 0x60000007

.field public static final ACTION_JOB_LOW_START:I = 0x60000006

.field public static final ACTION_JOB_MAX_RUNNING:I = 0x60000001

.field public static final ACTION_JOB_MAX_START:I = 0x60000000

.field public static final ACTION_JOB_MIN_RUNNING:I = 0x60000009

.field public static final ACTION_JOB_MIN_START:I = 0x60000008

.field public static final ACTION_JOB_TIMEOUT:I = 0x6000000a

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

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 140
    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

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

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 153
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    .line 161
    iput-object p1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    const-string p1, ""

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "Min satiated balances:"

    .line 377
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 379
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 380
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 381
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 382
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Consumption limits: ["

    .line 383
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", "

    .line 385
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    .line 387
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Actions:"

    .line 390
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 392
    :goto_66
    iget-object v2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    .line 393
    iget-object v2, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 395
    :cond_7c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Rewards:"

    .line 398
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 400
    :goto_8a
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a0

    .line 401
    iget-object v1, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 403
    :cond_a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0
.end method

.method public getCostModifiers()[I
    .registers 1

    .line 200
    sget-object p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->COST_MODIFIERS:[I

    return-object p0
.end method

.method public getHardSatiatedConsumptionLimit()J
    .registers 3

    .line 194
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 176
    iget-wide p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide p0

    .line 179
    :cond_b
    iget-wide p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide p0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .registers 2

    .line 212
    iget-object p0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0
.end method

.method public final loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .registers 20

    move-object/from16 v7, p0

    .line 217
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 218
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    :try_start_c
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    .line 223
    sget-object v1, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_1c
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const-string v4, "js_min_satiated_balance_exempted"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    .line 229
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    const-string v4, "js_min_satiated_balance_other_app"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMinSatiatedBalanceOther:J

    .line 232
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MAX_SATIATED_BALANCE_CAKES:J

    const-string v4, "js_max_satiated_balance"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mMaxSatiatedBalance:J

    .line 235
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "js_initial_consumption_limit"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    .line 238
    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_HARD_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "js_hard_consumption_limit"

    .line 239
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    .line 238
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    .line 243
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const/high16 v8, 0x60000000

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v10, 0x60000000

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_CTP_CAKES:J

    const-string v4, "js_action_job_max_start_ctp"

    move-object/from16 v1, p0

    .line 244
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_max_start_base_price"

    .line 247
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 243
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000001

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000001

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_CTP_CAKES:J

    const-string v4, "js_action_job_max_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 251
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_max_running_base_price"

    .line 254
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 250
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000002

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000002

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_CTP_CAKES:J

    const-string v4, "js_action_job_high_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 258
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_high_start_base_price"

    .line 261
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 257
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000003

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000003

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_CTP_CAKES:J

    const-string v4, "js_action_job_high_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 265
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_high_running_base_price"

    .line 268
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 264
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000004

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000004

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_CTP_CAKES:J

    const-string v4, "js_action_job_default_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 272
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_default_start_base_price"

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 271
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000005

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000005

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_CTP_CAKES:J

    const-string v4, "js_action_job_default_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 279
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_default_running_base_price"

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 278
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000006

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000006

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_CTP_CAKES:J

    const-string v4, "js_action_job_low_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 286
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_low_start_base_price"

    .line 289
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 285
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000007

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000007

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_CTP_CAKES:J

    const-string v4, "js_action_job_low_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 293
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_low_running_base_price"

    .line 296
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 292
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000008

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000008

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_CTP_CAKES:J

    const-string v4, "js_action_job_min_start_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 300
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_min_start_base_price"

    .line 303
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 299
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x60000009

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x60000009

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_CTP_CAKES:J

    const-string v4, "js_action_job_min_running_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_min_running_base_price"

    .line 310
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 306
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x6000000a

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x6000000a

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_CTP_CAKES:J

    const-string v4, "js_action_job_timeout_penalty_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 314
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_BASE_PRICE_CAKES:J

    const-string v4, "js_action_job_timeout_penalty_base_price"

    .line 317
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    .line 313
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffe

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffe

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    const-string v4, "js_reward_top_activity_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 322
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v5, 0x1dcd6500

    const-string v4, "js_reward_top_activity_ongoing"

    .line 325
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    const-string v4, "js_reward_top_activity_max"

    .line 328
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 321
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/high16 v8, -0x80000000

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v10, -0x80000000

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    const-string v4, "js_reward_notification_seen_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    const-string v4, "js_reward_notification_seen_ongoing"

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    const-string v4, "js_reward_notification_seen_max"

    .line 338
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 331
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7fffffff

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7fffffff

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    const-string v4, "js_reward_notification_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 343
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    const-string v4, "js_reward_notification_interaction_ongoing"

    .line 346
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    const-string v4, "js_reward_notification_interaction_max"

    .line 349
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 341
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffd

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffd

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    const-string v4, "js_reward_widget_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    const-string v4, "js_reward_widget_interaction_ongoing"

    .line 356
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    const-string v4, "js_reward_widget_interaction_max"

    .line 359
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 352
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    iget-object v0, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffc

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffc

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    const-string v4, "js_reward_other_user_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 364
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    const-string v4, "js_reward_other_user_interaction_ongoing"

    .line 367
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    const-string v4, "js_reward_other_user_interaction_max"

    .line 370
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    .line 362
    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 167
    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tare_job_scheduler_constants"

    .line 169
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/JobSchedulerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
