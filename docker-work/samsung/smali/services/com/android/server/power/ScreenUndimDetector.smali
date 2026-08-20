.class public Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "ScreenUndimDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ScreenUndimDetector$InternalClock;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_KEEP_SCREEN_ON_ENABLED:Z = true

.field public static final DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_UNDIMS_REQUIRED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_KEEP_SCREEN_ON_ENABLED:Ljava/lang/String; = "keep_screen_on_enabled"

.field public static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final OUTCOME_POWER_BUTTON:I = 0x1

.field public static final OUTCOME_TIMEOUT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ScreenUndimDetector"

.field public static final UNDIM_DETECTOR_WAKE_LOCK:Ljava/lang/String; = "UndimDetectorWakeLock"


# instance fields
.field public mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

.field public mCurrentScreenPolicy:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mInteractionAfterUndimTime:J

.field public mKeepScreenOnEnabled:Z

.field public mKeepScreenOnForMillis:J

.field public mMaxDurationBetweenUndimsMillis:J

.field public mUndimCounter:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUndimCounterStartedMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUndimOccurredTime:J

.field public mUndimsRequired:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$n7fpGzJCgxm8XKYi8kwkYFm0GMk(Lcom/android/server/power/ScreenUndimDetector;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    const-wide/16 v1, 0x5

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 93
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 97
    new-instance v0, Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-direct {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ScreenUndimDetector$InternalClock;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 93
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 101
    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    return-void
.end method

.method private synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 115
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final checkAndLogUndim(I)V
    .registers 12

    .line 289
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 290
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    const/16 v4, 0x16d

    .line 291
    iget-wide v5, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    sub-long v6, v0, v5

    .line 295
    iget-wide v8, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    cmp-long v5, v8, v2

    if-eqz v5, :cond_1d

    sub-long/2addr v0, v8

    move-wide v8, v0

    goto :goto_1e

    :cond_1d
    move-wide v8, v2

    :goto_1e
    move v5, p1

    .line 291
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 297
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 298
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_26
    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceConfigChange; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenUndimDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7e

    goto :goto_62

    :sswitch_33
    const-string/jumbo v3, "max_duration_between_undims_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_62

    :cond_3d
    const/4 v1, 0x3

    goto :goto_62

    :sswitch_3f
    const-string/jumbo v3, "keep_screen_on_for_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_62

    :cond_49
    const/4 v1, 0x2

    goto :goto_62

    :sswitch_4b
    const-string/jumbo v3, "keep_screen_on_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_62

    :cond_55
    const/4 v1, 0x1

    goto :goto_62

    :sswitch_57
    const-string/jumbo v3, "undims_required"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :goto_62
    packed-switch v1, :pswitch_data_90

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 246
    :pswitch_7a
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    :cond_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        -0x7e0c2586 -> :sswitch_57
        -0x6f8997a6 -> :sswitch_4b
        0x14fb26c3 -> :sswitch_3f
        0x65e239ba -> :sswitch_33
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public final readKeepScreenOnForMillis()J
    .registers 4

    .line 213
    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    const-string p0, "attention_manager_service"

    const-string/jumbo v2, "keep_screen_on_for_millis"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readKeepScreenOnNotificationEnabled()Z
    .registers 3

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "keep_screen_on_enabled"

    const/4 v1, 0x1

    .line 207
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final readMaxDurationBetweenUndimsMillis()J
    .registers 4

    .line 233
    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    const-string p0, "attention_manager_service"

    const-string/jumbo v2, "max_duration_between_undims_millis"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readUndimsRequired()I
    .registers 4

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "undims_required"

    const/4 v1, 0x2

    .line 219
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_12

    const/4 v0, 0x5

    if-le p0, v0, :cond_11

    goto :goto_12

    :cond_11
    return p0

    .line 224
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided undimsRequired="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not allowed [1, 5]; using the default="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenUndimDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public readValuesFromDeviceConfig()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnNotificationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnForMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    .line 258
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readUndimsRequired()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    .line 259
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readMaxDurationBetweenUndimsMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmKeepScreenOnNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmUndimsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenUndimDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordScreenPolicy(II)V
    .registers 8

    if-nez p1, :cond_66

    .line 128
    iget p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    if-ne p2, p1, :cond_7

    goto :goto_66

    .line 140
    :cond_7
    iput p2, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    .line 142
    iget-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_16

    goto :goto_66

    :cond_16
    if-eqz p2, :cond_1a

    if-ne p2, v2, :cond_1d

    .line 185
    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    :cond_1d
    if-eq p2, v1, :cond_66

    .line 188
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    goto :goto_66

    :cond_23
    if-ne p2, v0, :cond_5c

    .line 149
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide p1

    .line 150
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    sub-long v0, p1, v0

    .line 151
    iget-wide v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_38

    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 154
    :cond_38
    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    if-nez v0, :cond_3e

    .line 155
    iput-wide p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    :cond_3e
    add-int/2addr v0, v2

    .line 158
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 166
    iget p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    if-lt v0, p1, :cond_66

    .line 167
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 171
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_66

    .line 172
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 173
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_66

    :cond_5c
    if-eqz p2, :cond_60

    if-ne p2, v2, :cond_63

    .line 178
    :cond_60
    invoke-virtual {p0, v1}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    .line 180
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    :cond_66
    :goto_66
    return-void
.end method

.method public reset()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, 0x0

    .line 200
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    .line 201
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 202
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenUndimDetector;)V

    const-string v2, "attention_manager_service"

    .line 113
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 117
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const v0, 0x2000000a

    const-string v1, "UndimDetectorWakeLock"

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public userActivity(I)V
    .registers 6

    if-eqz p1, :cond_3

    return-void

    .line 276
    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1b

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    .line 277
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_1b
    return-void
.end method
