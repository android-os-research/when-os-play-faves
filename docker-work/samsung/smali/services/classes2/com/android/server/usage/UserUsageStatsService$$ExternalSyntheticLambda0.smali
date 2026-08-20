.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UserUsageStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:J

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/util/ArrayList;

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->$r8$lambda$tFRwn12TzNOugwwDABpM09CTdf0(Lcom/android/server/usage/UserUsageStatsService;JJLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
