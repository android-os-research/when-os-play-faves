.class public final Lcom/android/server/am/PerProcessNandswap$ZramInfo;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZramInfo"
.end annotation


# static fields
.field public static final BDSTAT_COUNT:I = 0x1

.field public static final BDSTAT_EXPIRE:I = 0x0

.field public static final BDSTAT_MAX_LEN:I = 0x8

.field public static final BDSTAT_OBJCNT:I = 0x4

.field public static final BDSTAT_OBJCNT_PPR:I = 0x7

.field public static final BDSTAT_READS:I = 0x2

.field public static final BDSTAT_READS_PPR:I = 0x5

.field public static final BDSTAT_WRITES:I = 0x3

.field public static final BDSTAT_WRITES_PPR:I = 0x6

.field public static final TAG:Ljava/lang/String;

.field public static final ZRAM_BDSTAT_PATH:Ljava/lang/String; = "/sys/block/zram0/bd_stat"

.field public static final ZRAM_SWAP_FILE_PATH:Ljava/lang/String; = "/data/per_boot/zram_swap"

.field public static final ZRAM_WRITEBACK_LIMIT_ENABLE_PATH:Ljava/lang/String; = "/sys/block/zram0/writeback_limit_enable"

.field public static final ZRAM_WRITEBACK_LIMIT_PATH:Ljava/lang/String; = "/sys/block/zram0/writeback_limit"

.field public static mWritebackEnabled:I

.field public static mWritebackLimitEnabled:I


# direct methods
.method public static bridge synthetic -$$Nest$smisWritebackEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisWritebackLimitEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisWritebackQuotaAvailable()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smreadZramBdstat()[J
    .registers 1

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->readZramBdstat()[J

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smreadZramWritebackLimit()J
    .registers 2

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 2221
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2222
    sput v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 2223
    sput v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWritebackEnabled()Z
    .registers 5

    .line 2241
    sget v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_50

    .line 2242
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/block/zram0/writeback_limit"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2244
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/per_boot/zram_swap"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2246
    sput v2, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    goto :goto_37

    .line 2248
    :cond_24
    sget-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string v3, "/data/per_boot/zram_swap not exist"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    sput v1, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    goto :goto_37

    .line 2252
    :cond_2e
    sget-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string v3, "/sys/block/zram0/writeback_limit not exist"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    sput v1, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 2255
    :goto_37
    sget-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWritebackEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_50
    sget v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    if-ne v0, v2, :cond_55

    move v1, v2

    :cond_55
    return v1
.end method

.method public static isWritebackLimitEnabled()Z
    .registers 4

    .line 2262
    sget v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4c

    .line 2263
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/block/zram0/writeback_limit_enable"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_2a

    .line 2264
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 2265
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_2a

    goto :goto_33

    :catchall_20
    move-exception v2

    .line 2263
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    :try_start_26
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 2266
    :catch_2a
    sput v1, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 2267
    sget-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string v2, "failed to read /sys/block/zram0/writeback_limit_enable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :goto_33
    sget-object v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWritebackLimitEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_4c
    sget v0, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_52

    move v1, v2

    :cond_52
    return v1
.end method

.method public static isWritebackQuotaAvailable()Z
    .registers 4

    .line 2288
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static readZramBdstat()[J
    .registers 8

    const/4 v0, 0x0

    .line 2297
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/block/zram0/bd_stat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_61

    .line 2298
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    .line 2299
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/PerProcessNandswap$ZramInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/am/PerProcessNandswap$ZramInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v2

    .line 2306
    array-length v3, v2

    const/16 v4, 0xa

    if-le v3, v4, :cond_4d

    const/16 v3, 0x8

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v3, :cond_49

    const/4 v6, 0x5

    if-ge v5, v6, :cond_40

    .line 2310
    aget-wide v6, v2, v5

    aput-wide v6, v4, v5

    goto :goto_46

    :cond_40
    add-int/lit8 v6, v5, 0x4

    .line 2312
    aget-wide v6, v2, v6

    aput-wide v6, v4, v5
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_57

    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 2320
    :cond_49
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_61

    return-object v4

    .line 2318
    :cond_4d
    :try_start_4d
    array-length v3, v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_57

    const/4 v4, 0x7

    if-gt v3, v4, :cond_52

    move-object v2, v0

    .line 2320
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_61

    move-object v0, v2

    goto :goto_6e

    :catchall_57
    move-exception v2

    .line 2297
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_61

    .line 2322
    :catch_61
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2323
    sget-object v1, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string v2, "failed to read /sys/block/zram0/bd_stat"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_6e
    :goto_6e
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 2328
    sget-object v1, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bdstats : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return-object v0
.end method

.method public static readZramWritebackLimit()J
    .registers 5

    const-wide/16 v0, 0x0

    .line 2277
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/block/zram0/writeback_limit"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_24

    .line 2278
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 2279
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_24

    goto :goto_2b

    :catchall_1a
    move-exception v3

    .line 2277
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_24

    .line 2280
    :catch_24
    sget-object v2, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string v3, "failed to read /sys/block/zram0/writeback_limit"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-wide v0
.end method
