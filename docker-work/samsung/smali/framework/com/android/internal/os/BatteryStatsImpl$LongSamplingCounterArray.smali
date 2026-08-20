.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounterArray"
.end annotation


# instance fields
.field public greylist-max-o mCounts:[J

.field final greylist-max-o mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadSummaryFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteSummaryToParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2215
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2216
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2217
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2218
    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2209
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2210
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2212
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2213
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2301
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 2302
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0

    .line 2304
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2320
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2321
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2323
    .local v0, "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2324
    return-object v0

    .line 2326
    .end local v0    # "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2288
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2289
    return-void
.end method

.method private greylist-max-o writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2284
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2285
    return-void
.end method

.method public static greylist-max-o writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 2310
    if-eqz p1, :cond_a

    .line 2311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2312
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_e

    .line 2314
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    :goto_e
    return-void
.end method

.method private greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2221
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2222
    return-void
.end method

.method public static greylist-max-o writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 2292
    if-eqz p1, :cond_a

    .line 2293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_e

    .line 2296
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    :goto_e
    return-void
.end method


# virtual methods
.method public greylist-max-o addCountLocked([J)V
    .registers 3
    .param p1, "counts"    # [J

    .line 2243
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 2244
    return-void
.end method

.method public greylist-max-o addCountLocked([JZ)V
    .registers 9
    .param p1, "counts"    # [J
    .param p2, "isRunning"    # Z

    .line 2247
    if-nez p1, :cond_3

    .line 2248
    return-void

    .line 2250
    :cond_3
    if-eqz p2, :cond_1e

    .line 2251
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_e

    .line 2252
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2254
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1e

    .line 2255
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 2254
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2258
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public greylist-max-o detach()V
    .registers 2

    .line 2280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2281
    return-void
.end method

.method public greylist-max-o getCountsLocked(I)[J
    .registers 4
    .param p1, "which"    # I

    .line 2234
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public greylist-max-o getSize()I
    .registers 2

    .line 2261
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2240
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .registers 7
    .param p1, "elapsedRealTimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2226
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2230
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .registers 7
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2269
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-eqz v0, :cond_9

    .line 2270
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 2272
    :cond_9
    if-eqz p1, :cond_e

    .line 2273
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 2275
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
