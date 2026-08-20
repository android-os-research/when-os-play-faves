.class public Lcom/android/server/am/CacheOomRanker$1;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CacheOomRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CacheOomRanker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CacheOomRanker;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v0}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "use_oom_re_ranking"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 127
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUseOomReranking(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_2a
    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 129
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateNumberToReRank(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_39
    const-string/jumbo v2, "oom_re_ranking_preserve_top_n_apps"

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 131
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdatePreserveTopNApps(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_48
    const-string/jumbo v2, "oom_re_ranking_rss_use_frequent_rss"

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 133
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUseFrequentRss(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_57
    const-string/jumbo v2, "oom_re_ranking_rss_update_rate_ms"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 135
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateRssUpdateRateMs(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_66
    const-string/jumbo v2, "oom_re_ranking_lru_weight"

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 137
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateLruWeight(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_75
    const-string/jumbo v2, "oom_re_ranking_uses_weight"

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 139
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUsesWeight(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_f

    :cond_84
    const-string/jumbo v2, "oom_re_ranking_rss_weight"

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 141
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v1}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateRssWeight(Lcom/android/server/am/CacheOomRanker;)V

    goto/16 :goto_f

    .line 144
    :cond_94
    monitor-exit v0

    return-void

    :catchall_96
    move-exception p0

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_7 .. :try_end_98} :catchall_96

    throw p0
.end method
