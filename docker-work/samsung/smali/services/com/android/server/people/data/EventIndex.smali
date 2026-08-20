.class public Lcom/android/server/people/data/EventIndex;
.super Ljava/lang/Object;
.source "EventIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventIndex$Injector;,
        Lcom/android/server/people/data/EventIndex$TimeSlotType;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/server/people/data/EventIndex;

.field public static final RETENTION_DAYS:I = 0x3f

.field public static final TAG:Ljava/lang/String; = "EventIndex"

.field public static final TIME_SLOT_FACTORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Function<",
            "Ljava/lang/Long;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final TIME_SLOT_FOUR_HOURS:I = 0x1

.field public static final TIME_SLOT_ONE_DAY:I = 0x0

.field public static final TIME_SLOT_ONE_HOUR:I = 0x2

.field public static final TIME_SLOT_TWO_MINUTES:I = 0x3

.field public static final TIME_SLOT_TYPES_COUNT:I = 0x4


# instance fields
.field public final mEventBitmaps:[J

.field public final mInjector:Lcom/android/server/people/data/EventIndex$Injector;

.field public mLastUpdatedTime:J

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$Z0TvfTrZD5p3vWOd81wN3kjR-3Y(J)Landroid/util/Range;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createTwoMinutesLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i3NyDYgz20fi26r3acGyjk-ocyM(J)Landroid/util/Range;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createFourHoursLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ky5s_Q51WvF3zZTzaSUFPNb-wB4(J)Landroid/util/Range;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createOneHourLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oObI4tb0P1GmvfZmYp2X84WEua0(J)Landroid/util/Range;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->createOneDayLongTimeSlot(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 93
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    sput-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Function;

    .line 95
    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 128
    new-instance v0, Lcom/android/server/people/data/EventIndex$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 137
    fill-array-data v0, :array_e

    invoke-virtual {p1}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-void

    :array_e
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V
    .registers 6

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    const/4 p1, 0x4

    .line 142
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 143
    iput-wide p3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex;)V
    .registers 6

    .line 132
    iget-object v0, p1, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    iget-object v1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-void
.end method

.method public static combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;
    .registers 8

    .line 107
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    move-object v4, p0

    goto :goto_b

    :cond_a
    move-object v4, p1

    :goto_b
    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, p1

    .line 110
    :goto_11
    new-instance p1, Lcom/android/server/people/data/EventIndex;

    invoke-direct {p1, v4}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    .line 111
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    const/4 v0, 0x0

    :goto_1c
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2d

    .line 114
    iget-object v1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v2, v1, v0

    iget-object v4, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v4, v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2d
    return-object p1
.end method

.method public static combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 365
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 367
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 368
    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 369
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 372
    :cond_2d
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_49

    .line 373
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 376
    :cond_49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 380
    :cond_4f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 381
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_72

    .line 382
    :cond_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_72

    .line 383
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_72
    :goto_72
    return-object v0
.end method

.method public static createFourHoursLongTimeSlot(J)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    .line 404
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    rem-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 405
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static createOneDayLongTimeSlot(J)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 394
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static createOneHourLongTimeSlot(J)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 414
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static createTwoMinutesLongTimeSlot(J)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    .line 423
    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->toLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object p1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    rem-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 424
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 425
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->toEpochMilli(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static diffTimeSlots(IJJ)I
    .registers 7

    .line 324
    sget-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Function;

    .line 325
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 326
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 327
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-static {p1}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide p0

    div-long/2addr p2, p0

    long-to-int p0, p2

    return p0
.end method

.method public static getDuration(Landroid/util/Range;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 288
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4b

    .line 289
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    .line 299
    sget-object v4, Lcom/android/server/people/data/EventIndex;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read undefined field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_32
    const-wide v2, 0x10300000002L

    .line 295
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    goto :goto_6

    :cond_3c
    add-int/lit8 v4, v1, 0x1

    const-wide v5, 0x20300000001L

    .line 291
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v4

    goto :goto_6

    .line 303
    :cond_4b
    new-instance p0, Lcom/android/server/people/data/EventIndex;

    new-instance v1, Lcom/android/server/people/data/EventIndex$Injector;

    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-object p0
.end method

.method public static toEpochMilli(Ljava/time/LocalDateTime;)J
    .registers 3

    .line 312
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLocalDateTime(J)Ljava/time/LocalDateTime;
    .registers 2

    .line 308
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    .line 307
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEvent(J)V
    .registers 13

    .line 204
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    if-eq v0, p0, :cond_2e

    .line 207
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_7
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    invoke-virtual {p0, v1, v2}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x4

    if-ge v3, v4, :cond_29

    .line 211
    invoke-static {v3, p1, p2, v1, v2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_26

    .line 213
    iget-object v5, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    aput-wide v6, v5, v3

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 216
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw p0

    .line 205
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "EMPTY instance is immutable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 247
    :cond_4
    instance-of v1, p1, Lcom/android/server/people/data/EventIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 250
    :cond_a
    check-cast p1, Lcom/android/server/people/data/EventIndex;

    .line 251
    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    iget-wide v5, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1f

    iget-object p0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    iget-object p1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 252
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method public getActiveTimeSlots()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x4

    if-ge v2, v3, :cond_17

    .line 180
    :try_start_c
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlotsForType(I)Ljava/util/List;

    move-result-object v3

    .line 179
    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 182
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0

    :catchall_1c
    move-exception p0

    .line 182
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final getActiveTimeSlotsForType(I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v0, v0, p1

    .line 336
    sget-object v2, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 337
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 338
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide p0

    .line 339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2b
    :goto_2b
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_54

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    if-lez v7, :cond_3b

    int-to-long v8, v7

    mul-long/2addr v8, p0

    sub-long/2addr v2, v8

    ushr-long/2addr v0, v7

    :cond_3b
    cmp-long v5, v0, v5

    if-eqz v5, :cond_2b

    .line 347
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-long v6, v2, p0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long/2addr v2, p0

    const/4 v5, 0x1

    ushr-long/2addr v0, v5

    goto :goto_2b

    :cond_54
    return-object v4
.end method

.method public getMostRecentActiveTimeSlot()Landroid/util/Range;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :goto_4
    if-ltz v1, :cond_59

    .line 154
    :try_start_6
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 157
    :cond_13
    sget-object v2, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 158
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 159
    iget-object p0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    .line 160
    invoke-static {v2}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide v3

    int-to-long v5, p0

    mul-long/2addr v3, v5

    .line 161
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 162
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 161
    invoke-static {p0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 164
    :cond_59
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 257
    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 8

    .line 189
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_17

    .line 191
    :try_start_8
    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    .line 192
    monitor-exit v0

    return v1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 195
    :cond_17
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventIndex {"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "perDayEventBitmap=0b"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perFourHoursEventBitmap=0b"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perHourEventBitmap=0b"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perTwoMinutesEventBitmap=0b"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const/4 v2, 0x3

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdatedTime="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-wide v1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    const-string/jumbo p0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventIndex$Injector;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    return-void
.end method

.method public final updateEventBitmaps(J)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_20

    .line 270
    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_17

    .line 272
    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v4, v3, v1

    shl-long/2addr v4, v2

    aput-wide v4, v3, v1

    goto :goto_1d

    .line 274
    :cond_17
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    :cond_20
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v2, v1, v0

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    aput-wide v2, v1, v0

    ushr-long/2addr v2, v4

    .line 280
    aput-wide v2, v1, v0

    .line 281
    iput-wide p1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    return-void
.end method

.method public declared-synchronized writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    const-wide v5, 0x20300000001L

    .line 262
    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    const-wide v0, 0x10300000002L

    .line 264
    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 265
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
