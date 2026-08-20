.class public final Lcom/android/server/timedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "time_detector"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$H9NtT9tLMwyofCpiDPLlDw83ais(Lcom/android/server/timedetector/EnvironmentImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->handleAutoTimeDetectionChangedOnHandlerThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$gykhHiW5AlYhTa3-C3aNHh7op3A(Lcom/android/server/timedetector/EnvironmentImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAutoTimeDetectionChangedOnHandlerThread(Lcom/android/server/timedetector/EnvironmentImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->handleAutoTimeDetectionChangedOnHandlerThread()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 65
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "time_detector"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 69
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 71
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_time"

    .line 78
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/server/timedetector/EnvironmentImpl$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/timedetector/EnvironmentImpl$1;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;Landroid/os/Handler;)V

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    new-instance p1, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;)V

    invoke-virtual {p3, p1}, Lcom/android/server/timedetector/ServiceConfigAccessor;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/EnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/EnvironmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_26
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public autoOriginPriorities()[I
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getOriginPriorities()[I

    move-result-object p0

    return-object p0
.end method

.method public autoTimeLowerBound()Ljava/time/Instant;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public final checkWakeLockHeld()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not held"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "time_detector"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 3

    .line 133
    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;-><init>(I)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->isUserConfigAllowed(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->isAutoTimeDetectionEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabled(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object p0

    return-object p0
.end method

.method public elapsedRealtimeMillis()J
    .registers 3

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final handleAutoTimeDetectionChangedOnHandlerThread()V
    .registers 3

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    if-nez v0, :cond_d

    const-string/jumbo v0, "time_detector"

    const-string v1, "mConfigChangeListener is unexpectedly null"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    .line 97
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isAutoTimeDetectionEnabled()Z
    .registers 3

    const/4 v0, 0x1

    .line 115
    :try_start_1
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :catch_d
    :goto_d
    return v0
.end method

.method public final isUserConfigAllowed(I)Z
    .registers 3

    .line 176
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_config_date_time"

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public releaseWakeLock()V
    .registers 1

    .line 165
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 166
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 2

    .line 102
    monitor-enter p0

    .line 103
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mConfigChangeListener:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 104
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setSystemClock(J)V
    .registers 3

    .line 159
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 160
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    return-void
.end method

.method public systemClockMillis()J
    .registers 3

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public systemClockUpdateThresholdMillis()I
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->systemClockUpdateThresholdMillis()I

    move-result p0

    return p0
.end method
