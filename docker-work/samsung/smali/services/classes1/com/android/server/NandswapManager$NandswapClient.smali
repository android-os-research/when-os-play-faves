.class public Lcom/android/server/NandswapManager$NandswapClient;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NandswapClient"
.end annotation


# static fields
.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field public bdStatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public bigdataPersistPropMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dailyQuota:I

.field public dailyQuotaLimit:I

.field public normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public state:I

.field public supportBigdataState:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 765
    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 766
    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    const/4 v1, -0x1

    .line 767
    iput v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 769
    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$ProcessingManager-IA;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 775
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$ProcessingManager-IA;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 778
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initNandswapState()V

    .line 779
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataState()V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    return-void
.end method


# virtual methods
.method public clearAverageList()V
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_e

    .line 1032
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mclearAllList(Lcom/android/server/NandswapManager$ProcessingManager;)V

    .line 1033
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mclearAllList(Lcom/android/server/NandswapManager$ProcessingManager;)V

    :cond_e
    return-void
.end method

.method public getBdStat()Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "expire"

    const-string v2, "count"

    const-string/jumbo v3, "reads"

    const-string/jumbo v4, "writes"

    const-string/jumbo v5, "objcnt"

    const-string/jumbo v6, "size"

    const-string/jumbo v7, "max_count"

    const-string/jumbo v8, "max_size"

    const-string/jumbo v9, "ppr_count"

    const-string/jumbo v10, "ppr_reads"

    const-string/jumbo v11, "ppr_writes"

    const-string/jumbo v12, "ppr_objcnt"

    const-string/jumbo v13, "ppr_size"

    const-string/jumbo v14, "ppr_max_count"

    const-string/jumbo v15, "ppr_max_size"

    const-string/jumbo v16, "objreads"

    const-string/jumbo v17, "objwrites"

    .line 852
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    .line 860
    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 863
    :try_start_3c
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/zram0/bd_stat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1000

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 865
    :goto_56
    array-length v4, v2

    if-ge v3, v4, :cond_74

    .line 866
    iget-object v4, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6a} :catch_6d

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :catch_6d
    const-string v1, "NandswapManager"

    const-string v2, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 869
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_74
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBigdataInfoProp()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "reads"

    const-string/jumbo v1, "writes"

    const-string/jumbo v2, "max_count"

    const-string/jumbo v3, "max_size"

    const-string/jumbo v4, "ppr_reads"

    const-string/jumbo v5, "ppr_writes"

    const-string/jumbo v6, "ppr_max_count"

    const-string/jumbo v7, "ppr_max_size"

    const-string/jumbo v8, "objreads"

    const-string/jumbo v9, "objwrites"

    .line 938
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 945
    iget-boolean v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "persist.sys.zram0.bigdata_info"

    const-string v2, "None"

    .line 946
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 947
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-string v2, ","

    .line 948
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_42
    const/16 v4, 0xa

    if-ge v3, v4, :cond_8b

    .line 952
    :try_start_46
    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    aget-object v6, v0, v3

    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_5a

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :catch_5a
    move-exception v1

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBigdataInfo parseInt err - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NandswapManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move v1, v2

    :goto_7b
    if-ge v1, v4, :cond_8b

    .line 958
    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    aget-object v5, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 963
    :cond_8b
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getCountAverage()D
    .registers 3

    .line 903
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 904
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mcalcCountAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPprCountAverage()D
    .registers 3

    .line 915
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 916
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mcalcCountAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPprSizeAverage()D
    .registers 3

    .line 921
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 922
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mcalcSizeAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQuotaRemainingProp(I)I
    .registers 2

    const-string/jumbo p0, "persist.sys.zram.daily_quota_remain"

    .line 837
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getQuotaSysNode()I
    .registers 3

    .line 842
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/block/zram0/writeback_limit"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 843
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return p0

    :catch_18
    const-string p0, "NandswapManager"

    const-string v0, "Failed to read quota from /sys/block/zram0/writeback_limit"

    .line 845
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSizeAverage()D
    .registers 3

    .line 909
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 910
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mcalcSizeAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public initBigdataInfoProp()V
    .registers 2

    .line 967
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz p0, :cond_14

    const-string p0, "0,0,0,0,0,0,0,0,0,0"

    :try_start_6
    const-string/jumbo v0, "persist.sys.zram0.bigdata_info"

    .line 971
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    const-string p0, "NandswapManager"

    const-string v0, "Failed to init Bigdata Info..."

    .line 973
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public initBigdataState()V
    .registers 4

    .line 817
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/block/zram0/bd_stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1000

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 822
    array-length v0, v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    goto :goto_2d

    :cond_22
    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2d

    :catch_26
    const-string p0, "NandswapManager"

    const-string v0, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 828
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public initNandswapState()V
    .registers 2

    .line 800
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isWritebackEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 801
    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    goto :goto_d

    :cond_a
    const/4 v0, 0x0

    .line 803
    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    :goto_d
    return-void
.end method

.method public isExistBigdataInfoProp()Z
    .registers 2

    .line 928
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz p0, :cond_15

    const-string/jumbo p0, "persist.sys.zram0.bigdata_info"

    const-string v0, "None"

    .line 929
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 930
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isNandswapEnabled()Z
    .registers 2

    .line 808
    iget p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBigdata()Z
    .registers 1

    .line 833
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    return p0
.end method

.method public final isWritebackEnabled()Z
    .registers 4

    const-string p0, "NandswapManager"

    .line 785
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/block/zram0/backing_dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, ""

    .line 786
    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    .line 788
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2b

    :cond_25
    const-string v0, "Writeback device is not set"

    .line 791
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_2d

    goto :goto_32

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0

    :catch_2d
    const-string v0, "Writeback is not enabled on /sys/block/zram0/backing_dev"

    .line 794
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public resetBdStatSysNode()V
    .registers 2

    .line 876
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/block/zram0/bd_stat"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string p0, "NandswapManager"

    const-string v0, "Failed to reset stats from /sys/block/zram0/bd_stat"

    .line 878
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public saveStorageUsage()V
    .registers 4

    .line 891
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_56

    .line 892
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string v2, "count"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetCount(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 895
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetSize(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 896
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "ppr_count"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetCount(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 897
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v1, "ppr_size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetSize(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    const-string p0, "NandswapManager"

    const-string v0, "Saved storage usage successfully!!"

    .line 898
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return-void
.end method

.method public setBigdataInfoProp()V
    .registers 14

    .line 986
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_291

    .line 987
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    move-result-object v0

    .line 988
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v1

    .line 990
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const-string/jumbo v3, "persist.sys.zram0.bigdata_info"

    const-string v4, "NandswapManager"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_26c

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_26c

    .line 997
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v5, [Ljava/lang/Object;

    const-string/jumbo v9, "reads"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v11}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "%d,"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "writes"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v12}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v12

    sub-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "max_count"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "max_size"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "ppr_reads"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v12}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v12

    sub-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "ppr_writes"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v12}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v12

    sub-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "ppr_max_count"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "ppr_max_size"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "objreads"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {v12}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjReads(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v12

    sub-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    invoke-static {v7, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "objwrites"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-static {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$mgetPreviousObjWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    const-string p0, "%d"

    invoke-static {v7, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1012
    :try_start_25d
    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_260} :catch_266

    const-string p0, "Saved Bigdata Info successfully!!"

    .line 1017
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_291

    :catch_266
    const-string p0, "Failed to saved Bigdata Info..."

    .line 1014
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 991
    :cond_26c
    :goto_26c
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "%s(%d) or bd_stat(%d) is empty..."

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_291
    :goto_291
    return-void
.end method

.method public setPreviousInfo()V
    .registers 9

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_74

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 1025
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "reads"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "writes"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "objreads"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "objwrites"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v1, v2, v3, v5, v7}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetPreviousValue(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V

    .line 1026
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v1, "ppr_reads"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "ppr_writes"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->-$$Nest$msetPreviousValue(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V

    :cond_74
    return-void
.end method

.method public setQuotaSysNode(I)V
    .registers 3

    .line 884
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/block/zram0/writeback_limit"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    const-string p0, "NandswapManager"

    const-string p1, "Failed to write new quota to /sys/block/zram0/writeback_limit"

    .line 886
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
