.class public Lcom/android/server/power/AttentionDetector;
.super Ljava/lang/Object;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AttentionDetector$UserSwitchObserver;,
        Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_POST_DIM_CHECK_DURATION_MILLIS:J = 0x0L

.field public static final DEFAULT_PRE_DIM_CHECK_DURATION_MILLIS:J = 0x7d0L

.field public static final KEY_MAX_EXTENSION_MILLIS:Ljava/lang/String; = "max_extension_millis"

.field public static final KEY_POST_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "post_dim_check_duration_millis"

.field public static final KEY_PRE_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "pre_dim_check_duration_millis"

.field public static final TAG:Ljava/lang/String; = "AttentionDetector"


# instance fields
.field public mAttentionManager:Landroid/attention/AttentionManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field public mContentResolver:Landroid/content/ContentResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDefaultMaximumExtensionMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mEffectivePostDimTimeoutMillis:J

.field public mIsSettingEnabled:Z

.field public mLastActedOnNextScreenDimming:J

.field public mLastUserActivityTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMaximumExtensionMillis:J

.field public final mOnUserAttention:Ljava/lang/Runnable;

.field public mPreDimCheckDurationMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRequestId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRequestedPostDimTimeoutMillis:J

.field public mWakefulness:I

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vAWNBBapFegWUK8AN5L8ul_hKAM(Lcom/android/server/power/AttentionDetector;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/AttentionDetector;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnUserAttention(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequested(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakefulness(Lcom/android/server/power/AttentionDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetConsecutiveExtensionCount(Lcom/android/server/power/AttentionDetector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 155
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 156
    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 157
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    iput p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    const/4 p1, 0x1

    .line 161
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return-void
.end method

.method private synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 198
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final cancelCurrentRequestIfAny()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 291
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 292
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "AttentionDetector:"

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEffectivePostDimTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastUserActivityTime(excludingAttention)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttentionServiceSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMaxExtensionMillis()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    const-string v2, "attention_manager_service"

    const-string/jumbo v3, "max_extension_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    goto :goto_1a

    :cond_19
    return-wide v0

    :cond_1a
    :goto_1a
    const-string v0, "AttentionDetector"

    const-string v1, "Bad flag value supplied for: max_extension_millis"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    return-wide v0
.end method

.method public getPostDimCheckDurationMillis()J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "post_dim_check_duration_millis"

    const-wide/16 v1, 0x0

    .line 341
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-ltz p0, :cond_17

    const-wide/16 v5, 0x2710

    cmp-long p0, v3, v5

    if-lez p0, :cond_16

    goto :goto_17

    :cond_16
    return-wide v3

    :cond_17
    :goto_17
    const-string p0, "AttentionDetector"

    const-string v0, "Bad flag value supplied for: post_dim_check_duration_millis"

    .line 346
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getPreDimCheckDurationMillis()J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "attention_manager_service"

    const-string/jumbo v0, "pre_dim_check_duration_millis"

    const-wide/16 v1, 0x7d0

    .line 326
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_19

    const-wide/16 v5, 0x32c8

    cmp-long p0, v3, v5

    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    return-wide v3

    :cond_19
    :goto_19
    const-string p0, "AttentionDetector"

    const-string v0, "Bad flag value supplied for: pre_dim_check_duration_millis"

    .line 331
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public isAttentionServiceSupported()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/attention/AttentionManagerInternal;->isAttentionServiceSupported()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5e

    goto :goto_3f

    :sswitch_1c
    const-string/jumbo v2, "pre_dim_check_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_3f

    :cond_26
    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_28
    const-string/jumbo v2, "max_extension_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_3f

    :cond_32
    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_34
    const-string/jumbo v2, "post_dim_check_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    packed-switch v1, :pswitch_data_6c

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring change on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 373
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    :cond_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x784b213c -> :sswitch_34
        -0x1e7d483f -> :sswitch_28
        0x18e8ab07 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public onUserActivity(JI)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p3, :cond_17

    if-eq p3, v0, :cond_17

    const/4 v1, 0x2

    if-eq p3, v1, :cond_17

    const/4 v1, 0x3

    if-eq p3, v1, :cond_17

    const/4 p1, 0x4

    if-eq p3, p1, :cond_10

    const/4 p0, -0x1

    return p0

    .line 263
    :cond_10
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 270
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    .line 271
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return v0
.end method

.method public onWakefulnessChangeStarted(I)V
    .registers 3

    .line 282
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 284
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    :cond_b
    return-void
.end method

.method public final readValuesFromDeviceConfig()V
    .registers 4

    .line 382
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getMaxExtensionMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 383
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    .line 384
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPostDimCheckDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmMaximumExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmPreDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmRequestedPostDimTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttentionDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final resetConsecutiveExtensionCount()V
    .registers 5

    .line 297
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_11

    const/16 p0, 0xa8

    .line 299
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    :cond_11
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 8

    .line 171
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 174
    const-class v0, Landroid/attention/AttentionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/attention/AttentionManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 175
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    .line 180
    :try_start_2d
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$UserSwitchObserver-IA;)V

    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "AttentionDetector"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3c} :catch_3c

    .line 186
    :catch_3c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/AttentionDetector$1;

    new-instance v4, Landroid/os/Handler;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 186
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/AttentionDetector;)V

    const-string p0, "attention_manager_service"

    .line 196
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public updateEnabledFromSettings(Landroid/content/Context;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adaptive_sleep"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    move v1, v0

    :cond_10
    iput-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    return-void
.end method

.method public updateUserActivity(JJ)J
    .registers 13

    .line 203
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_85

    iget-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-eqz v0, :cond_85

    .line 205
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 206
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_85

    .line 210
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    sub-long v2, p1, v2

    .line 212
    iget-wide v4, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long/2addr v4, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    return-wide v2

    :cond_2b
    cmp-long v0, v4, v2

    if-gez v0, :cond_30

    return-wide p1

    .line 224
    :cond_30
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_39

    return-wide v2

    .line 235
    :cond_39
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 237
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    .line 238
    new-instance p1, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    .line 239
    iget-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Checking user attention, ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AttentionDetector"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-wide p2, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    add-long/2addr p2, v0

    iget-object p4, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {p1, p2, p3, p4}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 246
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_84
    return-wide v2

    :cond_85
    :goto_85
    return-wide p1
.end method
