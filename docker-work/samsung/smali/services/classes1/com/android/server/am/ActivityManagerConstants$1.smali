.class public Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 887
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    return-void

    :cond_17
    const/4 v1, -0x1

    .line 891
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_37c

    goto/16 :goto_273

    :sswitch_21
    const-string v2, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_273

    :cond_2b
    const/16 v1, 0x2a

    goto/16 :goto_273

    :sswitch_2f
    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_273

    :cond_3a
    const/16 v1, 0x29

    goto/16 :goto_273

    :sswitch_3e
    const-string v2, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_273

    :cond_48
    const/16 v1, 0x28

    goto/16 :goto_273

    :sswitch_4c
    const-string v2, "fgs_start_foreground_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_273

    :cond_56
    const/16 v1, 0x27

    goto/16 :goto_273

    :sswitch_5a
    const-string v2, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_273

    :cond_64
    const/16 v1, 0x26

    goto/16 :goto_273

    :sswitch_68
    const-string v2, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_273

    :cond_72
    const/16 v1, 0x25

    goto/16 :goto_273

    :sswitch_76
    const-string v2, "deferred_fgs_notifications_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_273

    :cond_80
    const/16 v1, 0x24

    goto/16 :goto_273

    :sswitch_84
    const-string v2, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_273

    :cond_8e
    const/16 v1, 0x23

    goto/16 :goto_273

    :sswitch_92
    const-string/jumbo v2, "kill_bg_restricted_cached_idle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_273

    :cond_9d
    const/16 v1, 0x22

    goto/16 :goto_273

    :sswitch_a1
    const-string v2, "boot_time_temp_allowlist_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_273

    :cond_ab
    const/16 v1, 0x21

    goto/16 :goto_273

    :sswitch_af
    const-string v2, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto/16 :goto_273

    :cond_b9
    const/16 v1, 0x20

    goto/16 :goto_273

    :sswitch_bd
    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto/16 :goto_273

    :cond_c8
    const/16 v1, 0x1f

    goto/16 :goto_273

    :sswitch_cc
    const-string v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_273

    :cond_d6
    const/16 v1, 0x1e

    goto/16 :goto_273

    :sswitch_da
    const-string v2, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    goto/16 :goto_273

    :cond_e4
    const/16 v1, 0x1d

    goto/16 :goto_273

    :sswitch_e8
    const-string v2, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto/16 :goto_273

    :cond_f2
    const/16 v1, 0x1c

    goto/16 :goto_273

    :sswitch_f6
    const-string v2, "defer_boot_completed_broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto/16 :goto_273

    :cond_100
    const/16 v1, 0x1b

    goto/16 :goto_273

    :sswitch_104
    const-string/jumbo v2, "imperceptible_kill_exempt_packages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    goto/16 :goto_273

    :cond_10f
    const/16 v1, 0x1a

    goto/16 :goto_273

    :sswitch_113
    const-string v2, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    goto/16 :goto_273

    :cond_11d
    const/16 v1, 0x19

    goto/16 :goto_273

    :sswitch_121
    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    goto/16 :goto_273

    :cond_12c
    const/16 v1, 0x18

    goto/16 :goto_273

    :sswitch_130
    const-string/jumbo v2, "push_messaging_over_quota_behavior"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    goto/16 :goto_273

    :cond_13b
    const/16 v1, 0x17

    goto/16 :goto_273

    :sswitch_13f
    const-string v2, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_149

    goto/16 :goto_273

    :cond_149
    const/16 v1, 0x16

    goto/16 :goto_273

    :sswitch_14d
    const-string v2, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_157

    goto/16 :goto_273

    :cond_157
    const/16 v1, 0x15

    goto/16 :goto_273

    :sswitch_15b
    const-string v2, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    goto/16 :goto_273

    :cond_165
    const/16 v1, 0x14

    goto/16 :goto_273

    :sswitch_169
    const-string/jumbo v2, "service_start_foreground_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    goto/16 :goto_273

    :cond_174
    const/16 v1, 0x13

    goto/16 :goto_273

    :sswitch_178
    const-string v2, "fgs_atom_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_182

    goto/16 :goto_273

    :cond_182
    const/16 v1, 0x12

    goto/16 :goto_273

    :sswitch_186
    const-string/jumbo v2, "process_kill_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191

    goto/16 :goto_273

    :cond_191
    const/16 v1, 0x11

    goto/16 :goto_273

    :sswitch_195
    const-string/jumbo v2, "min_assoc_log_duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    goto/16 :goto_273

    :cond_1a0
    const/16 v1, 0x10

    goto/16 :goto_273

    :sswitch_1a4
    const-string/jumbo v2, "network_access_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    goto/16 :goto_273

    :cond_1af
    const/16 v1, 0xf

    goto/16 :goto_273

    :sswitch_1b3
    const-string/jumbo v2, "max_empty_time_millis"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1be

    goto/16 :goto_273

    :cond_1be
    const/16 v1, 0xe

    goto/16 :goto_273

    :sswitch_1c2
    const-string/jumbo v2, "max_cached_processes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd

    goto/16 :goto_273

    :cond_1cd
    const/16 v1, 0xd

    goto/16 :goto_273

    :sswitch_1d1
    const-string v2, "force_bg_check_on_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    goto/16 :goto_273

    :cond_1db
    const/16 v1, 0xc

    goto/16 :goto_273

    :sswitch_1df
    const-string v2, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9

    goto/16 :goto_273

    :cond_1e9
    const/16 v1, 0xb

    goto/16 :goto_273

    :sswitch_1ed
    const-string/jumbo v2, "max_phantom_processes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f8

    goto/16 :goto_273

    :cond_1f8
    const/16 v1, 0xa

    goto/16 :goto_273

    :sswitch_1fc
    const-string v2, "deferred_fgs_notification_interval"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206

    goto/16 :goto_273

    :cond_206
    const/16 v1, 0x9

    goto/16 :goto_273

    :sswitch_20a
    const-string/jumbo v2, "oomadj_update_policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_215

    goto/16 :goto_273

    :cond_215
    const/16 v1, 0x8

    goto/16 :goto_273

    :sswitch_219
    const-string v2, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_222

    goto :goto_273

    :cond_222
    const/4 v1, 0x7

    goto :goto_273

    :sswitch_224
    const-string v2, "fgs_allow_opt_out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    goto :goto_273

    :cond_22d
    const/4 v1, 0x6

    goto :goto_273

    :sswitch_22f
    const-string v2, "default_background_activity_starts_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    goto :goto_273

    :cond_238
    const/4 v1, 0x5

    goto :goto_273

    :sswitch_23a
    const-string v2, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_243

    goto :goto_273

    :cond_243
    const/4 v1, 0x4

    goto :goto_273

    :sswitch_245
    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24f

    goto :goto_273

    :cond_24f
    const/4 v1, 0x3

    goto :goto_273

    :sswitch_251
    const-string v2, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25a

    goto :goto_273

    :cond_25a
    const/4 v1, 0x2

    goto :goto_273

    :sswitch_25c
    const-string/jumbo v2, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_266

    goto :goto_273

    :cond_266
    const/4 v1, 0x1

    goto :goto_273

    :sswitch_268
    const-string/jumbo v2, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_272

    goto :goto_273

    :cond_272
    const/4 v1, 0x0

    :goto_273
    packed-switch v1, :pswitch_data_42a

    goto/16 :goto_8

    .line 995
    :pswitch_278
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 956
    :pswitch_27f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 911
    :pswitch_286
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 977
    :pswitch_28d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 968
    :pswitch_294
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 950
    :pswitch_29b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 953
    :pswitch_2a2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 998
    :pswitch_2a9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 908
    :pswitch_2b0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 920
    :pswitch_2b7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 980
    :pswitch_2be
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 986
    :pswitch_2c5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 914
    :pswitch_2cc
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 1001
    :pswitch_2d3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 923
    :pswitch_2da
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 905
    :pswitch_2e1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 962
    :pswitch_2e8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 989
    :pswitch_2ef
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 959
    :pswitch_2f6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 983
    :pswitch_2fd
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 936
    :pswitch_304
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 1007
    :pswitch_30b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 1004
    :pswitch_312
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 893
    :pswitch_319
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 933
    :pswitch_320
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 899
    :pswitch_327
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 947
    :pswitch_32e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 917
    :pswitch_335
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 926
    :pswitch_33c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 965
    :pswitch_343
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 974
    :pswitch_34a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 896
    :pswitch_351
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 944
    :pswitch_358
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 992
    :pswitch_35f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 902
    :pswitch_366
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 971
    :pswitch_36d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    .line 930
    :pswitch_374
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_8

    :cond_37b
    return-void

    :sswitch_data_37c
    .sparse-switch
        -0x7ba4b562 -> :sswitch_268
        -0x76fa06f8 -> :sswitch_25c
        -0x719878d5 -> :sswitch_251
        -0x71781c6f -> :sswitch_245
        -0x6d209d2c -> :sswitch_23a
        -0x6a37b8d0 -> :sswitch_22f
        -0x62f6cce1 -> :sswitch_224
        -0x61c0c900 -> :sswitch_219
        -0x53dc231d -> :sswitch_20a
        -0x4db39f74 -> :sswitch_1fc
        -0x48c35170 -> :sswitch_1ed
        -0x476d69e0 -> :sswitch_1df
        -0x47037762 -> :sswitch_1d1
        -0x41254a05 -> :sswitch_1c2
        -0x3eef3615 -> :sswitch_1b3
        -0x397974d2 -> :sswitch_1a4
        -0x3099a4da -> :sswitch_195
        -0x2ddb96b0 -> :sswitch_186
        -0x28b1facc -> :sswitch_178
        -0x226e8ce7 -> :sswitch_169
        -0x1ac3af47 -> :sswitch_15b
        -0x13aa2fbd -> :sswitch_14d
        -0x116849e6 -> :sswitch_13f
        -0xf17951c -> :sswitch_130
        -0xd5a912d -> :sswitch_121
        -0xceeb9d0 -> :sswitch_113
        -0x2e7b9c6 -> :sswitch_104
        0x14ce72d -> :sswitch_f6
        0x105030a5 -> :sswitch_e8
        0x257a0925 -> :sswitch_da
        0x34db0a33 -> :sswitch_cc
        0x350b53bb -> :sswitch_bd
        0x39ca177c -> :sswitch_af
        0x45611472 -> :sswitch_a1
        0x477b2286 -> :sswitch_92
        0x50949369 -> :sswitch_84
        0x524459dd -> :sswitch_76
        0x59fe4888 -> :sswitch_68
        0x5f40529e -> :sswitch_5a
        0x60f0152f -> :sswitch_4c
        0x710abd04 -> :sswitch_3e
        0x7805f2e7 -> :sswitch_2f
        0x7bd2ee58 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_42a
    .packed-switch 0x0
        :pswitch_374
        :pswitch_36d
        :pswitch_366
        :pswitch_35f
        :pswitch_358
        :pswitch_351
        :pswitch_34a
        :pswitch_343
        :pswitch_33c
        :pswitch_335
        :pswitch_32e
        :pswitch_327
        :pswitch_320
        :pswitch_319
        :pswitch_312
        :pswitch_30b
        :pswitch_304
        :pswitch_2fd
        :pswitch_2f6
        :pswitch_2ef
        :pswitch_2e8
        :pswitch_2e1
        :pswitch_358
        :pswitch_2da
        :pswitch_2d3
        :pswitch_2cc
        :pswitch_374
        :pswitch_2c5
        :pswitch_2be
        :pswitch_2b7
        :pswitch_2b0
        :pswitch_2a9
        :pswitch_2a2
        :pswitch_29b
        :pswitch_294
        :pswitch_28d
        :pswitch_286
        :pswitch_358
        :pswitch_358
        :pswitch_27f
        :pswitch_358
        :pswitch_278
        :pswitch_358
    .end packed-switch
.end method
