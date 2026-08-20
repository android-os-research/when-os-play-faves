.class public Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppUsageLimitGroup"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V
    .registers 21

    move-object v9, p0

    move-object v1, p1

    .line 543
    iput-object v1, v9, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p10

    .line 544
    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    move-wide/from16 v0, p8

    .line 545
    iput-wide v0, v9, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    return-void
.end method


# virtual methods
.method public getTotaUsageLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 560
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    return-wide v0
.end method

.method public getUsageRemaining()J
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 566
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-lez v0, :cond_14

    .line 567
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    sub-long/2addr v2, v4

    :goto_12
    sub-long/2addr v0, v2

    return-wide v0

    .line 569
    :cond_14
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    goto :goto_12
.end method

.method public remove()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 551
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 552
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_12

    .line 554
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeAppUsageLimitGroup(I)V

    :cond_12
    return-void
.end method
