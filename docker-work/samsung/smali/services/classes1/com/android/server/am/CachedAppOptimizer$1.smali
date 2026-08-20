.class public Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 233
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "use_compaction"

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 235
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateUseCompaction(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_f

    :cond_2a
    const-string v2, "compact_action_1"

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    const-string v2, "compact_action_2"

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_db

    :cond_3c
    const-string v2, "compact_throttle_1"

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "compact_throttle_2"

    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "compact_throttle_3"

    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "compact_throttle_4"

    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "compact_throttle_5"

    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const-string v2, "compact_throttle_6"

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_d4

    :cond_6d
    const-string v2, "compact_statsd_sample_rate"

    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 247
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_f

    :cond_7b
    const-string v2, "freeze_statsd_sample_rate"

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 249
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFreezerStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_f

    :cond_89
    const-string v2, "compact_full_rss_throttle_kb"

    .line 250
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 251
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFullRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    :cond_98
    const-string v2, "compact_full_delta_rss_throttle_kb"

    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 253
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFullDeltaRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    :cond_a7
    const-string v2, "compact_proc_state_throttle"

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 255
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateProcStateThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    :cond_b6
    const-string v2, "compact_throttle_min_oom_adj"

    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 257
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateMinOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    :cond_c5
    const-string v2, "compact_throttle_max_oom_adj"

    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 259
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateMaxOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    .line 245
    :cond_d4
    :goto_d4
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactionThrottles(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    .line 238
    :cond_db
    :goto_db
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactionActions(Lcom/android/server/am/CachedAppOptimizer;)V

    goto/16 :goto_f

    .line 262
    :cond_e2
    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_7 .. :try_end_e3} :catchall_f5

    .line 263
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object p1

    if-eqz p1, :cond_f4

    .line 264
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    :cond_f4
    return-void

    :catchall_f5
    move-exception p0

    .line 262
    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw p0
.end method
