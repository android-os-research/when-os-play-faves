.class public Lcom/android/server/tare/Scribe;
.super Ljava/lang/Object;
.source "Scribe.java"


# static fields
.field public static final DEBUG:Z

.field public static final MAX_NUM_TRANSACTION_DUMP:I = 0x19

.field public static final MAX_TRANSACTION_AGE_MS:J = 0x5265c00L

.field public static final STATE_FILE_VERSION:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field public static final WRITE_DELAY:J = 0x7530L

.field public static final XML_ATTR_CONSUMPTION_LIMIT:Ljava/lang/String; = "consumptionLimit"

.field public static final XML_ATTR_CTP:Ljava/lang/String; = "ctp"

.field public static final XML_ATTR_CURRENT_BALANCE:Ljava/lang/String; = "currentBalance"

.field public static final XML_ATTR_DELTA:Ljava/lang/String; = "delta"

.field public static final XML_ATTR_END_TIME:Ljava/lang/String; = "endTime"

.field public static final XML_ATTR_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final XML_ATTR_LAST_RECLAMATION_TIME:Ljava/lang/String; = "lastReclamationTime"

.field public static final XML_ATTR_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field public static final XML_ATTR_PR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field public static final XML_ATTR_PR_DISCHARGE:Ljava/lang/String; = "discharge"

.field public static final XML_ATTR_PR_LOSS:Ljava/lang/String; = "loss"

.field public static final XML_ATTR_PR_NEG_REGULATIONS:Ljava/lang/String; = "negRegulations"

.field public static final XML_ATTR_PR_NUM_LOSS:Ljava/lang/String; = "numLoss"

.field public static final XML_ATTR_PR_NUM_NEG_REGULATIONS:Ljava/lang/String; = "numNegRegulations"

.field public static final XML_ATTR_PR_NUM_POS_REGULATIONS:Ljava/lang/String; = "numPosRegulations"

.field public static final XML_ATTR_PR_NUM_PROFIT:Ljava/lang/String; = "numProfits"

.field public static final XML_ATTR_PR_NUM_REWARDS:Ljava/lang/String; = "numRewards"

.field public static final XML_ATTR_PR_POS_REGULATIONS:Ljava/lang/String; = "posRegulations"

.field public static final XML_ATTR_PR_PROFIT:Ljava/lang/String; = "profit"

.field public static final XML_ATTR_PR_REWARDS:Ljava/lang/String; = "rewards"

.field public static final XML_ATTR_REMAINING_CONSUMABLE_CAKES:Ljava/lang/String; = "remainingConsumableCakes"

.field public static final XML_ATTR_START_TIME:Ljava/lang/String; = "startTime"

.field public static final XML_ATTR_TAG:Ljava/lang/String; = "tag"

.field public static final XML_ATTR_USER_ID:Ljava/lang/String; = "userId"

.field public static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final XML_TAG_HIGH_LEVEL_STATE:Ljava/lang/String; = "irs-state"

.field public static final XML_TAG_LEDGER:Ljava/lang/String; = "ledger"

.field public static final XML_TAG_PERIOD_REPORT:Ljava/lang/String; = "report"

.field public static final XML_TAG_TARE:Ljava/lang/String; = "tare"

.field public static final XML_TAG_TRANSACTION:Ljava/lang/String; = "transaction"

.field public static final XML_TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mCleanRunnable:Ljava/lang/Runnable;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public mLastReclamationTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public final mLedgers:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation
.end field

.field public mRemainingConsumableCakes:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public mSatiatedConsumptionLimit:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public final mStateFile:Landroid/util/AtomicFile;

.field public final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0gtn6R3Vmum7PweFgnG2JMPIuTU(Lcom/android/server/tare/Scribe;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->cleanupLedgers()V

    return-void
.end method

.method public static synthetic $r8$lambda$8CMNXiXstghl9Sv_j8dc2t-uUm8(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tare/Scribe;->lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJ_5syXNQUTlPkQFbHqUe0XRNs4(Lcom/android/server/tare/Scribe;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->writeState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    .line 58
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_27

    const/4 v1, 0x3

    .line 59
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
    sput-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V
    .registers 4

    .line 125
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    .line 121
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 131
    iput-object p2, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 133
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "tare"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 136
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "state.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private synthetic lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .registers 7

    .line 642
    invoke-static {p3, p4}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, " (system)"

    .line 644
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    :cond_14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 647
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_20

    const p0, 0x7fffffff

    goto :goto_22

    :cond_20
    const/16 p0, 0x19

    .line 648
    :goto_22
    invoke-virtual {p5, p1, p0}, Lcom/android/server/tare/Ledger;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 649
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    .line 374
    invoke-interface {v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentBalance"

    .line 375
    invoke-interface {v0, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v6, p1

    .line 377
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 381
    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is saved to disk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_38
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    :goto_3c
    const/4 v8, 0x1

    if-eq v7, v8, :cond_db

    .line 386
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    if-ne v7, v9, :cond_50

    const-string v7, "ledger"

    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    goto/16 :goto_db

    :cond_50
    const/4 v9, 0x2

    if-ne v7, v9, :cond_bc

    const-string/jumbo v9, "transaction"

    .line 394
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    goto :goto_bc

    :cond_5d
    if-nez v6, :cond_60

    goto :goto_b7

    .line 402
    :cond_60
    sget-boolean v7, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v7, :cond_7a

    .line 403
    sget-object v9, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting ledger tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    const-string/jumbo v8, "tag"

    .line 405
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "startTime"

    .line 406
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    const-string v8, "endTime"

    .line 407
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-string v8, "eventId"

    .line 408
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string v8, "delta"

    .line 409
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-string v8, "ctp"

    .line 410
    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v8, v12, p2

    if-gtz v8, :cond_ae

    if-eqz v7, :cond_b7

    .line 413
    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v8, "Skipping event because it\'s too old."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 417
    :cond_ae
    new-instance v7, Lcom/android/server/tare/Ledger$Transaction;

    move-object v9, v7

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_b7
    :goto_b7
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    goto :goto_3c

    .line 396
    :cond_bc
    :goto_bc
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_db
    :goto_db
    if-nez v6, :cond_de

    return-object v2

    .line 423
    :cond_de
    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/tare/Ledger;-><init>(JLjava/util/List;)V

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    const/4 v1, 0x0

    const-string v2, "discharge"

    .line 491
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v2, "batteryLevel"

    .line 492
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string/jumbo v2, "profit"

    .line 493
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string v2, "numProfits"

    .line 494
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v2, "loss"

    .line 495
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string v2, "numLoss"

    .line 496
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string/jumbo v2, "rewards"

    .line 497
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string v2, "numRewards"

    .line 498
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string/jumbo v2, "posRegulations"

    .line 500
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string v2, "numPosRegulations"

    .line 502
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string v2, "negRegulations"

    .line 504
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string v2, "numNegRegulations"

    .line 506
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    return-object v0
.end method

.method public static writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "report"

    .line 621
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v3, "discharge"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string v3, "batteryLevel"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string/jumbo v4, "profit"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v3, "numProfits"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string v4, "loss"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string v3, "numLoss"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string/jumbo v4, "rewards"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string v3, "numRewards"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string/jumbo v4, "posRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string v3, "numPosRegulations"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string v4, "negRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    iget p1, p1, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    const-string v2, "numNegRegulations"

    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "transaction"

    .line 607
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    const-string/jumbo v4, "startTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    const-string v4, "endTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    iget v2, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    const-string v3, "eventId"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    iget-object v2, p1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-eqz v2, :cond_27

    const-string/jumbo v3, "tag"

    .line 612
    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    :cond_27
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-string v4, "delta"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-string p1, "ctp"

    invoke-interface {p0, v0, p1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public adjustRemainingConsumableCakesLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    .line 143
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 144
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    :cond_e
    return-void
.end method

.method public final cleanupLedgers()V
    .registers 10

    .line 340
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 341
    :try_start_7
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide v1, 0x7fffffffffffffffL

    .line 343
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1d
    if-ltz v3, :cond_57

    .line 344
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 346
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2d
    if-ltz v5, :cond_54

    .line 347
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 348
    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tare/Ledger;

    const-wide/32 v7, 0x5265c00

    .line 349
    invoke-virtual {v6, v7, v8}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    .line 350
    invoke-virtual {v6}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 352
    iget-wide v6, v6, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_51
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    :cond_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 356
    :cond_57
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 357
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public discardLedgerLocked(ILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    const-string v0, "Ledgers:"

    .line 639
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 641
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 651
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCakesInCirculationForLoggingLocked()J
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_a
    if-ltz v0, :cond_29

    .line 189
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_14
    if-ltz v3, :cond_26

    .line 190
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Ledger;

    invoke-virtual {v4}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_29
    return-wide v1
.end method

.method public getLastReclamationTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 161
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-wide v0
.end method

.method public getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/Ledger;

    if-nez v0, :cond_14

    .line 169
    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger;-><init>()V

    .line 170
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getLedgersLocked()Landroid/util/SparseArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public getRemainingConsumableCakesLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 199
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-wide v0
.end method

.method public getSatiatedConsumptionLimitLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 156
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public loadFromDiskLocked()V
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 204
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 206
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 207
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-void

    :cond_1e
    const-wide/16 v1, 0x0

    .line 210
    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 211
    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 213
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 214
    iget-object v2, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 215
    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5e

    .line 216
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 217
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_5b

    .line 218
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 219
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-nez v7, :cond_56

    .line 221
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 222
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    :cond_56
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 228
    :cond_5e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :try_start_63
    iget-object v4, v0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_198
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_69} :catch_198

    .line 230
    :try_start_69
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 232
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v6

    :goto_71
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_7c

    if-eq v6, v8, :cond_7c

    .line 235
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    goto :goto_71

    :cond_7c
    if-ne v6, v8, :cond_8f

    .line 238
    sget-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v0, :cond_89

    .line 239
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v1, "No persisted state."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_18a

    :cond_89
    if-eqz v4, :cond_8e

    .line 292
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_198
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8e} :catch_198

    :cond_8e
    return-void

    .line 244
    :cond_8f
    :try_start_8f
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "tare"

    .line 245
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_c9

    const-string/jumbo v6, "version"

    .line 246
    invoke-interface {v5, v9, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_a8

    if-lez v6, :cond_c9

    .line 248
    :cond_a8
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), aborting file read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_8f .. :try_end_c3} :catchall_18a

    if-eqz v4, :cond_c8

    .line 292
    :try_start_c5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_198
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_c8} :catch_198

    :cond_c8
    return-void

    .line 253
    :cond_c9
    :try_start_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v10, v12

    const-wide v12, 0x7fffffffffffffffL

    .line 255
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    :goto_da
    if-eq v6, v8, :cond_17c

    if-eq v6, v7, :cond_e0

    goto/16 :goto_173

    .line 260
    :cond_e0
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e8

    goto/16 :goto_173

    :cond_e8
    const/4 v14, -0x1

    .line 265
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v3, -0x37b3aacc

    if-eq v15, v3, :cond_112

    const v3, 0x36ebcb

    if-eq v15, v3, :cond_107

    const v3, 0x2918f96e

    if-eq v15, v3, :cond_fd

    goto :goto_11c

    :cond_fd
    const-string v3, "irs-state"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    const/4 v14, 0x0

    goto :goto_11c

    :cond_107
    const-string/jumbo v3, "user"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    move v14, v8

    goto :goto_11c

    :cond_112
    const-string/jumbo v3, "report"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    move v14, v7

    :cond_11c
    :goto_11c
    if-eqz v14, :cond_14a

    if-eq v14, v8, :cond_141

    if-eq v14, v7, :cond_139

    .line 286
    sget-object v3, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    .line 283
    :cond_139
    invoke-static {v5}, Lcom/android/server/tare/Scribe;->readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_173

    .line 279
    :cond_141
    invoke-virtual {v0, v5, v1, v10, v11}, Lcom/android/server/tare/Scribe;->readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J

    move-result-wide v14

    .line 278
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_173

    :cond_14a
    const-string v3, "lastReclamationTime"

    .line 268
    invoke-interface {v5, v9, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    const-string v3, "consumptionLimit"

    .line 269
    iget-object v6, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 271
    invoke-virtual {v6}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v14

    .line 270
    invoke-interface {v5, v9, v3, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 272
    iget-object v3, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v14

    const-string/jumbo v3, "remainingConsumableCakes"

    .line 274
    invoke-interface {v5, v9, v3, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 273
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 256
    :goto_173
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v6, v3

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_da

    .line 290
    :cond_17c
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v2}, Lcom/android/server/tare/Analyst;->loadReports(Ljava/util/List;)V

    .line 291
    invoke-virtual {v0, v12, v13}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V
    :try_end_184
    .catchall {:try_start_c9 .. :try_end_184} :catchall_18a

    if-eqz v4, :cond_1a0

    .line 292
    :try_start_186
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_198
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_186 .. :try_end_189} :catch_198

    goto :goto_1a0

    :catchall_18a
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_197

    .line 229
    :try_start_18e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_192

    goto :goto_197

    :catchall_192
    move-exception v0

    move-object v2, v0

    :try_start_194
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_197
    :goto_197
    throw v1
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_198} :catch_198
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_194 .. :try_end_198} :catch_198

    :catch_198
    move-exception v0

    .line 293
    sget-object v1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v2, "Error reading state from disk"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a0
    :goto_1a0
    return-void
.end method

.method public postWrite()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 299
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "userId"

    .line 435
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 436
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    const/16 v1, -0x2710

    if-nez p2, :cond_2e

    .line 438
    sget-object v2, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is saved to disk"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_2e
    const-wide v2, 0x7fffffffffffffffL

    .line 445
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    :goto_37
    const/4 v5, 0x1

    if-eq v4, v5, :cond_94

    .line 447
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4b

    const-string/jumbo v4, "user"

    .line 449
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    goto :goto_94

    :cond_4b
    const-string v4, "ledger"

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    if-ne v0, v1, :cond_56

    goto :goto_8f

    .line 460
    :cond_56
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/tare/Scribe;->readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_5d

    goto :goto_8f

    .line 464
    :cond_5d
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/tare/Ledger;

    if-eqz v5, :cond_8f

    .line 466
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v0, v4, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v5}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 469
    iget-wide v4, v4, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_8f

    .line 473
    :cond_79
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_8f
    :goto_8f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    goto :goto_37

    :cond_94
    :goto_94
    return-wide v2
.end method

.method public recordExists()Z
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    return p0
.end method

.method public final scheduleCleanup(J)V
    .registers 7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-wide/32 v0, 0x36ee80

    const-wide/32 v2, 0x5265c00

    add-long/2addr p1, v2

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 518
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 520
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setConsumptionLimitLocked(J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 308
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    .line 309
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    goto :goto_14

    .line 310
    :cond_9
    iget-wide v2, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_14

    sub-long/2addr v2, v0

    sub-long v0, p1, v2

    .line 312
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 314
    :cond_14
    :goto_14
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 315
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public setLastReclamationTimeLocked(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 320
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    .line 321
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public tearDownLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .line 326
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    const-wide/16 v0, 0x0

    .line 329
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 330
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 331
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-void
.end method

.method public writeImmediatelyForTesting()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 336
    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final writeState()V
    .registers 11

    .line 524
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 525
    :try_start_7
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 532
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_c5

    return-void

    :cond_23
    const-wide v1, 0x7fffffffffffffffL

    .line 535
    :try_start_28
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_b8
    .catchall {:try_start_28 .. :try_end_2e} :catchall_c5

    .line 536
    :try_start_2e
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 537
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "tare"

    .line 539
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    const/4 v7, 0x0

    .line 540
    invoke-interface {v4, v6, v5, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    .line 542
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "lastReclamationTime"

    .line 543
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "consumptionLimit"

    .line 544
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "remainingConsumableCakes"

    .line 545
    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    .line 547
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_6d
    if-ltz v5, :cond_80

    .line 550
    iget-object v8, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 552
    invoke-virtual {p0, v4, v8}, Lcom/android/server/tare/Scribe;->writeUserLocked(Landroid/util/TypedXmlSerializer;I)J

    move-result-wide v8

    .line 551
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_6d

    .line 555
    :cond_80
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5}, Lcom/android/server/tare/Analyst;->getReports()Ljava/util/List;

    move-result-object v5

    .line 556
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_8a
    if-ge v7, v8, :cond_98

    .line 557
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Analyst$Report;

    invoke-static {v4, v9}, Lcom/android/server/tare/Scribe;->writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8a

    :cond_98
    const-string/jumbo v5, "tare"

    .line 560
    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 563
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a6
    .catchall {:try_start_2e .. :try_end_a6} :catchall_ac

    if-eqz v3, :cond_c0

    .line 564
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_b8
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_c5

    goto :goto_c0

    :catchall_ac
    move-exception v4

    if-eqz v3, :cond_b7

    .line 535
    :try_start_af
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v3

    :try_start_b4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    throw v4
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b8} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_c5

    :catch_b8
    move-exception v3

    .line 565
    :try_start_b9
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v5, "Error writing state to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    :cond_c0
    :goto_c0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 568
    monitor-exit v0

    return-void

    :catchall_c5
    move-exception p0

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_b9 .. :try_end_c7} :catchall_c5

    throw p0
.end method

.method public final writeUserLocked(Landroid/util/TypedXmlSerializer;I)J
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user"

    .line 577
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "userId"

    .line 578
    invoke-interface {p1, v1, v3, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide v4, 0x7fffffffffffffffL

    :goto_20
    if-ltz v3, :cond_71

    .line 580
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 581
    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Ledger;

    const-wide/32 v8, 0x5265c00

    .line 583
    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    const-string v8, "ledger"

    .line 585
    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "pkgName"

    .line 586
    invoke-interface {p1, v1, v9, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v9

    const-string v6, "currentBalance"

    .line 587
    invoke-interface {p1, v1, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getTransactions()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 591
    :goto_51
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_6b

    .line 592
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Ledger$Transaction;

    if-nez v7, :cond_65

    .line 594
    iget-wide v10, v9, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 596
    :cond_65
    invoke-static {p1, v9}, Lcom/android/server/tare/Scribe;->writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 598
    :cond_6b
    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 600
    :cond_71
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-wide v4
.end method
