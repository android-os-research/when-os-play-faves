.class public Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field public final synthetic val$beginTime:J

.field public final synthetic val$endTime:J

.field public final synthetic val$flags:I

.field public final synthetic val$names:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V
    .registers 8

    .line 636
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)Z"
        }
    .end annotation

    .line 640
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p2

    .line 641
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    :goto_e
    const/4 v1, 0x1

    if-ge p2, v0, :cond_7d

    .line 643
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 644
    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_21

    const/4 p0, 0x0

    return p0

    .line 648
    :cond_21
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2e

    .line 649
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2e

    goto :goto_7a

    :cond_2e
    const/16 v5, 0x1e

    if-ne v3, v5, :cond_38

    .line 653
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_38

    goto :goto_7a

    :cond_38
    const/16 v4, 0xa

    if-eq v3, v4, :cond_40

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4a

    .line 657
    :cond_40
    iget v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4a

    .line 661
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 663
    :cond_4a
    iget v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_53

    .line 664
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 666
    :cond_53
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 667
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_5c
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 670
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_65
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 673
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_6e
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 676
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_77
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7a
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_7d
    return v1
.end method
