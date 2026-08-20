.class public final Lcom/android/server/appop/DiscreteRegistry;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;,
        Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;,
        Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    }
.end annotation


# static fields
.field public static final ATTR_ATTRIBUTION_FLAGS:Ljava/lang/String; = "af"

.field public static final ATTR_CHAIN_ID:Ljava/lang/String; = "ci"

.field public static final ATTR_FLAGS:Ljava/lang/String; = "f"

.field public static final ATTR_LARGEST_CHAIN_ID:Ljava/lang/String; = "lc"

.field public static final ATTR_NOTE_DURATION:Ljava/lang/String; = "nd"

.field public static final ATTR_NOTE_TIME:Ljava/lang/String; = "nt"

.field public static final ATTR_OP_ID:Ljava/lang/String; = "op"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field public static final ATTR_TAG:Ljava/lang/String; = "at"

.field public static final ATTR_UID:Ljava/lang/String; = "ui"

.field public static final ATTR_UID_STATE:Ljava/lang/String; = "us"

.field public static final ATTR_VERSION:Ljava/lang/String; = "v"

.field public static final CURRENT_VERSION:I = 0x1

.field public static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field public static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field public static final DEFAULT_DISCRETE_OPS:Ljava/lang/String; = "1,0,26,27,100,101,120"

.field public static final DISCRETE_HISTORY_FILE_SUFFIX:Ljava/lang/String; = "tl"

.field public static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field public static final OP_FLAGS_DISCRETE:I = 0xb

.field public static final PROPERTY_DISCRETE_FLAGS:Ljava/lang/String; = "discrete_history_op_flags"

.field public static final PROPERTY_DISCRETE_HISTORY_CUTOFF:Ljava/lang/String; = "discrete_history_cutoff_millis"

.field public static final PROPERTY_DISCRETE_HISTORY_QUANTIZATION:Ljava/lang/String; = "discrete_history_quantization_millis"

.field public static final PROPERTY_DISCRETE_OPS_LIST:Ljava/lang/String; = "discrete_history_ops_cslist"

.field public static final TAG:Ljava/lang/String; = "DiscreteRegistry"

.field public static final TAG_ENTRY:Ljava/lang/String; = "e"

.field public static final TAG_HISTORY:Ljava/lang/String; = "h"

.field public static final TAG_OP:Ljava/lang/String; = "o"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "p"

.field public static final TAG_TAG:Ljava/lang/String; = "a"

.field public static final TAG_UID:Ljava/lang/String; = "u"

.field public static sDiscreteFlags:I

.field public static sDiscreteHistoryCutoff:J

.field public static sDiscreteHistoryQuantization:J

.field public static sDiscreteOps:[I


# instance fields
.field public mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOnDiskLock"
        }
    .end annotation
.end field

.field public mDebugMode:Z

.field public mDiscreteAccessDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOnDiskLock"
        }
    .end annotation
.end field

.field public mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInMemoryLock"
        }
    .end annotation
.end field

.field public final mInMemoryLock:Ljava/lang/Object;

.field public final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$SjeSeQ_a7HiztqnB4BFEGNosG2g(Lcom/android/server/appop/DiscreteRegistry;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdiscretizeDuration(J)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeDuration(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smdiscretizeTimeStamp(J)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeTimeStamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/DiscreteRegistry;->filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7

    .line 138
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1e

    .line 139
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1

    .line 141
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v1, 0x0

    .line 191
    iput-boolean v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 194
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 195
    monitor-enter v0

    .line 196
    :try_start_13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 197
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "discrete"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDirLocked()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->readLargestChainIdFromDiskLocked()I

    move-result v1

    .line 201
    monitor-enter p1
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_3c

    .line 202
    :try_start_2f
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 203
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_39

    .line 204
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3c

    return-void

    :catchall_39
    move-exception p0

    .line 203
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p0

    :catchall_3c
    move-exception p0

    .line 204
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public static discretizeDuration(J)J
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_7

    goto :goto_f

    .line 1403
    :cond_7
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    mul-long/2addr v0, p0

    :goto_f
    return-wide v0
.end method

.method public static discretizeTimeStamp(J)J
    .registers 4

    .line 1397
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;JJII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1366
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_59

    move-object v3, p0

    .line 1369
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1370
    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v11, p10

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    if-eqz v12, :cond_40

    move-object v5, v12

    move-object/from16 v6, p7

    move/from16 v7, p6

    move-object/from16 v8, p9

    move/from16 v9, p8

    move-object v10, v4

    .line 1372
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 1373
    invoke-virtual {v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_40

    goto :goto_56

    .line 1377
    :cond_40
    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v5, v5, p5

    if-eqz v5, :cond_56

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    add-long/2addr v7, v5

    cmp-long v7, v7, p1

    if-lez v7, :cond_56

    cmp-long v5, v5, p3

    if-gez v5, :cond_56

    .line 1380
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_59
    return-object v1
.end method

.method public static isDiscreteOp(II)Z
    .registers 3

    .line 1387
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 1390
    :cond_a
    sget p0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    and-int/2addr p0, p1

    if-nez p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static parseOpsList(Ljava/lang/String;)[I
    .registers 5

    .line 1323
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array p0, v1, [Ljava/lang/String;

    goto :goto_10

    :cond_a
    const-string v0, ","

    .line 1326
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1328
    :goto_10
    array-length v0, p0

    .line 1329
    new-array v2, v0, [I

    :goto_13
    if-ge v1, v0, :cond_42

    .line 1332
    :try_start_15
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_20
    move-exception p0

    .line 1335
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse Discrete ops list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "1,0,26,27,100,101,120"

    .line 1336
    invoke-static {p0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_42
    return-object v2
.end method

.method public static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1343
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1347
    new-instance v2, Ljava/util/ArrayList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-lt v3, v0, :cond_17

    if-ge v4, v1, :cond_16

    goto :goto_17

    :cond_16
    return-object v2

    :cond_17
    :goto_17
    if-ne v3, v0, :cond_26

    add-int/lit8 v5, v4, 0x1

    .line 1350
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    move v4, v5

    goto :goto_11

    :cond_26
    if-ne v4, v1, :cond_35

    add-int/lit8 v5, v3, 0x1

    .line 1352
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    move v3, v5

    goto :goto_11

    .line 1353
    :cond_35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_55

    add-int/lit8 v5, v3, 0x1

    .line 1354
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_55
    add-int/lit8 v5, v4, 0x1

    .line 1356
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method


# virtual methods
.method public addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p12

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 282
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v14

    .line 283
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    if-eqz v1, :cond_17

    move-object v1, p0

    .line 285
    invoke-virtual {p0, v14, v0}, Lcom/android/server/appop/DiscreteRegistry;->createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;

    move-result-object v2

    :cond_17
    move-object v0, v2

    .line 287
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    move-wide/from16 v3, p2

    .line 287
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v2, v14

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object v13, v0

    .line 289
    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    move-object/from16 v1, p1

    .line 291
    invoke-static {v14, v1, v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mapplyToHistoricalOps(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public clearHistory()V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    .line 409
    :try_start_6
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 410
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_14

    .line 411
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearOnDiskHistoryLocked()V

    .line 412
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    return-void

    :catchall_14
    move-exception p0

    .line 410
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0

    :catchall_17
    move-exception p0

    .line 412
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public clearHistory(ILjava/lang/String;)V
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 419
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    .line 420
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 421
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    .line 422
    :try_start_e
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V

    .line 423
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 424
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    return-void

    :catchall_16
    move-exception p0

    .line 421
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0

    :catchall_19
    move-exception p0

    .line 424
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final clearOnDiskHistoryLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 458
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 459
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDir()V

    return-void
.end method

.method public final createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 342
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 343
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_13d

    .line 345
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v5, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 346
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 347
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2b
    if-ge v14, v13, :cond_133

    .line 349
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v15, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 350
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 351
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v11, 0x0

    :goto_42
    if-ge v11, v12, :cond_123

    .line 354
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 356
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_5b
    if-ge v8, v9, :cond_10f

    .line 358
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 359
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 360
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_6e
    if-ge v0, v3, :cond_f6

    .line 362
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    move/from16 v19, v3

    if-eqz v2, :cond_d0

    .line 363
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move-object/from16 v21, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d2

    iget v5, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_8c

    goto :goto_d2

    .line 369
    :cond_8c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 370
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    move/from16 v22, v13

    move-object/from16 v13, p2

    invoke-direct {v5, v13}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ad

    :cond_a9
    move/from16 v22, v13

    move-object/from16 v13, p2

    .line 373
    :goto_ad
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    move-object v5, v7

    move-object v7, v3

    move v3, v8

    move-object/from16 v8, v16

    move/from16 v23, v9

    move v9, v6

    move-object/from16 v24, v10

    move-object/from16 v10, v18

    move/from16 v25, v11

    move/from16 v11, v17

    move/from16 v26, v12

    move-object v12, v2

    .line 374
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V

    goto :goto_e0

    :cond_d0
    move-object/from16 v21, v5

    :cond_d2
    :goto_d2
    move-object v5, v7

    move v3, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v22, v13

    move-object/from16 v13, p2

    :goto_e0
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v7, v5

    move/from16 v3, v19

    move/from16 v2, v20

    move-object/from16 v5, v21

    move/from16 v13, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto/16 :goto_6e

    :cond_f6
    move/from16 v20, v2

    move-object/from16 v21, v5

    move v3, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v22, v13

    move-object/from16 v13, p2

    add-int/lit8 v8, v3, 0x1

    move-object/from16 v0, p1

    move/from16 v13, v22

    goto/16 :goto_5b

    :cond_10f
    move/from16 v20, v2

    move-object/from16 v21, v5

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v22, v13

    move-object/from16 v13, p2

    add-int/lit8 v11, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v13, v22

    goto/16 :goto_42

    :cond_123
    move/from16 v20, v2

    move-object/from16 v21, v5

    move/from16 v22, v13

    move-object/from16 v13, p2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v13, v22

    goto/16 :goto_2b

    :cond_133
    move-object/from16 v13, p2

    move/from16 v20, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_e

    :cond_13d
    return-object v1
.end method

.method public final createDiscreteAccessDir()V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 774
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 775
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_17
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_23
    return-void
.end method

.method public final createDiscreteAccessDirLocked()V
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 828
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 829
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_17
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_23
    return-void
.end method

.method public final deleteOldDiscreteHistoryFilesLocked()V
    .registers 12

    .line 802
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_8a

    .line 803
    array-length v0, p0

    if-lez v0, :cond_8a

    .line 804
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_8a

    aget-object v3, p0, v2

    .line 805
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tl"

    .line 806
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_87

    .line 811
    :cond_20
    :try_start_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 810
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 812
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    sget-wide v8, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v10, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v7

    .line 813
    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_87

    .line 814
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 815
    sget-object v3, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_20 .. :try_end_5f} :catchall_60

    goto :goto_87

    :catchall_60
    move-exception v3

    .line 819
    sget-object v4, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while cleaning timeline files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_8a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 25

    move-object v1, p1

    .line 444
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v0

    const/4 v2, -0x1

    move/from16 v3, p6

    if-ne v3, v2, :cond_c

    const/4 v2, 0x0

    goto :goto_16

    :cond_c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 446
    invoke-static/range {p6 .. p6}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    :goto_16
    move-object v10, v2

    const-wide/16 v3, 0x0

    .line 447
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    const/16 v12, 0x1f

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    move/from16 v7, p5

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    move-object/from16 v4, p9

    .line 449
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Largest chain id: "

    .line 450
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v2, p0

    .line 451
    iget-object v2, v2, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v5, p10

    .line 453
    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public final getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .registers 6

    .line 463
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 465
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2a

    .line 467
    :try_start_c
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 468
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_27

    .line 469
    :try_start_12
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    if-nez v3, :cond_20

    .line 470
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 471
    invoke-virtual {p0, v3}, Lcom/android/server/appop/DiscreteRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 473
    :cond_20
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 474
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2a

    return-object v0

    :catchall_27
    move-exception p0

    .line 468
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0

    :catchall_2a
    move-exception p0

    .line 475
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public offsetHistory(J)V
    .registers 6

    .line 428
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 431
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    .line 432
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 433
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    .line 434
    :try_start_e
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V

    .line 435
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 436
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    return-void

    :catchall_16
    move-exception p0

    .line 433
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0

    :catchall_19
    move-exception p0

    .line 436
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .registers 7

    .line 783
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 784
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tl"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 788
    :try_start_26
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_33

    .line 789
    :try_start_2a
    invoke-static {p1, p0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    .line 790
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    goto :goto_64

    :catchall_31
    move-exception p1

    goto :goto_35

    :catchall_33
    move-exception p1

    const/4 p0, 0x0

    .line 792
    :goto_35
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing timeline state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_64

    .line 796
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public final readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .registers 11

    .line 384
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 388
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 389
    array-length v3, p0

    if-lez v3, :cond_50

    .line 390
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_21
    if-ge v5, v3, :cond_50

    aget-object v6, p0, v5

    .line 391
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tl"

    .line 392
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_4d

    .line 396
    :cond_33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 395
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_4a

    goto :goto_4d

    .line 400
    :cond_4a
    invoke-static {p1, v6, v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V

    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 403
    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final readLargestChainIdFromDiskLocked()I
    .registers 12

    .line 296
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    .line 297
    array-length v1, p0

    if-lez v1, :cond_5f

    const-wide/16 v1, 0x0

    .line 300
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v0

    move-object v6, v4

    :goto_12
    if-ge v5, v3, :cond_3f

    aget-object v7, p0, v5

    .line 301
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tl"

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    goto :goto_3c

    .line 306
    :cond_24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 305
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v1, v8

    if-gez v10, :cond_3c

    move-object v6, v7

    move-wide v1, v8

    :cond_3c
    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_3f
    if-nez v6, :cond_42

    return v0

    .line 317
    :cond_42
    :try_start_42
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_47} :catch_5f

    .line 322
    :try_start_47
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    const-string/jumbo v2, "h"

    .line 323
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "lc"

    .line 325
    invoke-interface {v1, v4, v2, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_5c

    .line 331
    :try_start_58
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5b

    :catch_5b
    return v0

    :catchall_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_5f

    :catch_5f
    :cond_5f
    return v0
.end method

.method public recordDiscreteAccess(ILjava/lang/String;ILjava/lang/String;IIJJII)V
    .registers 27

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v5, p5

    .line 247
    invoke-static {v1, v5}, Lcom/android/server/appop/DiscreteRegistry;->isDiscreteOp(II)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    .line 250
    :cond_c
    iget-object v13, v0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v13

    .line 251
    :try_start_f
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move/from16 v1, p3

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    .line 253
    monitor-exit v13

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v13
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setDebugMode(Z)V
    .registers 2

    .line 1407
    iput-boolean p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    return-void
.end method

.method public final setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 216
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 217
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 219
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez v0, :cond_2b

    .line 220
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_2b

    .line 224
    :cond_27
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 226
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 227
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 229
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_54

    iget-boolean p0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez p0, :cond_54

    .line 230
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_54

    .line 234
    :cond_50
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 236
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    const-string v0, "discrete_history_op_flags"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0xb

    if-eqz p0, :cond_68

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    :cond_68
    sput v1, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    .line 238
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    const-string v0, "discrete_history_ops_cslist"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "1,0,26,27,100,101,120"

    if-eqz p0, :cond_81

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    goto :goto_85

    .line 239
    :cond_81
    invoke-static {v1}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object p0

    :goto_85
    sput-object p0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 208
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 212
    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public writeAndClearAccessHistory()V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_10

    .line 259
    sget-object p0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "State not saved - persistence not initialized."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v0

    return-void

    .line 263
    :cond_10
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_33

    .line 264
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 265
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v3, 0x0

    .line 266
    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 267
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_30

    .line 268
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    .line 269
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 272
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_33

    return-void

    :catchall_30
    move-exception p0

    .line 267
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p0

    :catchall_33
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw p0
.end method
