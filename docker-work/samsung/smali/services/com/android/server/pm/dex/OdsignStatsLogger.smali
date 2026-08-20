.class public Lcom/android/server/pm/dex/OdsignStatsLogger;
.super Ljava/lang/Object;
.source "OdsignStatsLogger.java"


# static fields
.field public static final COMPOS_METRIC_NAME:Ljava/lang/String; = "comp_os_artifacts_check_record"

.field public static final METRICS_FILE:Ljava/lang/String; = "/data/misc/odsign/metrics/odsign-metrics.txt"

.field public static final TAG:Ljava/lang/String; = "OdsignStatsLogger"


# direct methods
.method public static synthetic $r8$lambda$5IgqqBRRaURrVhBA9xD6mm8mpzY()V
    .registers 0

    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->writeStats()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static triggerStatsWrite()V
    .registers 2

    .line 47
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static writeStats()V
    .registers 10

    const-string v0, "/data/misc/odsign/metrics/odsign-metrics.txt"

    const-string v1, "1"

    const-string v2, "OdsignStatsLogger"

    .line 52
    :try_start_6
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Failed to delete metrics file"

    .line 57
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string v0, "\n"

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_65

    aget-object v6, v0, v5

    const-string v7, " "

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 67
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_59

    aget-object v7, v6, v4

    const-string v8, "comp_os_artifacts_check_record"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_59

    :cond_3c
    const/4 v7, 0x1

    .line 72
    aget-object v7, v6, v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    .line 73
    aget-object v8, v6, v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    .line 74
    aget-object v6, v6, v9

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v9, 0x1a3

    .line 76
    invoke-static {v9, v7, v8, v6}, Lcom/android/internal/art/ArtStatsLog;->write(IZZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_59
    :goto_59
    const-string v0, "Malformed metrics file"

    .line 68
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_5e} :catch_65
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception v0

    const-string v1, "Reading metrics file failed"

    .line 83
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_65
    :cond_65
    :goto_65
    return-void
.end method
