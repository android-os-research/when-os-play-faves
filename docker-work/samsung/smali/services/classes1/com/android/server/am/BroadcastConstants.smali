.class public Lcom/android/server/am/BroadcastConstants;
.super Ljava/lang/Object;
.source "BroadcastConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastConstants$SettingsObserver;,
        Lcom/android/server/am/BroadcastConstants$DeferBootCompletedBroadcastType;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public static final DEFAULT_DEFERRAL:J

.field public static final DEFAULT_DEFERRAL_DECAY_FACTOR:F = 0.75f

.field public static final DEFAULT_DEFERRAL_FLOOR:J = 0x0L

.field public static final DEFAULT_SLOW_TIME:J

.field public static final DEFAULT_TIMEOUT:J

.field public static final DEFER_BOOT_COMPLETED_BROADCAST_ALL:I = 0x1

.field public static final DEFER_BOOT_COMPLETED_BROADCAST_BACKGROUND_RESTRICTED_ONLY:I = 0x2

.field public static final DEFER_BOOT_COMPLETED_BROADCAST_CHANGE_ID:J = 0xc2449f6L

.field public static final DEFER_BOOT_COMPLETED_BROADCAST_NONE:I = 0x0

.field public static final DEFER_BOOT_COMPLETED_BROADCAST_TARGET_T_ONLY:I = 0x4

.field public static final KEY_ALLOW_BG_ACTIVITY_START_TIMEOUT:Ljava/lang/String; = "bcast_allow_bg_activity_start_timeout"

.field public static final KEY_DEFERRAL:Ljava/lang/String; = "bcast_deferral"

.field public static final KEY_DEFERRAL_DECAY_FACTOR:Ljava/lang/String; = "bcast_deferral_decay_factor"

.field public static final KEY_DEFERRAL_FLOOR:Ljava/lang/String; = "bcast_deferral_floor"

.field public static final KEY_SLOW_TIME:Ljava/lang/String; = "bcast_slow_time"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "bcast_timeout"

.field public static final TAG:Ljava/lang/String; = "BroadcastConstants"


# instance fields
.field public ALLOW_BG_ACTIVITY_START_TIMEOUT:J

.field public DEFERRAL:J

.field public DEFERRAL_DECAY_FACTOR:F

.field public DEFERRAL_FLOOR:J

.field public SLOW_TIME:J

.field public TIMEOUT:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public mSettingsKey:Ljava/lang/String;

.field public mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateConstants(Lcom/android/server/am/BroadcastConstants;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateConstants()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 52
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    mul-int/lit16 v1, v0, 0x1388

    int-to-long v1, v1

    .line 53
    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_SLOW_TIME:J

    mul-int/lit16 v1, v0, 0x1388

    int-to-long v1, v1

    .line 54
    sput-wide v1, Lcom/android/server/am/BroadcastConstants;->DEFAULT_DEFERRAL:J

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    .line 57
    sput-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 107
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_SLOW_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    .line 109
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_DEFERRAL:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    const/high16 v0, 0x3f400000    # 0.75f

    .line 111
    iput v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    .line 116
    sget-wide v0, Lcom/android/server/am/BroadcastConstants;->DEFAULT_ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 122
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 138
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 180
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    monitor-enter v0

    .line 181
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Broadcast parameters (key="

    .line 182
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ", observing="

    .line 184
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "):"

    .line 186
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    "

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_timeout"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 190
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    "

    .line 192
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_slow_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 194
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    "

    .line 196
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 198
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    "

    .line 200
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral_decay_factor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    const-string v1, "    "

    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_deferral_floor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, "    "

    .line 206
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bcast_allow_bg_activity_start_timeout"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 209
    monitor-exit v0

    return-void

    :catchall_aa
    move-exception p0

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_aa

    throw p0
.end method

.method public startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 5

    .line 146
    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    .line 148
    new-instance p2, Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BroadcastConstants$SettingsObserver;-><init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    .line 149
    iget-object p1, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsObserver:Lcom/android/server/am/BroadcastConstants$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastConstants;->updateConstants()V

    return-void
.end method

.method public final updateConstants()V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/am/BroadcastConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_5c
    .catchall {:try_start_3 .. :try_end_10} :catchall_5a

    .line 165
    :try_start_10
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_timeout"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    .line 166
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_slow_time"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    .line 167
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    .line 168
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral_decay_factor"

    iget v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    .line 170
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_deferral_floor"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    .line 171
    iget-object v1, p0, Lcom/android/server/am/BroadcastConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bcast_allow_bg_activity_start_timeout"

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 173
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    goto :goto_7c

    :catch_5c
    move-exception v1

    const-string v2, "BroadcastConstants"

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad broadcast settings in key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastConstants;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    monitor-exit v0

    return-void

    .line 173
    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_10 .. :try_end_7d} :catchall_5a

    throw p0
.end method
