.class public final Lcom/android/server/stats/pull/IonMemoryUtil;
.super Ljava/lang/Object;
.source "IonMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    }
.end annotation


# static fields
.field public static final DEBUG_SYSTEM_ION_HEAP_FILE:Ljava/lang/String; = "/sys/kernel/debug/ion/heaps/system"

.field public static final ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field public static final PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String; = "IonMemoryUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\n\\s*total\\s*(\\d+)\\s*\n"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    const-string v0, "\n\\s+\\S+\\s+(\\d+)\\s+(\\d+)"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    .line 69
    :cond_9
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 71
    :try_start_f
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1e} :catch_1f

    :cond_1e
    return-wide v1

    :catch_1f
    move-exception p0

    const-string v0, "IonMemoryUtil"

    const-string v3, "Failed to parse value"

    .line 73
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method public static parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 100
    :goto_16
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x1

    .line 102
    :try_start_1d
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 103
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 104
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    if-nez v5, :cond_3e

    .line 106
    new-instance v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-direct {v5}, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;-><init>()V

    .line 107
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_3e
    iput v2, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 110
    iget-wide v6, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    .line 111
    iget v2, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    add-int/2addr v2, v1

    iput v2, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    .line 112
    iget-wide v1, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v5, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_52} :catch_53

    goto :goto_16

    :catch_53
    move-exception v1

    const-string v2, "IonMemoryUtil"

    const-string v3, "Failed to parse value"

    .line 114
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 118
    :cond_5c
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 119
    :goto_66
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 120
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_78
    return-object p0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    const-string v0, "IonMemoryUtil"

    const-string v1, "Failed to read file"

    .line 130
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public static readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    .line 85
    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readSystemIonHeapSizeFromDebugfs()J
    .registers 2

    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    .line 57
    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
