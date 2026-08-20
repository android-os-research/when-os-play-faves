.class public final Lcom/android/server/timedetector/ServerFlags;
.super Ljava/lang/Object;
.source "ServerFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServerFlags$DeviceConfigKey;
    }
.end annotation


# static fields
.field public static final KEY_ENHANCED_METRICS_COLLECTION_ENABLED:Ljava/lang/String; = "enhanced_metrics_collection_enabled"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_FEATURE_SUPPORTED:Ljava/lang/String; = "location_time_zone_detection_feature_supported"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_RUN_IN_BACKGROUND_ENABLED:Ljava/lang/String; = "location_time_zone_detection_run_in_background_enabled"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_DEFAULT:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_default"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_OVERRIDE:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_override"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_UNCERTAINTY_DELAY_MILLIS:Ljava/lang/String; = "location_time_zone_detection_uncertainty_delay_millis"

.field public static final KEY_LTZP_EVENT_FILTERING_AGE_THRESHOLD_MILLIS:Ljava/lang/String; = "ltzp_event_filtering_age_threshold_millis"

.field public static final KEY_LTZP_INITIALIZATION_TIMEOUT_FUZZ_MILLIS:Ljava/lang/String; = "ltzp_init_timeout_fuzz_millis"

.field public static final KEY_LTZP_INITIALIZATION_TIMEOUT_MILLIS:Ljava/lang/String; = "ltzp_init_timeout_millis"

.field public static final KEY_PRIMARY_LTZP_MODE_OVERRIDE:Ljava/lang/String; = "primary_location_time_zone_provider_mode_override"

.field public static final KEY_SECONDARY_LTZP_MODE_OVERRIDE:Ljava/lang/String; = "secondary_location_time_zone_provider_mode_override"

.field public static final KEY_TIME_DETECTOR_LOWER_BOUND_MILLIS_OVERRIDE:Ljava/lang/String; = "time_detector_lower_bound_millis_override"

.field public static final KEY_TIME_DETECTOR_ORIGIN_PRIORITIES_OVERRIDE:Ljava/lang/String; = "time_detector_origin_priorities_override"

.field public static final KEY_TIME_ZONE_DETECTOR_TELEPHONY_FALLBACK_SUPPORTED:Ljava/lang/String; = "time_zone_detector_telephony_fallback_supported"

.field public static final OPTIONAL_FALSE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTIONAL_TRUE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timedetector/ServerFlags;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "SLOCK"
        }
    .end annotation
.end field


# instance fields
.field public final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6XJt9MGapm8VhYC1XARTcmuAVLY(Lcom/android/server/timedetector/ServerFlags;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    const-string/jumbo p0, "system_time"

    .line 198
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;
    .registers 3

    .line 206
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    if-nez v1, :cond_e

    .line 208
    new-instance v1, Lcom/android/server/timedetector/ServerFlags;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    .line 210
    :cond_e
    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 320
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 322
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_12

    :cond_10
    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_12
    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 260
    iget-object p2, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 261
    :try_start_e
    iget-object p0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit p2

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    const-string/jumbo p0, "system_time"

    .line 331
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 5

    const-string/jumbo p0, "system_time"

    const-wide/16 v0, -0x1

    .line 341
    invoke-static {p0, p1, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    return-object p2

    .line 345
    :cond_10
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "system_time"

    .line 313
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-static {p0}, Lcom/android/server/timedetector/ServerFlags;->parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "system_time"

    .line 294
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    .line 296
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 300
    :cond_e
    :try_start_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 301
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_1a
    .catch Ljava/time/DateTimeException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1a} :catch_1b

    return-object p0

    .line 303
    :catch_1b
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalString(Ljava/lang/String;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "system_time"

    .line 271
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_f

    .line 283
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 285
    :cond_f
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object p0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 227
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    .line 228
    invoke-static {v2, v3}, Lcom/android/server/timedetector/ServerFlags;->containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    goto :goto_d

    .line 232
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method
