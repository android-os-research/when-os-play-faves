.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.super Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.source "TimeZoneDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "time_zone_detector"


# instance fields
.field public final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field public final mContext:Landroid/content/Context;

.field public final mDumpables:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDumpables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/time/ITimeZoneDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public static synthetic $r8$lambda$6HSmh0sViD5oL_WtwpXO4c2ADmg(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JKrWWCPNd_nlzs8rwSm4dhqRqbA(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->lambda$suggestGeolocationTimeZone$1(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hk2Ps258ErGOgqxVeHtTaAQ1l-w(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->lambda$suggestTelephonyTimeZone$2(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcreate(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    invoke-direct {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;-><init>()V

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    .line 161
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timezonedetector/CallerIdentityInjector;

    iput-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 162
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object p4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 163
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    iput-object p5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 167
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    invoke-interface {p4, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .registers 11

    .line 149
    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 150
    new-instance v6, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    return-object v6
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$suggestGeolocationTimeZone$1(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method

.method private synthetic lambda$suggestTelephonyTimeZone$2(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 2

    .line 333
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    return-void
.end method


# virtual methods
.method public addDumpable(Lcom/android/server/timezonedetector/Dumpable;)V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .registers 6

    .line 216
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 220
    :try_start_9
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 222
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_3b

    return-void

    :cond_17
    const/4 v2, 0x0

    .line 226
    :try_start_18
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 229
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_3b

    goto :goto_39

    :catch_21
    move-exception p0

    :try_start_22
    const-string/jumbo v1, "time_zone_detector"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to linkToDeath() for listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public binderDied()V
    .registers 2

    const-string/jumbo p0, "time_zone_detector"

    const-string v0, "binderDied() called unexpectedly."

    .line 260
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 7

    .line 269
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 271
    :try_start_4
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_c
    if-ltz v2, :cond_26

    .line 273
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 274
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 275
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v1, v3

    goto :goto_26

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_26
    :goto_26
    if-nez v1, :cond_49

    const-string/jumbo v1, "time_zone_detector"

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified of binder death for who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but did not remove any listeners. mListeners="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 377
    iget-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "time_zone_detector"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 379
    :cond_c
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 380
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p2, p1, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    monitor-enter p2

    .line 383
    :try_start_19
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/Dumpable;

    .line 384
    invoke-interface {v0, p1, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_1f

    .line 386
    :cond_2f
    monitor-exit p2
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_34

    .line 388
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void

    :catchall_34
    move-exception p0

    .line 386
    :try_start_35
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public enableTelephonyFallback()V
    .registers 1

    .line 353
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 354
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->enableTelephonyTimeZoneFallback()V

    return-void
.end method

.method public final enforceManageTimeZoneDetectorPermission()V
    .registers 3

    .line 399
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v1, "manage time and time zone detection"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestGeolocationTimeZonePermission()V
    .registers 3

    .line 407
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v1, "suggest geolocation time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestManualTimeZonePermission()V
    .registers 3

    .line 419
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest manual time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestTelephonyTimeZonePermission()V
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest telephony time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 1

    .line 369
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 371
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 5

    .line 179
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 181
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 183
    :try_start_9
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 184
    invoke-interface {v2, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    .line 187
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 188
    throw p1
.end method

.method public handleConfigurationInternalChangedOnHandlerThread()V
    .registers 9

    .line 292
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_33

    .line 295
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_35

    .line 297
    :try_start_14
    invoke-interface {v3}, Landroid/app/time/ITimeZoneDetectorListener;->onChange()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_35

    goto :goto_30

    :catch_18
    move-exception v4

    :try_start_19
    const-string/jumbo v5, "time_zone_detector"

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to notify listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 302
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public isGeoTimeZoneDetectionSupported()Z
    .registers 1

    .line 343
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 345
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->isGeoTimeZoneDetectionSupported()Z

    move-result p0

    return p0
.end method

.method public isTelephonyTimeZoneDetectionSupported()Z
    .registers 1

    .line 337
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 339
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->isTelephonyTimeZoneDetectionSupported()Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 394
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .registers 6

    .line 238
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 242
    :try_start_9
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 246
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v3, 0x1

    :cond_1a
    if-nez v3, :cond_3d

    const-string/jumbo v1, "time_zone_detector"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client asked to remove listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but no listeners were removed. mListeners="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 4

    .line 307
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestGeolocationTimeZonePermission()V

    .line 308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .registers 6

    .line 316
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestManualTimeZonePermission()V

    .line 317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v1

    .line 322
    :try_start_12
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v3, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 324
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_1e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 325
    throw p1
.end method

.method public suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 4

    .line 330
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestTelephonyTimeZonePermission()V

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .registers 10

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "updateConfiguration"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 202
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 208
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v2, p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2b

    .line 210
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return p1

    :catchall_2b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 211
    throw p1
.end method

.method public updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    return p0
.end method
