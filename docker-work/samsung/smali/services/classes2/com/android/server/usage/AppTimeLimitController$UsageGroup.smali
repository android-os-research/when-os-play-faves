.class public abstract Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "UsageGroup"
.end annotation


# instance fields
.field public mActives:I

.field public mLastKnownUsageTimeMs:J

.field public mLastUsageEndTimeMs:J

.field public mLimitReachedCallback:Landroid/app/PendingIntent;

.field public mObserved:[Ljava/lang/String;

.field public mObserverAppRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field public mObserverId:I

.field public mTimeLimitMs:J

.field public mUsageTimeMs:J

.field public mUserRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .registers 9

    .line 266
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    .line 268
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 269
    iput p4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 270
    iput-object p5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 271
    iput-wide p6, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 272
    iput-object p8, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public checkTimeout(J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_b

    return-void

    .line 376
    :cond_b
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_17

    return-void

    .line 388
    :cond_17
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->isActive([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 392
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v3, p1, v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_34

    .line 396
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 397
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 398
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    goto :goto_3a

    .line 401
    :cond_34
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    sub-long/2addr v1, v3

    invoke-static {p1, p0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "        Group id="

    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " timeLimit="

    .line 421
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " used="

    .line 423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " lastKnownUsage="

    .line 425
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " mActives="

    .line 427
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " observed="

    .line 429
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getTimeLimitMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 276
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    return-wide v0
.end method

.method public getUsageTimeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 279
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    return-wide v0
.end method

.method public noteUsageStart(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    return-void
.end method

.method public noteUsageStart(JJ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 298
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const-string v2, "AppTimeLimitController"

    if-nez v0, :cond_68

    .line 304
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    cmp-long v3, v0, p1

    if-lez v3, :cond_11

    move-wide p1, v0

    .line 305
    :cond_11
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 306
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v3

    sub-long/2addr v0, p3

    add-long/2addr v0, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_ab

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posting time out for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms ,mTimeLimitMs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ,mUsageTimeMs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ,currentTimeMs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ,startTimeMs : "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    goto :goto_ab

    .line 324
    :cond_68
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length p2, p1

    if-le v1, p2, :cond_ab

    .line 326
    array-length p1, p1

    iput p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 327
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez p1, :cond_7b

    return-void

    .line 329
    :cond_7b
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many noted usage starts! Observed entities: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 331
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   Active Entities: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 330
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    return-void
.end method

.method public noteUsageStop(J)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 339
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    const-string v2, "AppTimeLimitController"

    const/4 v3, 0x0

    if-nez v0, :cond_63

    .line 340
    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v6, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v3

    .line 341
    :goto_15
    iget-wide v8, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long v8, p1, v8

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 343
    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    if-eqz v1, :cond_29

    cmp-long p1, v4, v6

    if-ltz p1, :cond_29

    .line 347
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 350
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Posting time out for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for  ,mTimeLimitMs : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ,mUsageTimeMs : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ,mLastUsageEndTimeMs : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1, p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$mcancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    goto :goto_a2

    :cond_63
    if-gez v0, :cond_a2

    .line 360
    iput v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 361
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez p1, :cond_72

    return-void

    .line 363
    :cond_72
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many noted usage stops! Observed entities: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 365
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   Active Entities: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    :goto_a2
    return-void
.end method

.method public onLimitReached()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_b

    return-void

    .line 411
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 412
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->-$$Nest$fgetuserId(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v7, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v9, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v9}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    :cond_28
    return-void
.end method

.method public remove()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-eqz v0, :cond_d

    .line 285
    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->removeUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    :cond_d
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLimitReachedCallback:Landroid/app/PendingIntent;

    return-void
.end method
