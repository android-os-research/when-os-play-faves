.class public Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstantsObserver"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_RESTRICTED_BUCKET_DELAY_MS:J = 0x5265c00L

.field public static final DEFAULT_BROADCAST_RESPONSE_EXEMPTED_PERMISSIONS:Ljava/lang/String; = ""

.field public static final DEFAULT_BROADCAST_RESPONSE_EXEMPTED_ROLES:Ljava/lang/String; = ""

.field public static final DEFAULT_BROADCAST_RESPONSE_FG_THRESHOLD_STATE:I = 0x2

.field public static final DEFAULT_BROADCAST_RESPONSE_WINDOW_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_BROADCAST_SESSIONS_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_BROADCAST_SESSIONS_WITH_RESPONSE_DURATION_MS:J = 0x1d4c0L

.field public static final DEFAULT_CHECK_IDLE_INTERVAL_MS:J = 0xdbba00L

.field public static final DEFAULT_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Z = true

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_INITIAL_FOREGROUND_SERVICE_START_TIMEOUT:J = 0x1b7740L

.field public static final DEFAULT_NOTE_RESPONSE_EVENT_FOR_ALL_BROADCAST_SESSIONS:Z = true

.field public static final DEFAULT_NOTIFICATION_SEEN_PROMOTED_BUCKET:I = 0x14

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_RETAIN_NOTIFICATION_SEEN_IMPACT_FOR_PRE_T_APPS:Z = false

.field public static final DEFAULT_SLICE_PINNED_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field public static final DEFAULT_TRIGGER_QUOTA_BUMP_ON_NOTIFICATION_SEEN:Z = false

.field public static final DEFAULT_UNEXEMPTED_SYNC_SCHEDULED_TIMEOUT:J = 0x927c0L

.field public static final KEY_AUTO_RESTRICTED_BUCKET_DELAY_MS:Ljava/lang/String; = "auto_restricted_bucket_delay_ms"

.field public static final KEY_BROADCAST_RESPONSE_EXEMPTED_PERMISSIONS:Ljava/lang/String; = "brodacast_response_exempted_permissions"

.field public static final KEY_BROADCAST_RESPONSE_EXEMPTED_ROLES:Ljava/lang/String; = "brodacast_response_exempted_roles"

.field public static final KEY_BROADCAST_RESPONSE_FG_THRESHOLD_STATE:Ljava/lang/String; = "broadcast_response_fg_threshold_state"

.field public static final KEY_BROADCAST_RESPONSE_WINDOW_DURATION_MS:Ljava/lang/String; = "broadcast_response_window_timeout_ms"

.field public static final KEY_BROADCAST_SESSIONS_DURATION_MS:Ljava/lang/String; = "broadcast_sessions_duration_ms"

.field public static final KEY_BROADCAST_SESSIONS_WITH_RESPONSE_DURATION_MS:Ljava/lang/String; = "broadcast_sessions_with_response_duration_ms"

.field public static final KEY_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS:Ljava/lang/String; = "cross_profile_apps_share_standby_buckets"

.field public static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field public static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field public static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field public static final KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION:Ljava/lang/String; = "initial_foreground_service_start_duration"

.field public static final KEY_NOTE_RESPONSE_EVENT_FOR_ALL_BROADCAST_SESSIONS:Ljava/lang/String; = "note_response_event_for_all_broadcast_sessions"

.field public static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field public static final KEY_NOTIFICATION_SEEN_PROMOTED_BUCKET:Ljava/lang/String; = "notification_seen_promoted_bucket"

.field public static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field public static final KEY_PREFIX_ELAPSED_TIME_THRESHOLD:Ljava/lang/String; = "elapsed_threshold_"

.field public static final KEY_PREFIX_SCREEN_TIME_THRESHOLD:Ljava/lang/String; = "screen_threshold_"

.field public static final KEY_RETAIN_NOTIFICATION_SEEN_IMPACT_FOR_PRE_T_APPS:Ljava/lang/String; = "retain_notification_seen_impact_for_pre_t_apps"

.field public static final KEY_SLICE_PINNED_HOLD_DURATION:Ljava/lang/String; = "slice_pinned_duration"

.field public static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field public static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field public static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field public static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field public static final KEY_TRIGGER_QUOTA_BUMP_ON_NOTIFICATION_SEEN:Ljava/lang/String; = "trigger_quota_bump_on_notification_seen"

.field public static final KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION:Ljava/lang/String; = "unexempted_sync_scheduled_duration"


# instance fields
.field public final KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

.field public final mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 6

    .line 2996
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2997
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "screen_threshold_active"

    const-string/jumbo p2, "screen_threshold_working_set"

    const-string/jumbo v0, "screen_threshold_frequent"

    const-string/jumbo v1, "screen_threshold_rare"

    const-string/jumbo v2, "screen_threshold_restricted"

    .line 2919
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    const-string p1, "elapsed_threshold_active"

    const-string p2, "elapsed_threshold_working_set"

    const-string v0, "elapsed_threshold_frequent"

    const-string v1, "elapsed_threshold_rare"

    const-string v2, "elapsed_threshold_restricted"

    .line 2927
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 2993
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 p2, 0x7c

    invoke-direct {p1, p2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method


# virtual methods
.method public generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J
    .registers 11

    .line 3219
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p3

    .line 3223
    :cond_b
    array-length p0, p2

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    const-string v1, ")"

    const-string v2, ") != # buckets ("

    if-ne p0, v0, :cond_7e

    .line 3229
    array-length p0, p3

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    if-ne p0, v0, :cond_58

    .line 3235
    array-length p0, p4

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v0

    array-length v0, v0

    if-eq p0, v0, :cond_35

    const-string p0, "AppStandbyController"

    const-string p4, "minValues array is the wrong size"

    .line 3236
    invoke-static {p0, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p0

    array-length p0, p0

    new-array p4, p0, [J

    .line 3240
    :cond_35
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [J

    const/4 v0, 0x0

    .line 3241
    :goto_3d
    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_57

    .line 3242
    aget-wide v1, p4, v0

    aget-object v3, p2, v0

    aget-wide v4, p3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_57
    return-object p0

    .line 3231
    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# defaults ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3225
    :cond_7e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "# keys ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$sfgetTHRESHOLD_BUCKETS()[I

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 3022
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    .line 3023
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 3028
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 3029
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public final processProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3034
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3035
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_23

    goto :goto_14

    :cond_23
    const/4 v7, -0x1

    .line 3039
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    const/16 v10, 0x14

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_2dc

    goto/16 :goto_146

    :sswitch_31
    const-string v8, "initial_foreground_service_start_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    move v7, v9

    goto/16 :goto_146

    :sswitch_3c
    const-string/jumbo v8, "strong_usage_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x8

    goto/16 :goto_146

    :sswitch_49
    const-string/jumbo v8, "prediction_timeout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x9

    goto/16 :goto_146

    :sswitch_56
    const-string v8, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    move v7, v11

    goto/16 :goto_146

    :sswitch_61
    const-string v8, "exempted_sync_start_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xf

    goto/16 :goto_146

    :sswitch_6d
    const-string v8, "broadcast_sessions_duration_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x13

    goto/16 :goto_146

    :sswitch_79
    const-string v8, "notification_seen_promoted_bucket"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x4

    goto/16 :goto_146

    :sswitch_84
    const-string v8, "broadcast_response_fg_threshold_state"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x12

    goto/16 :goto_146

    :sswitch_90
    const-string v8, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xe

    goto/16 :goto_146

    :sswitch_9c
    const-string/jumbo v8, "retain_notification_seen_impact_for_pre_t_apps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x5

    goto/16 :goto_146

    :sswitch_a8
    const-string v8, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xd

    goto/16 :goto_146

    :sswitch_b4
    const-string v8, "broadcast_response_window_timeout_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x11

    goto/16 :goto_146

    :sswitch_c0
    const-string v8, "brodacast_response_exempted_roles"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x16

    goto/16 :goto_146

    :sswitch_cc
    const-string/jumbo v8, "system_update_usage_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xb

    goto/16 :goto_146

    :sswitch_d9
    const-string v8, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x15

    goto :goto_146

    :sswitch_e4
    const-string/jumbo v8, "system_interaction_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xa

    goto :goto_146

    :sswitch_f0
    const-string v8, "notification_seen_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x3

    goto :goto_146

    :sswitch_fa
    const-string v8, "auto_restricted_bucket_delay_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x0

    goto :goto_146

    :sswitch_104
    const-string/jumbo v8, "slice_pinned_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x7

    goto :goto_146

    :sswitch_10f
    const-string v8, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    move v7, v10

    goto :goto_146

    :sswitch_119
    const-string/jumbo v8, "unexempted_sync_scheduled_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x10

    goto :goto_146

    :sswitch_125
    const-string/jumbo v8, "trigger_quota_bump_on_notification_seen"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/4 v7, 0x6

    goto :goto_146

    :sswitch_130
    const-string v8, "brodacast_response_exempted_permissions"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0x17

    goto :goto_146

    :sswitch_13b
    const-string/jumbo v8, "sync_adapter_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    const/16 v7, 0xc

    :cond_146
    :goto_146
    const-wide/32 v12, 0xdbba00

    const-wide/32 v14, 0x1d4c0

    move/from16 v16, v5

    const-wide/32 v4, 0x927c0

    packed-switch v7, :pswitch_data_33e

    const/4 v7, 0x0

    if-nez v16, :cond_2c5

    const-string/jumbo v4, "screen_threshold_"

    goto/16 :goto_2b2

    .line 3155
    :pswitch_15c
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "brodacast_response_exempted_permissions"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 3158
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    goto/16 :goto_258

    .line 3148
    :pswitch_174
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "brodacast_response_exempted_roles"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 3151
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    goto/16 :goto_258

    .line 3143
    :pswitch_18c
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "note_response_event_for_all_broadcast_sessions"

    invoke-virtual {v1, v5, v11}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    goto/16 :goto_258

    .line 3138
    :pswitch_198
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "broadcast_sessions_with_response_duration_ms"

    invoke-virtual {v1, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    goto/16 :goto_258

    .line 3133
    :pswitch_1a4
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "broadcast_sessions_duration_ms"

    invoke-virtual {v1, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    goto/16 :goto_258

    .line 3128
    :pswitch_1b0
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "broadcast_response_fg_threshold_state"

    invoke-virtual {v1, v5, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    goto/16 :goto_258

    .line 3123
    :pswitch_1bc
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "broadcast_response_window_timeout_ms"

    invoke-virtual {v1, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    goto/16 :goto_258

    .line 3118
    :pswitch_1c8
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v9, "unexempted_sync_scheduled_duration"

    invoke-virtual {v1, v9, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    goto/16 :goto_258

    .line 3113
    :pswitch_1d5
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v9, "exempted_sync_start_duration"

    invoke-virtual {v1, v9, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    goto/16 :goto_258

    .line 3108
    :pswitch_1e1
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v9, "exempted_sync_scheduled_nd_duration"

    invoke-virtual {v1, v9, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    goto :goto_258

    .line 3103
    :pswitch_1ec
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "exempted_sync_scheduled_d_duration"

    invoke-virtual {v1, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    goto :goto_258

    .line 3099
    :pswitch_1f7
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v9, "sync_adapter_duration"

    invoke-virtual {v1, v9, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    goto :goto_258

    .line 3095
    :pswitch_203
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "system_update_usage_duration"

    const-wide/32 v9, 0x6ddd00

    invoke-virtual {v1, v5, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    goto :goto_258

    .line 3090
    :pswitch_212
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v9, "system_interaction_duration"

    invoke-virtual {v1, v9, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto :goto_258

    .line 3086
    :pswitch_21e
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "prediction_timeout"

    const-wide/32 v9, 0x2932e00

    invoke-virtual {v1, v5, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    goto :goto_258

    .line 3082
    :pswitch_22d
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "strong_usage_duration"

    const-wide/32 v9, 0x36ee80

    invoke-virtual {v1, v5, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    goto :goto_258

    .line 3077
    :pswitch_23c
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "slice_pinned_duration"

    const-wide/32 v9, 0x2932e00

    invoke-virtual {v1, v5, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    goto :goto_258

    .line 3072
    :pswitch_24b
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "trigger_quota_bump_on_notification_seen"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V

    :goto_258
    const/4 v7, 0x0

    goto :goto_2c5

    .line 3067
    :pswitch_25a
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string/jumbo v5, "retain_notification_seen_impact_for_pre_t_apps"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    goto :goto_2c5

    :pswitch_267
    const/4 v7, 0x0

    .line 3062
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "notification_seen_promoted_bucket"

    invoke-virtual {v1, v5, v10}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    goto :goto_2c5

    :pswitch_273
    const/4 v7, 0x0

    .line 3057
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "notification_seen_duration"

    const-wide/32 v8, 0x2932e00

    invoke-virtual {v1, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto :goto_2c5

    :pswitch_282
    const/4 v7, 0x0

    .line 3052
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "initial_foreground_service_start_duration"

    const-wide/32 v8, 0x1b7740

    invoke-virtual {v1, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_2c5

    :pswitch_291
    const/4 v7, 0x0

    .line 3047
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    const-string v5, "cross_profile_apps_share_standby_buckets"

    invoke-virtual {v1, v5, v11}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    goto :goto_2c5

    :pswitch_29d
    const/4 v7, 0x0

    .line 3041
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const-string v5, "auto_restricted_bucket_delay_ms"

    const-wide/32 v8, 0x5265c00

    .line 3043
    invoke-virtual {v1, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3041
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    goto :goto_2c5

    .line 3163
    :goto_2b2
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c0

    const-string v4, "elapsed_threshold_"

    .line 3164
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c5

    .line 3165
    :cond_2c0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateTimeThresholds()V

    move v5, v11

    goto :goto_2c7

    :cond_2c5
    :goto_2c5
    move/from16 v5, v16

    .line 3170
    :goto_2c7
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v4}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 3172
    :cond_2d7
    monitor-exit v2

    return-void

    :catchall_2d9
    move-exception v0

    monitor-exit v2
    :try_end_2db
    .catchall {:try_start_b .. :try_end_2db} :catchall_2d9

    throw v0

    :sswitch_data_2dc
    .sparse-switch
        -0x76b36a58 -> :sswitch_13b
        -0x75045963 -> :sswitch_130
        -0x6afce736 -> :sswitch_125
        -0x6000e4de -> :sswitch_119
        -0x5ae629d8 -> :sswitch_10f
        -0x3f649292 -> :sswitch_104
        -0x3a025ebd -> :sswitch_fa
        -0x2976517c -> :sswitch_f0
        -0x27006ecf -> :sswitch_e4
        -0x2640551b -> :sswitch_d9
        -0x213d7968 -> :sswitch_cc
        -0x118af86a -> :sswitch_c0
        -0x7b1914d -> :sswitch_b4
        -0x36fd73c -> :sswitch_a8
        0x107a759e -> :sswitch_9c
        0x1b373ae8 -> :sswitch_90
        0x2c3f9a7f -> :sswitch_84
        0x37ee8ef5 -> :sswitch_79
        0x3b245c4d -> :sswitch_6d
        0x41e851f4 -> :sswitch_61
        0x4ccb367f -> :sswitch_56
        0x5227fdb1 -> :sswitch_49
        0x5375dd1a -> :sswitch_3c
        0x722857dc -> :sswitch_31
    .end sparse-switch

    :pswitch_data_33e
    .packed-switch 0x0
        :pswitch_29d
        :pswitch_291
        :pswitch_282
        :pswitch_273
        :pswitch_267
        :pswitch_25a
        :pswitch_24b
        :pswitch_23c
        :pswitch_22d
        :pswitch_21e
        :pswitch_212
        :pswitch_203
        :pswitch_1f7
        :pswitch_1ec
        :pswitch_1e1
        :pswitch_1d5
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_198
        :pswitch_18c
        :pswitch_174
        :pswitch_15c
    .end packed-switch
.end method

.method public final splitPipeSeparatedString(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 3176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3177
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 3178
    :goto_a
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3179
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->mStringPipeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public start()V
    .registers 4

    .line 3001
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_standby_enabled"

    .line 3004
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "enable_restricted_bucket"

    .line 3008
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "adaptive_battery_management_enabled"

    .line 3011
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3013
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDeviceConfigPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 3016
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    return-void
.end method

.method public updateSettings()V
    .registers 4

    .line 3210
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3211
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->isRestrictedBucketEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fputmAllowRestrictedBucket(Lcom/android/server/usage/AppStandbyController;Z)V

    .line 3212
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 3214
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    return-void

    :catchall_1f
    move-exception p0

    .line 3212
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final updateTimeThresholds()V
    .registers 7

    .line 3186
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3187
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 3188
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    .line 3189
    invoke-virtual {v1, v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDeviceConfigProperties([Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 3190
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_SCREEN_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    sget-object v5, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 3193
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->KEYS_ELAPSED_TIME_THRESHOLDS:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    sget-object v4, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->generateThresholdArray(Landroid/provider/DeviceConfig$Properties;[Ljava/lang/String;[J[J)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 3196
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    return-void
.end method
