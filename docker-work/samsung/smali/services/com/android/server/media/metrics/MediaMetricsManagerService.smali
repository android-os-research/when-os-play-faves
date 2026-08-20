.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "MediaMetricsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final FAILED_TO_GET:Ljava/lang/String; = "failed_to_get"

.field public static final LOGGING_LEVEL_BLOCKED:I = 0x1869f

.field public static final LOGGING_LEVEL_EVERYTHING:I = 0x0

.field public static final LOGGING_LEVEL_NO_UID:I = 0x3e8

.field public static final MEDIA_METRICS_MODE:Ljava/lang/String; = "media_metrics_mode"

.field public static final MEDIA_METRICS_MODE_ALLOWLIST:I = 0x3

.field public static final MEDIA_METRICS_MODE_BLOCKLIST:I = 0x2

.field public static final MEDIA_METRICS_MODE_OFF:I = 0x0

.field public static final MEDIA_METRICS_MODE_ON:I = 0x1

.field public static final PLAYER_METRICS_APP_ALLOWLIST:Ljava/lang/String; = "player_metrics_app_allowlist"

.field public static final PLAYER_METRICS_APP_BLOCKLIST:Ljava/lang/String; = "player_metrics_app_blocklist"

.field public static final PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST:Ljava/lang/String; = "player_metrics_per_app_attribution_allowlist"

.field public static final PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST:Ljava/lang/String; = "player_metrics_per_app_attribution_blocklist"

.field public static final TAG:Ljava/lang/String; = "MediaMetricsManagerService"

.field public static final mMetricsId:Ljava/lang/String; = "metrics.manager"


# instance fields
.field public mAllowlist:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBlockList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMode:Ljava/lang/Integer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNoUidAllowlist:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNoUidBlocklist:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static synthetic $r8$lambda$BR72rjORkunkbzOdTqo-EQhjEJY(Lcom/android/server/media/metrics/MediaMetricsManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->updateConfigs(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 79
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 96
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public final getListLocked(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "failed_to_get"

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    const-string/jumbo v2, "media"

    .line 139
    invoke-static {v2, p1, p0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3e

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to get "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from DeviceConfig"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_33
    const-string p0, ","

    .line 148
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_3e
    move-exception p0

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    throw p0
.end method

.method public onStart()V
    .registers 3

    .line 101
    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService-IA;)V

    const-string/jumbo v1, "media_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    const-string/jumbo p0, "media"

    .line 102
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final updateConfigs(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "media_metrics_mode"

    const/4 v2, 0x2

    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    const-string/jumbo p1, "player_metrics_app_allowlist"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    if-nez p1, :cond_23

    .line 114
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_25

    .line 117
    :cond_23
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    :cond_25
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_36

    .line 120
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_38

    .line 121
    :cond_36
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    :cond_38
    const-string/jumbo p1, "player_metrics_app_blocklist"

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_49

    .line 124
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_4b

    .line 125
    :cond_49
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    :cond_4b
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5c

    .line 128
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_5e

    .line 129
    :cond_5c
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 131
    :cond_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p0
.end method
