.class public Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuDeltaPowerAccumulator"
.end annotation


# instance fields
.field private blacklist mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field private final blacklist mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

.field private blacklist mUidClusterCache:[D

.field public final blacklist perUidCpuClusterChargesMah:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "[D>;"
        }
    .end annotation
.end field

.field public final blacklist totalClusterChargesMah:[D


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/CpuPowerCalculator;I)V
    .registers 4
    .param p1, "calculator"    # Lcom/android/internal/os/CpuPowerCalculator;
    .param p2, "nClusters"    # I

    .line 17337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 17335
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 17338
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    .line 17339
    new-array v0, p2, [D

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 17340
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    .line 17341
    return-void
.end method

.method private blacklist getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D
    .registers 4
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 17367
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object v0

    .line 17369
    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 17370
    .local v0, "uidChargesMah":[D
    if-nez v0, :cond_1b

    .line 17371
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 17372
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17374
    :cond_1b
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 17375
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 17376
    return-object v0
.end method


# virtual methods
.method public blacklist addCpuClusterDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;[J)V
    .registers 10
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "durationsMs"    # [J

    .line 17345
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    .line 17346
    .local v0, "uidChargesMah":[D
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_1f

    .line 17347
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    aget-wide v3, p2, v1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuClusterPowerMah(IJ)D

    move-result-wide v2

    .line 17349
    .local v2, "estimatedDeltaMah":D
    aget-wide v4, v0, v1

    add-double/2addr v4, v2

    aput-wide v4, v0, v1

    .line 17350
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v5, v4, v1

    add-double/2addr v5, v2

    aput-wide v5, v4, v1

    .line 17346
    .end local v2    # "estimatedDeltaMah":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17352
    .end local v1    # "cluster":I
    :cond_1f
    return-void
.end method

.method public blacklist addCpuClusterSpeedDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;IIJ)V
    .registers 12
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "cluster"    # I
    .param p3, "speed"    # I
    .param p4, "durationsMs"    # J

    .line 17357
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    .line 17358
    .local v0, "uidChargesMah":[D
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuFreqPowerMah(IIJ)D

    move-result-wide v1

    .line 17360
    .local v1, "estimatedDeltaMah":D
    aget-wide v3, v0, p2

    add-double/2addr v3, v1

    aput-wide v3, v0, p2

    .line 17361
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v4, v3, p2

    add-double/2addr v4, v1

    aput-wide v4, v3, p2

    .line 17362
    return-void
.end method
