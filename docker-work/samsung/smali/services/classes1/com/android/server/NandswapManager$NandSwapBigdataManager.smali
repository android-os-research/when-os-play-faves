.class public final Lcom/android/server/NandswapManager$NandSwapBigdataManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NandSwapBigdataManager"
.end annotation


# static fields
.field public static final bigdataJsonFormat:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static bridge synthetic -$$Nest$smuploadBigdataToHQM()V
    .registers 0

    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->uploadBigdataToHQM()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 19

    const-string v0, "count_average"

    const-string/jumbo v1, "size_average"

    const-string/jumbo v2, "reads"

    const-string/jumbo v3, "writes"

    const-string/jumbo v4, "objcnt"

    const-string/jumbo v5, "max_count"

    const-string/jumbo v6, "max_size"

    const-string/jumbo v7, "ppr_count_average"

    const-string/jumbo v8, "ppr_size_average"

    const-string/jumbo v9, "ppr_reads"

    const-string/jumbo v10, "ppr_writes"

    const-string/jumbo v11, "ppr_objcnt"

    const-string/jumbo v12, "ppr_max_count"

    const-string/jumbo v13, "ppr_max_size"

    const-string/jumbo v14, "objreads"

    const-string/jumbo v15, "objwrites"

    const-string/jumbo v16, "gpu_total_mem"

    const-string/jumbo v17, "gpu_reclaimed_mem"

    const-string/jumbo v18, "swap_used"

    .line 1132
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    sput-object p1, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->mContext:Landroid/content/Context;

    const-string p0, "HqmManagerService"

    .line 1143
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/SemHqmManager;

    sput-object p0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 1146
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isExistBigdataInfoProp()Z

    move-result p0

    if-nez p0, :cond_2a

    .line 1147
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    :cond_2a
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/NandswapManager$NandSwapBigdataManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static makeJsonFormat()Ljava/lang/String;
    .registers 17

    .line 1173
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 1174
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    move-result-object v1

    .line 1175
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetMemInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 1177
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_348

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_348

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_348

    .line 1184
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"option\":\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1186
    sget-object v8, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    array-length v9, v8

    move v10, v6

    :goto_4d
    if-ge v10, v9, :cond_336

    aget-object v11, v8, v10

    const-string v12, "count_average"

    .line 1188
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "%.3f"

    if-eqz v12, :cond_73

    .line 1189
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/NandswapManager$NandswapClient;->getCountAverage()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_73
    const-string/jumbo v12, "size_average"

    .line 1190
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_94

    .line 1191
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/NandswapManager$NandswapClient;->getSizeAverage()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_94
    const-string/jumbo v12, "ppr_count_average"

    .line 1192
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 1193
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/NandswapManager$NandswapClient;->getPprCountAverage()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_b5
    const-string/jumbo v12, "ppr_size_average"

    .line 1194
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d6

    .line 1195
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/NandswapManager$NandswapClient;->getPprSizeAverage()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_d6
    const-string/jumbo v12, "objcnt"

    .line 1196
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "%d"

    if-nez v12, :cond_301

    const-string/jumbo v12, "ppr_objcnt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ec

    goto/16 :goto_301

    :cond_ec
    const-string/jumbo v12, "max_count"

    .line 1198
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d8

    const-string/jumbo v12, "max_size"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d8

    const-string/jumbo v12, "ppr_max_count"

    .line 1199
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d8

    const-string/jumbo v12, "ppr_max_size"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_112

    goto/16 :goto_2d8

    :cond_112
    const-string/jumbo v12, "reads"

    .line 1201
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14d

    .line 1202
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v5}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v5

    sub-int v16, v16, v5

    add-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v6

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_14d
    const-string/jumbo v5, "writes"

    .line 1203
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_188

    .line 1204
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v6}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v6

    sub-int/2addr v15, v6

    add-int/2addr v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v14, v12

    invoke-static {v5, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_188
    const-string/jumbo v5, "ppr_reads"

    .line 1205
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    .line 1206
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_1c3
    const-string/jumbo v5, "ppr_writes"

    .line 1207
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fe

    .line 1208
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_1fe
    const-string/jumbo v5, "objreads"

    .line 1209
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_239

    .line 1210
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_239
    const-string/jumbo v5, "objwrites"

    .line 1211
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_274

    .line 1212
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v15}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v15

    sub-int/2addr v14, v15

    add-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_311

    :cond_274
    const-string/jumbo v5, "gpu_total_mem"

    .line 1213
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "-1"

    if-eqz v5, :cond_295

    const-string v5, "KgslShmemUsage"

    .line 1214
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_28a

    :goto_287
    move-object v12, v6

    goto/16 :goto_311

    :cond_28a
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_292
    move-object v12, v5

    goto/16 :goto_311

    :cond_295
    const-string/jumbo v5, "gpu_reclaimed_mem"

    .line 1215
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b0

    const-string v5, "KgslReclaimed"

    .line 1216
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2a7

    goto :goto_287

    :cond_2a7
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_292

    :cond_2b0
    const-string/jumbo v5, "swap_used"

    .line 1217
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d7

    const-string v5, "SwapTotal"

    .line 1218
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "SwapFree"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_311

    :cond_2d7
    return-object v4

    .line 1200
    :cond_2d8
    :goto_2d8
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_311

    :cond_301
    :goto_301
    move v14, v6

    .line 1197
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v12, v14

    invoke-static {v5, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1222
    :goto_311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4d

    .line 1224
    :cond_336
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_347

    .line 1225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_347
    return-object v3

    :cond_348
    :goto_348
    move v5, v6

    .line 1178
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "persist.sys.zram0.bigdata_info"

    aput-object v7, v6, v5

    .line 1179
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "%s(%d) or bd_stat(%d) or meminfo(%d) is empty..."

    .line 1178
    invoke-static {v3, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NandswapManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static uploadBigdataToHQM()V
    .registers 12

    .line 1152
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "NandswapManager"

    if-nez v0, :cond_c

    const-string v0, "Bigdata semHqmManager isn\'t initialized..."

    .line 1153
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1157
    :cond_c
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "Upload Bigdata..."

    .line 1158
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->makeJsonFormat()Ljava/lang/String;

    move-result-object v10

    .line 1161
    sget-object v2, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string v4, "AP"

    const-string v5, "NSST"

    const-string/jumbo v6, "sm"

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string v9, ""

    const-string v11, ""

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Initialize bigdata information..."

    .line 1163
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 1165
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->clearAverageList()V

    .line 1166
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 1167
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmClient()Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NandswapManager$NandswapClient;->resetBdStatSysNode()V

    :cond_56
    return-void
.end method
