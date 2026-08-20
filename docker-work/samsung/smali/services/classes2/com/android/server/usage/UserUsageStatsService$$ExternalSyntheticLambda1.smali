.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$0:J

    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$1:J

    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 13

    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$0:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$1:J

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;->f$3:I

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->$r8$lambda$9DZ7l7x0SIOUGpeky4RbrRTMkCI(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method
