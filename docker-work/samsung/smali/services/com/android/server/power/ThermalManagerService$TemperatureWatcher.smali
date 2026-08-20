.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemperatureWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    }
.end annotation


# static fields
.field public static final DEGREES_BETWEEN_ZERO_AND_ONE:F = 30.0f

.field public static final INACTIVITY_THRESHOLD_MILLIS:I = 0x2710

.field public static final MINIMUM_SAMPLE_COUNT:I = 0x3

.field public static final RING_BUFFER_SIZE:I = 0x1e


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mInactivityThresholdMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLastForecastCallTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSamples"
        }
    .end annotation
.end field

.field public final mSamples:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSamples"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSevereThresholds:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSamples"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$8xDMWptfe4Po_y2hgZAOQwOG-zA(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->lambda$updateTemperature$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YkIIdol_gv-0HgY3geOYld_CxYU(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 4

    .line 1087
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1091
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 1096
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 1100
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    const-wide/16 v0, 0x2710

    .line 1104
    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    return-void
.end method

.method public static synthetic lambda$updateTemperature$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 1156
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1274
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    return-object v0
.end method

.method public getForecast(I)F
    .registers 10

    .line 1216
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1217
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 1218
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperature()V

    .line 1224
    :cond_14
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_29

    .line 1225
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No temperature samples found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    monitor-exit v0

    return v2

    .line 1231
    :cond_29
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1232
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No temperature thresholds found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    monitor-exit v0

    return v2

    .line 1237
    :cond_3c
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_46
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1238
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1241
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-nez v5, :cond_81

    .line 1243
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No threshold found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_81
    const/4 v4, 0x0

    .line 1247
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v4, v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 1249
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_a5

    .line 1251
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 1252
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_46

    :cond_a3
    :goto_a3
    move v2, v3

    goto :goto_46

    .line 1258
    :cond_a5
    invoke-virtual {p0, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v3

    int-to-float v6, p1

    mul-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 1260
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1259
    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 1261
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_46

    goto :goto_a3

    .line 1266
    :cond_c2
    monitor-exit v0

    return v2

    :catchall_c4
    move-exception p0

    .line 1267
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_c4

    throw p0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, p0

    move v6, v0

    move-wide v4, v1

    .line 1173
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1c

    .line 1174
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1175
    iget-wide v8, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v4, v8

    .line 1176
    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1178
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v7, v3

    div-long/2addr v4, v7

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 1183
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_43

    .line 1184
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 1185
    iget-wide v7, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v7, v4

    .line 1186
    iget v3, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v3, v6

    mul-long v9, v7, v7

    add-long/2addr v1, v9

    long-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v0, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_43
    long-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method public normalizeTemperature(FF)F
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1203
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p0

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p2, v0

    cmpg-float v1, p1, p2

    if-gtz v1, :cond_d

    const/4 p1, 0x0

    .line 1206
    :try_start_b
    monitor-exit p0

    return p1

    :cond_d
    sub-float/2addr p1, p2

    div-float/2addr p1, v0

    .line 1209
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    .line 1210
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p1
.end method

.method public updateSevereThresholds()V
    .registers 8

    .line 1108
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 1110
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3c

    .line 1112
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    .line 1113
    iget-object v5, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v6, v5

    if-gt v6, v3, :cond_22

    goto :goto_39

    .line 1116
    :cond_22
    aget v5, v5, v3

    .line 1118
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1119
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v4, v4, v3

    .line 1120
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1119
    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1123
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final updateTemperature()V
    .registers 11

    .line 1129
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1130
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_72

    .line 1134
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1143
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 1146
    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_70

    .line 1147
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    .line 1151
    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_6d

    .line 1155
    :cond_45
    iget-object v7, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1157
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x1e

    if-ne v8, v9, :cond_61

    .line 1158
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1160
    :cond_61
    new-instance v8, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v6

    invoke-direct {v8, p0, v1, v2, v6}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1162
    :cond_70
    monitor-exit v0

    return-void

    .line 1138
    :cond_72
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 1139
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    .line 1162
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p0
.end method
