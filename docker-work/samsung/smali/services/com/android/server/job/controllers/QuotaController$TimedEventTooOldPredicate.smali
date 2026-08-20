.class public final Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedEventTooOldPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public mNowElapsed:J


# direct methods
.method public static bridge synthetic -$$Nest$mupdateNow(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->updateNow()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/job/controllers/QuotaController$TimedEvent;)Z
    .registers 6

    .line 2603
    invoke-interface {p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 2594
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimedEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateNow()V
    .registers 3

    .line 2598
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    return-void
.end method
