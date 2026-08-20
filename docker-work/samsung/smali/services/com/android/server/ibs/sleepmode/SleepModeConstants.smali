.class public Lcom/android/server/ibs/sleepmode/SleepModeConstants;
.super Ljava/lang/Object;
.source "SleepModeConstants.java"


# static fields
.field public static final BG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.statsd"

.field public static final BUNDLE_BT_KEY:Ljava/lang/String; = "bundle_bt_key"

.field public static final BUNDLE_END_SLEEP_TIME_KEY:Ljava/lang/String; = "bundle_end_sleep_time_key"

.field public static final BUNDLE_END_TIME_KEY:Ljava/lang/String; = "bundle_end_time_key"

.field public static final BUNDLE_GPS_KEY:Ljava/lang/String; = "bundle_gps_key"

.field public static final BUNDLE_MASTER_SYNC_KEY:Ljava/lang/String; = "bundle_master_sync_key"

.field public static final BUNDLE_NEARBY_KEY:Ljava/lang/String; = "bundle_nearby_key"

.field public static final BUNDLE_NOTIFICATION_KEY:Ljava/lang/String; = "bundle_notification_key"

.field public static final BUNDLE_PSM_KEY:Ljava/lang/String; = "bundle_psm_key"

.field public static final BUNDLE_START_SLEEP_TIME_KEY:Ljava/lang/String; = "bundle_start_sleep_time_key"

.field public static final BUNDLE_START_TIME_KEY:Ljava/lang/String; = "bundle_start_time_key"

.field public static final BUNDLE_WIFI_KEY:Ljava/lang/String; = "bundle_wifi_key"

.field public static final EDGE_LIGHTING_ALWAYS:I = 0x0

.field public static final EDGE_LIGHTING_SCREEN_ON:I = 0x1

.field public static final EDGE_LIGHTING_SHOW_CONDITION:Ljava/lang/String; = "edge_lighting_show_condition"

.field public static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field public static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final MSG_SLEEP_MODE_ALARM_END:I = 0x4

.field public static final MSG_SLEEP_MODE_ALARM_START:I = 0x3

.field public static final MSG_SLEEP_MODE_BEFORE_BEDTIME_RUBIN:I = 0xb

.field public static final MSG_SLEEP_MODE_BOOT_COMPLETE:I = 0xe

.field public static final MSG_SLEEP_MODE_EXIT:I = 0x9

.field public static final MSG_SLEEP_MODE_IDLE_CHANGED:I = 0x5

.field public static final MSG_SLEEP_MODE_PACKAGE_REMOVED:I = 0xa

.field public static final MSG_SLEEP_MODE_PROBABLY_ASLEEP_RUBIN:I = 0xc

.field public static final MSG_SLEEP_MODE_PROBABLY_WAKEUP_RUBIN:I = 0xd

.field public static final MSG_SLEEP_MODE_SET_TIME:I = 0x7

.field public static final MSG_SLEEP_MODE_START:I = 0x1

.field public static final MSG_SLEEP_MODE_STATUS_CHECK:I = 0x6

.field public static final MSG_SLEEP_MODE_STOP:I = 0x2

.field public static final MSG_SLEEP_MODE_TIME_CHANGED:I = 0x8

.field public static final PREF_SLEEP_MODE_ACTIVATED_KEY:Ljava/lang/String; = "pref_sleep_mode_activated_key"

.field public static final PREF_SLEEP_MODE_BT_KEY:Ljava/lang/String; = "pref_sleep_mode_bt_key"

.field public static final PREF_SLEEP_MODE_CANCEL_TIME_KEY:Ljava/lang/String; = "pref_sleep_mode_cancel_time_key"

.field public static final PREF_SLEEP_MODE_ENABLED_KEY:Ljava/lang/String; = "pref_sleep_mode_enabled_key"

.field public static final PREF_SLEEP_MODE_END_TIME_KEY:Ljava/lang/String; = "pref_sleep_mode_end_time_key"

.field public static final PREF_SLEEP_MODE_IDLE_TIMEOUT_KEY:Ljava/lang/String; = "pref_sleep_mode_idle_timeout_key"

.field public static final PREF_SLEEP_MODE_LOCATION_KEY:Ljava/lang/String; = "pref_sleep_mode_location_key"

.field public static final PREF_SLEEP_MODE_MASTER_SYNC_KEY:Ljava/lang/String; = "pref_sleep_mode_master_sync_key"

.field public static final PREF_SLEEP_MODE_NEARBY_KEY:Ljava/lang/String; = "pref_sleep_mode_nearby_key"

.field public static final PREF_SLEEP_MODE_NOTIFICATION_KEY:Ljava/lang/String; = "pref_sleep_mode_notification_key"

.field public static final PREF_SLEEP_MODE_POLICY_STATE_KEY:Ljava/lang/String; = "pref_sleep_mode_policy_state_key"

.field public static final PREF_SLEEP_MODE_PSM_KEY:Ljava/lang/String; = "pref_sleep_mode_psm_key"

.field public static final PREF_SLEEP_MODE_START_TIME_KEY:Ljava/lang/String; = "pref_sleep_mode_start_time_key"

.field public static final PREF_SLEEP_MODE_TRIGGER_TIME_KEY:Ljava/lang/String; = "pref_sleep_mode_trigger_time_key"

.field public static final PREF_SLEEP_MODE_WIFI_KEY:Ljava/lang/String; = "pref_sleep_mode_wifi_key"

.field public static final SLEEP_MODE_POLICY_BT:I = 0x8

.field public static final SLEEP_MODE_POLICY_GPS:I = 0x4

.field public static final SLEEP_MODE_POLICY_MASTERSYNC:I = 0x20

.field public static final SLEEP_MODE_POLICY_NEARBY:I = 0x10

.field public static final SLEEP_MODE_POLICY_NOTIFICATION:I = 0x40

.field public static final SLEEP_MODE_POLICY_PSM:I = 0x1

.field public static final SLEEP_MODE_POLICY_STATE_MASK:I = 0x7f

.field public static final SLEEP_MODE_POLICY_WIFI:I = 0x2

.field public static final TPO_CONTEXT_BEFORE_BEDTIME:Ljava/lang/String; = "BEFORE_BEDTIME"

.field public static final TPO_CONTEXT_PROBABLY_ASLEEP:Ljava/lang/String; = "PROBABLY_ASLEEP"

.field public static final TPO_CONTEXT_WAKEUP:Ljava/lang/String; = "WAKEUP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
