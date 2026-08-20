.class public final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field public static final BUFFER_SLACK:F = 1.5f


# instance fields
.field public mCapacity:I

.field public mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

.field public mCount:I

.field public mEnd:I

.field public mLastLux:F

.field public mLastTime:J

.field public mRingLux:[F

.field public mRingTime:[J

.field public mStart:I


# direct methods
.method public constructor <init>(JILcom/android/server/display/AutomaticBrightnessController$Clock;)V
    .registers 7

    .line 2203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    int-to-float p3, p3

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p3, v0

    long-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double p1, p3

    .line 2207
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 2208
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 2209
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 2210
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    return-void

    .line 2205
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lightSensorRate must be above 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 2309
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 2310
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 2311
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return-void
.end method

.method public getLux(I)F
    .registers 7

    .line 2217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result p1

    aget p0, v0, p1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const-string p1, "AutomaticBrightnessController"

    const-string v0, "Catch nullpointer exception: getLux"

    .line 2219
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 2221
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 2223
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastLux:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2224
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastTime:J

    aput-wide v3, p1, v2

    .line 2226
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    const/4 p1, 0x1

    .line 2227
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 2228
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v1
.end method

.method public getTime(I)J
    .registers 3

    .line 2236
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public final offsetOf(I)I
    .registers 3

    .line 2333
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 2336
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 2337
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, p0, :cond_e

    sub-int/2addr p1, p0

    :cond_e
    return p1

    .line 2334
    :cond_f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public prune(J)V
    .registers 8

    .line 2276
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_5

    return-void

    .line 2280
    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 2281
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr v2, v1

    .line 2282
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v2, v1, :cond_12

    sub-int/2addr v2, v1

    .line 2285
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, p1

    if-lez v1, :cond_1b

    goto :goto_22

    .line 2295
    :cond_1b
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/lit8 v0, v0, -0x1

    .line 2296
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    goto :goto_5

    .line 2299
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v1, v0, p0

    cmp-long v1, v1, p1

    if-gez v1, :cond_2e

    .line 2300
    aput-wide p1, v0, p0

    :cond_2e
    return-void
.end method

.method public push(JF)V
    .registers 11

    .line 2240
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 2241
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_39

    mul-int/lit8 v0, v2, 0x2

    .line 2244
    new-array v1, v0, [F

    .line 2245
    new-array v4, v0, [J

    .line 2246
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v2, v5

    .line 2247
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v6, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2248
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2249
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v5, :cond_2e

    .line 2250
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v6, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2251
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    :cond_2e
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 2254
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 2256
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 2257
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 2258
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    move v0, v1

    .line 2260
    :cond_39
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v1, v0

    .line 2261
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v1, v0

    .line 2264
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastTime:J

    .line 2265
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastLux:F

    add-int/lit8 v0, v0, 0x1

    .line 2268
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 2269
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v0, p1, :cond_4f

    .line 2270
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 2272
    :cond_4f
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return-void
.end method

.method public size()I
    .registers 1

    .line 2305
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 2317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2318
    :goto_b
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v2, :cond_41

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_18

    .line 2319
    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    goto :goto_1e

    :cond_18
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v4

    :goto_1e
    if-eqz v1, :cond_25

    const-string v2, ", "

    .line 2321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    :cond_25
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    .line 2324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    .line 2326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_b

    :cond_41
    const/16 p0, 0x5d

    .line 2328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
