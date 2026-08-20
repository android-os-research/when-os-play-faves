.class public final Lcom/android/server/am/Pageboost$MemUsageCollector;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemUsageCollector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectAnon(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    .line 2278
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static collectGPUMem(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    const/16 v0, 0xf

    .line 2286
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result p0

    return p0
.end method

.method public static collectIONMem(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    const/16 v0, 0xe

    .line 2282
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result p0

    return p0
.end method

.method public static collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 8

    .line 2251
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    .line 2259
    :cond_6
    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2260
    invoke-static {v0, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 2263
    invoke-static {v2}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectAnon(Landroid/os/Debug$MemoryInfo;)I

    move-result v3

    if-gtz v3, :cond_15

    return v1

    .line 2267
    :cond_15
    invoke-static {v2}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectIONMem(Landroid/os/Debug$MemoryInfo;)I

    move-result v1

    .line 2268
    invoke-static {v2}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectGPUMem(Landroid/os/Debug$MemoryInfo;)I

    move-result v2

    .line 2270
    new-instance v4, Lcom/android/server/am/Pageboost$MemUsage;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/am/Pageboost$MemUsage;-><init>(III)V

    .line 2271
    invoke-virtual {p0, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setMemUsage(Lcom/android/server/am/Pageboost$MemUsage;)V

    .line 2272
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "memUsage collected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
