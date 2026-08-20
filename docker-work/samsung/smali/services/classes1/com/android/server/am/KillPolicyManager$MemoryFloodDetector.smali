.class public Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryFloodDetector"
.end annotation


# static fields
.field public static final SYS_PROP_PMM_NATIVE_DUMP:Ljava/lang/String; = "sys.pmm.nativemse"


# instance fields
.field public mFirstUptimeMillis:J

.field public mIntercept:D

.field public mLastCalculatedNative:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLastCalculatedSysPers:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLastRealTimeMillis:J

.field public mLastUptimeMillis:J

.field public mNativeMemDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPersistentMemDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPmmCycleCountOnPlatformReset:I

.field public mSlope:D

.field public mSystemMemDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static synthetic $r8$lambda$9WT-xITj2FcpBiGMhFGRM7Tw9p0(Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->lambda$getJsonSummary$0(Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 4

    .line 3820
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3804
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 3805
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 3806
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 3807
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 3808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mFirstUptimeMillis:J

    .line 3809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    const/4 p1, 0x0

    .line 3815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3813
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    .line 3815
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 3816
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    return-void
.end method

.method public static synthetic lambda$getJsonSummary$0(Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;)J
    .registers 5

    .line 3982
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public calculateMemoryFlood()V
    .registers 15

    .line 4078
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result v1

    const-string v2, " => "

    const-string v3, "ActivityManager_KPM"

    const-string v4, ", "

    if-lt v0, v1, :cond_6f

    .line 4079
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 4081
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4082
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 4083
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    int-to-double v9, v1

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 4085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "nativeFactor : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    new-instance v0, Landroid/util/Pair;

    double-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    double-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    .line 4090
    :cond_6f
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result v1

    if-lt v0, v1, :cond_103

    .line 4091
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 4092
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 4094
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 4095
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 4096
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    add-double/2addr v8, v6

    .line 4098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sysFactor : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " persFactor : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    new-instance v0, Landroid/util/Pair;

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    double-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    :cond_103
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "MemoryFloodDetector"

    .line 4047
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 4050
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    const-string/jumbo v1, "native"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 4052
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 4053
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    const-string/jumbo v1, "sys"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 4054
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    const-string/jumbo v1, "pers"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    :cond_2d
    return-void
.end method

.method public dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;)V"
        }
    .end annotation

    .line 4059
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " : "

    .line 4060
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4062
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 4063
    iget-object p3, p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    sget-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    if-ne p3, v0, :cond_21

    const-string p3, " I "

    goto :goto_23

    :cond_21
    const-string p3, " P "

    :goto_23
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4064
    iget-wide p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_c

    .line 4067
    :cond_2c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getCompactList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;"
        }
    .end annotation

    .line 4037
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 4039
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 4040
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_18
    return-object p0
.end method

.method public getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 3980
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 3981
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 3982
    invoke-interface {v0}, Ljava/util/stream/LongStream;->summaryStatistics()Ljava/util/LongSummaryStatistics;

    move-result-object v0

    .line 3983
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 3984
    invoke-virtual {v0}, Ljava/util/LongSummaryStatistics;->getMin()J

    move-result-wide v5

    .line 3983
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v1

    .line 3984
    invoke-virtual {v0}, Ljava/util/LongSummaryStatistics;->getMax()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v1

    .line 3985
    invoke-virtual {v0}, Ljava/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 3984
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 3985
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    return-object p0
.end method

.method public getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    move-wide v6, v4

    :goto_a
    if-ge v3, p0, :cond_1b

    int-to-double v8, v3

    add-double/2addr v4, v8

    .line 4127
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v8, v8, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    long-to-double v8, v8

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    int-to-double v8, p0

    div-double/2addr v4, v8

    div-double/2addr v6, v8

    move-wide v8, v1

    :goto_1f
    if-ge v0, p0, :cond_45

    int-to-double v10, v0

    sub-double/2addr v10, v4

    mul-double v12, v10, v10

    add-double/2addr v8, v12

    .line 4135
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 4136
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    long-to-double v12, v12

    sub-double/2addr v12, v6

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_45
    div-double/2addr v1, v8

    mul-double/2addr v4, v1

    sub-double/2addr v6, v4

    .line 4141
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J
    .registers 7

    .line 3908
    iget-object p0, p2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 3909
    iget-object p0, p2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 p1, 0x0

    .line 3910
    aget-wide p1, p0, p1

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    add-long/2addr p1, v0

    cmp-long p0, p1, p3

    if-gez p0, :cond_1c

    move-wide p3, p1

    :cond_1c
    return-wide p3
.end method

.method public isFlood(DDZ)Z
    .registers 8

    if-eqz p5, :cond_7

    .line 4071
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNativeFloodRatio()I

    move-result p0

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsSyspersFloodRatio()I

    move-result p0

    :goto_b
    add-int/lit8 p0, p0, 0x64

    int-to-double v0, p0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, v0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public isRequiredKernelReset()Z
    .registers 8

    .line 4113
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 4117
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isFlood(DDZ)Z

    move-result p0

    return p0
.end method

.method public isRequiredPlatformReset()Z
    .registers 8

    .line 4105
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 4109
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isFlood(DDZ)Z

    move-result p0

    return p0
.end method

.method public loadNativeDumpProperty()V
    .registers 15

    const-string/jumbo v0, "sys.pmm.nativemse"

    const-string v1, ""

    .line 3845
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3848
    :try_start_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, ","

    .line 3849
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3851
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6e

    const/4 v1, 0x0

    .line 3852
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    .line 3853
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x2

    .line 3854
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_2e
    if-ge v1, v7, :cond_45

    .line 3857
    iget-object v8, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v10, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    int-to-double v11, v1

    mul-double/2addr v11, v5

    add-double/2addr v11, v3

    double-to-long v11, v11

    sget-object v13, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 3860
    :cond_45
    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_6e

    .line 3861
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_51} :catch_52

    goto :goto_6e

    :catch_52
    move-exception p0

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadNativeDumpProperty exception ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager_KPM"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onDeviceIdleChanged(Z)V
    .registers 12

    if-eqz p1, :cond_68

    .line 3825
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->loadNativeDumpProperty()V

    .line 3829
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3832
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8

    cmp-long p1, v4, v8

    if-gtz p1, :cond_37

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long v4, v2, v4

    .line 3833
    invoke-static {v6, v7}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_3a

    .line 3834
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->recordPmmDump()V

    .line 3836
    :cond_3a
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long/2addr v0, v4

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNeverCollectWithin()I

    move-result p1

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-gtz p1, :cond_62

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNeverCollectWithin()I

    move-result p1

    int-to-long v0, p1

    .line 3837
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-lez p1, :cond_68

    .line 3838
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->recordIdleMemDump()V

    .line 3839
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->saveNativeDumpProperty()V

    :cond_68
    return-void
.end method

.method public recordIdleMemDump()V
    .registers 15

    .line 3921
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsCompactTriggerSize()I

    move-result v1

    if-le v0, v1, :cond_14

    .line 3922
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    .line 3925
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsCompactTriggerSize()I

    move-result v1

    if-le v0, v1, :cond_28

    .line 3926
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    .line 3929
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsCompactTriggerSize()I

    move-result v1

    if-le v0, v1, :cond_3c

    .line 3930
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getCompactList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    .line 3933
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_c1

    .line 3937
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c1

    .line 3938
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    :cond_57
    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3939
    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_57

    .line 3940
    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_13e

    goto :goto_a8

    :sswitch_79
    const-string/jumbo v12, "pers"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_83

    goto :goto_a8

    :cond_83
    const/4 v11, 0x3

    goto :goto_a8

    :sswitch_85
    const-string/jumbo v12, "sys"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8f

    goto :goto_a8

    :cond_8f
    const/4 v11, 0x2

    goto :goto_a8

    :sswitch_91
    const-string/jumbo v12, "persvc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9b

    goto :goto_a8

    :cond_9b
    const/4 v11, 0x1

    goto :goto_a8

    :sswitch_9d
    const-string/jumbo v12, "native"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v11, 0x0

    :goto_a8
    packed-switch v11, :pswitch_data_150

    goto :goto_57

    .line 3945
    :pswitch_ac
    iget-wide v10, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v10, v12

    add-long/2addr v5, v10

    goto :goto_57

    .line 3949
    :pswitch_b3
    iget-wide v10, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v10, v12

    add-long/2addr v7, v10

    goto :goto_57

    .line 3942
    :pswitch_ba
    iget-wide v10, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v10, v12

    add-long/2addr v3, v10

    goto :goto_57

    :cond_c1
    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    :cond_c4
    cmp-long v0, v3, v1

    if-lez v0, :cond_d6

    .line 3960
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v10, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    sget-object v11, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v9, v10, v3, v4, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d6
    cmp-long v0, v5, v1

    if-lez v0, :cond_e8

    .line 3964
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v10, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    sget-object v11, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v9, v10, v5, v6, v11}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e8
    cmp-long v0, v7, v1

    if-lez v0, :cond_fa

    .line 3968
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    sget-object v9, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3971
    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recordIdleMemDump ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") added. total size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->reportMemoryFlood2Hqm()V

    .line 3975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    .line 3976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    return-void

    nop

    :sswitch_data_13e
    .sparse-switch
        -0x3ebdafe9 -> :sswitch_9d
        -0x3b1c63dd -> :sswitch_91
        0x1becd -> :sswitch_85
        0x3472f6 -> :sswitch_79
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_b3
        :pswitch_ac
        :pswitch_b3
    .end packed-switch
.end method

.method public recordPmmDump()V
    .registers 19

    move-object/from16 v0, p0

    .line 3885
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, 0x7fffffffffffffffL

    const-wide v12, 0x7fffffffffffffffL

    :goto_1e
    if-ge v5, v2, :cond_5d

    aget-object v14, v1, v5

    if-eqz v14, :cond_52

    .line 3886
    iget-object v15, v14, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    if-nez v15, :cond_29

    goto :goto_52

    .line 3890
    :cond_29
    iget-wide v3, v14, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_56

    const-string/jumbo v1, "native"

    .line 3891
    invoke-virtual {v0, v1, v14, v6, v7}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v6

    const-string/jumbo v1, "sys"

    .line 3892
    invoke-virtual {v0, v1, v14, v8, v9}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v8

    const-string/jumbo v1, "pers"

    .line 3893
    invoke-virtual {v0, v1, v14, v10, v11}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v10

    const-string/jumbo v1, "persvc"

    .line 3894
    invoke-virtual {v0, v1, v14, v12, v13}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J

    move-result-wide v12

    goto :goto_56

    :cond_52
    :goto_52
    move-object/from16 v16, v1

    move/from16 v17, v2

    :cond_56
    :goto_56
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1e

    :cond_5d
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v1, v6

    if-eqz v1, :cond_8d

    .line 3899
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    sget-object v4, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-direct {v2, v3, v6, v7, v4}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3900
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v2, v3, v8, v9, v4}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3901
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    add-long/2addr v12, v10

    invoke-direct {v2, v3, v12, v13, v4}, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;-><init>(Lcom/android/server/am/KillPolicyManager;JLcom/android/server/am/KillPolicyManager$MemoryLoggingType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3904
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordPmmDump ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") added. total size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportMemoryFlood2Hqm()V
    .registers 13

    const-string v0, "ActivityManager_KPM"

    const/4 v1, 0x0

    .line 3995
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "TYPE"

    const/4 v4, 0x3

    .line 3997
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4000
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 4001
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v4, v6

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 4002
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 4003
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 4004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    sub-long/2addr v6, v10

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v6, v6

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 4005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    sub-long/2addr v6, v10

    long-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    add-double/2addr v5, v8

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v4, "DITI"

    .line 4006
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4009
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7b

    const-string v3, "FNAI"

    .line 4010
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4014
    :cond_7b
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8e

    const-string v3, "FSAI"

    .line 4015
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4019
    :cond_8e
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a1

    const-string v3, "FPAI"

    .line 4020
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4023
    :cond_a1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4024
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_af} :catch_b0

    goto :goto_b5

    :catch_b0
    const-string v2, "failed to create the KPUT"

    .line 4026
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    :goto_b5
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_cd

    .line 4030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to HQM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    :cond_cd
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v0, "KPUT"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNativeDumpProperty()V
    .registers 6

    const-string v0, ","

    .line 3871
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7d

    .line 3873
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 3874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPolicyMetric(Lcom/android/server/am/KillPolicyManager;)I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.pmm.nativemse"

    .line 3875
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_60} :catch_61

    goto :goto_7d

    :catch_61
    move-exception p0

    .line 3877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveNativeDumpProperty exception ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager_KPM"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    return-void
.end method
