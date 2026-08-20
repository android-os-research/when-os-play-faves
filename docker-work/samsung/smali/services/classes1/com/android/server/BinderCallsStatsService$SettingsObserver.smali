.class public Lcom/android/server/BinderCallsStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mUri:Landroid/net/Uri;

.field public final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public static synthetic $r8$lambda$OKRhhu6iYXJJRzYdTSZuWm_BsAI(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->lambda$onChange$0(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .registers 7

    .line 153
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "binder_calls_stats"

    .line 145
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 147
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 154
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 157
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 158
    iput-object p3, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    return-void
.end method

.method public static synthetic lambda$onChange$0(I)I
    .registers 1

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onChange()V
    .registers 6

    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    .line 172
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 177
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "binder_calls_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception v0

    const-string v1, "BinderCallsStatsService"

    const-string v2, "Bad binder call stats settings"

    .line 180
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_28
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "detailed_tracking"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    sget v2, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    const-string/jumbo v4, "sampling_interval"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 187
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x5dc

    const-string/jumbo v4, "max_call_stats_count"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setMaxBinderCallStats(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_screen_state"

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackScreenInteractive(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_calling_uid"

    .line 194
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackDirectCallerUid(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "ignore_battery_status"

    .line 197
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setIgnoreBatteryStatus(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "sharding_modulo"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setShardingModulo(I)V

    .line 203
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "collect_latency_data"

    .line 204
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setCollectLatencyData(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 209
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "enabled"

    .line 212
    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    iget-boolean v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    if-eq v1, v0, :cond_ee

    if-eqz v0, :cond_c8

    .line 215
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 216
    new-instance v1, Landroid/os/Binder$PropagateWorkSourceTransactListener;

    invoke-direct {v1}, Landroid/os/Binder$PropagateWorkSourceTransactListener;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    goto :goto_d7

    :cond_c8
    const/4 v1, 0x0

    .line 220
    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 221
    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 222
    new-instance v1, Lcom/android/server/BinderCallsStatsService$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/BinderCallsStatsService$SettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    .line 224
    :goto_d7
    iput-boolean v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    .line 225
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-array v2, v4, [Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 226
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setAddDebugEntries(Z)V

    .line 227
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_ee
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 165
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 166
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    :cond_b
    return-void
.end method
