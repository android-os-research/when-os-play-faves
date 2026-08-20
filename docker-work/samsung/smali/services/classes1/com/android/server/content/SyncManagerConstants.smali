.class public Lcom/android/server/content/SyncManagerConstants;
.super Landroid/database/ContentObserver;
.source "SyncManagerConstants.java"


# static fields
.field public static final DEF_EXEMPTION_TEMP_WHITELIST_DURATION_IN_SECONDS:I = 0x258

.field public static final DEF_INITIAL_SYNC_RETRY_TIME_IN_SECONDS:I = 0x1e

.field public static final DEF_MAX_RETRIES_WITH_APP_STANDBY_EXEMPTION:I = 0x5

.field public static final DEF_MAX_SYNC_RETRY_TIME_IN_SECONDS:I = 0xe10

.field public static final DEF_RETRY_TIME_INCREASE_FACTOR:F = 2.0f

.field public static final KEY_EXEMPTION_TEMP_WHITELIST_DURATION_IN_SECONDS:Ljava/lang/String; = "exemption_temp_whitelist_duration_in_seconds"

.field public static final KEY_INITIAL_SYNC_RETRY_TIME_IN_SECONDS:Ljava/lang/String; = "initial_sync_retry_time_in_seconds"

.field public static final KEY_MAX_RETRIES_WITH_APP_STANDBY_EXEMPTION:Ljava/lang/String; = "max_retries_with_app_standby_exemption"

.field public static final KEY_MAX_SYNC_RETRY_TIME_IN_SECONDS:Ljava/lang/String; = "max_sync_retry_time_in_seconds"

.field public static final KEY_RETRY_TIME_INCREASE_FACTOR:Ljava/lang/String; = "retry_time_increase_factor"

.field public static final TAG:Ljava/lang/String; = "SyncManagerConfig"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mInitialSyncRetryTimeInSeconds:I

.field public mKeyExemptionTempWhitelistDurationInSeconds:I

.field public final mLock:Ljava/lang/Object;

.field public mMaxRetriesWithAppStandbyExemption:I

.field public mMaxSyncRetryTimeInSeconds:I

.field public mRetryTimeIncreaseFactor:F


# direct methods
.method public static synthetic $r8$lambda$QKd8T8KBIMVDqpK10FpJXT8Z4fY(Lcom/android/server/content/SyncManagerConstants;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManagerConstants;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    const/16 v0, 0x1e

    .line 38
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 43
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    const/16 v0, 0xe10

    .line 48
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    const/4 v0, 0x5

    .line 53
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    const/16 v0, 0x258

    .line 58
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 63
    iput-object p1, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "SyncManager Config:"

    .line 147
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mInitialSyncRetryTimeInSeconds="

    .line 150
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mRetryTimeIncreaseFactor="

    .line 154
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMaxSyncRetryTimeInSeconds="

    .line 158
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMaxRetriesWithAppStandbyExemption="

    .line 162
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mKeyExemptionTempWhitelistDurationInSeconds="

    .line 166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getInitialSyncRetryTimeInSeconds()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getKeyExemptionTempWhitelistDurationInSeconds()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 141
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getMaxRetriesWithAppStandbyExemption()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getMaxSyncRetryTimeInSeconds()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRetryTimeIncreaseFactor()F
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget p0, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    return-void
.end method

.method public final refresh()V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sync_manager_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_68

    .line 86
    :try_start_17
    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_68

    goto :goto_31

    :catch_1b
    :try_start_1b
    const-string v3, "SyncManagerConfig"

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad constants: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const-string/jumbo v1, "initial_sync_retry_time_in_seconds"

    const/16 v3, 0x1e

    .line 91
    invoke-virtual {v2, v1, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    const-string/jumbo v1, "max_sync_retry_time_in_seconds"

    const/16 v3, 0xe10

    .line 95
    invoke-virtual {v2, v1, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    const-string/jumbo v1, "retry_time_increase_factor"

    const/high16 v3, 0x40000000    # 2.0f

    .line 99
    invoke-virtual {v2, v1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    const-string/jumbo v1, "max_retries_with_app_standby_exemption"

    const/4 v3, 0x5

    .line 103
    invoke-virtual {v2, v1, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    const-string v1, "exemption_temp_whitelist_duration_in_seconds"

    const/16 v3, 0x258

    .line 107
    invoke-virtual {v2, v1, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 111
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_1b .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public start()V
    .registers 3

    .line 67
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManagerConstants;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
