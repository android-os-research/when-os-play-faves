.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field public static final DEFAULT_FLEX_TIME_SHORT:J = 0xea60L

.field public static final DEFAULT_IDLE_AFTER_INACTIVE_TIMEOUT:J = 0x124f80L

.field public static final DEFAULT_IDLE_AFTER_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0x927c0L

.field public static final DEFAULT_IDLE_FACTOR:F = 2.0f

.field public static final DEFAULT_IDLE_PENDING_FACTOR:F = 2.0f

.field public static final DEFAULT_IDLE_PENDING_TIMEOUT:J = 0x493e0L

.field public static final DEFAULT_IDLE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_INACTIVE_TIMEOUT:J = 0xdbba0L

.field public static final DEFAULT_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0x927c0L

.field public static final DEFAULT_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J = 0xea60L

.field public static final DEFAULT_LIGHT_IDLE_FACTOR:F = 2.0f

.field public static final DEFAULT_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J = 0x2bf20L

.field public static final DEFAULT_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J = 0xea60L

.field public static final DEFAULT_LIGHT_IDLE_TIMEOUT:J = 0x493e0L

.field public static final DEFAULT_LIGHT_MAX_IDLE_TIMEOUT:J = 0x124f80L

.field public static final DEFAULT_LOCATING_TIMEOUT:J = 0x7530L

.field public static final DEFAULT_LOCATION_ACCURACY:F = 20.0f

.field public static final DEFAULT_MAX_IDLE_PENDING_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_MAX_IDLE_TIMEOUT:J = 0x1499700L

.field public static final DEFAULT_MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0x493e0L

.field public static final DEFAULT_MIN_DEEP_MAINTENANCE_TIME:J = 0x7530L

.field public static final DEFAULT_MIN_LIGHT_MAINTENANCE_TIME:J = 0x1388L

.field public static final DEFAULT_MIN_TIME_TO_ALARM:J = 0x1b7740L

.field public static final DEFAULT_MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0xea60L

.field public static final DEFAULT_MOTION_INACTIVE_TIMEOUT:J = 0x668a0L

.field public static final DEFAULT_MOTION_INACTIVE_TIMEOUT_FLEX:J = 0xea60L

.field public static final DEFAULT_NOTIFICATION_ALLOWLIST_DURATION_MS:J = 0x7530L

.field public static final DEFAULT_PRE_IDLE_FACTOR_LONG:F = 1.67f

.field public static final DEFAULT_PRE_IDLE_FACTOR_SHORT:F = 0.33f

.field public static final DEFAULT_QUICK_DOZE_DELAY_TIMEOUT:J = 0xea60L

.field public static final DEFAULT_SENSING_TIMEOUT:J = 0x1d4c0L

.field public static final DEFAULT_SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J = 0x4e20L

.field public static final DEFAULT_USE_WINDOW_ALARMS:Z = false

.field public static final DEFAULT_WAIT_FOR_UNLOCK:Z = true

.field public static final KEY_FLEX_TIME_SHORT:Ljava/lang/String; = "flex_time_short"

.field public static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field public static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field public static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field public static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field public static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field public static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field public static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field public static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field public static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field public static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field public static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field public static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field public static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field public static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field public static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field public static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field public static final KEY_MAX_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "max_temp_app_allowlist_duration_ms"

.field public static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field public static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field public static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field public static final KEY_MMS_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "mms_temp_app_allowlist_duration_ms"

.field public static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field public static final KEY_MOTION_INACTIVE_TIMEOUT_FLEX:Ljava/lang/String; = "motion_inactive_to_flex"

.field public static final KEY_NOTIFICATION_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "notification_allowlist_duration_ms"

.field public static final KEY_PRE_IDLE_FACTOR_LONG:Ljava/lang/String; = "pre_idle_factor_long"

.field public static final KEY_PRE_IDLE_FACTOR_SHORT:Ljava/lang/String; = "pre_idle_factor_short"

.field public static final KEY_QUICK_DOZE_DELAY_TIMEOUT:Ljava/lang/String; = "quick_doze_delay_to"

.field public static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field public static final KEY_SMS_TEMP_APP_ALLOWLIST_DURATION_MS:Ljava/lang/String; = "sms_temp_app_allowlist_duration_ms"

.field public static final KEY_USE_WINDOW_ALARMS:Ljava/lang/String; = "use_window_alarms"

.field public static final KEY_WAIT_FOR_UNLOCK:Ljava/lang/String; = "wait_for_unlock"


# instance fields
.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public PRE_IDLE_FACTOR_LONG:F

.field public PRE_IDLE_FACTOR_SHORT:F

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field public final mSmallBatteryDevice:Z

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 12

    .line 1287
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 1057
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1065
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    const-wide/32 v2, 0x493e0

    .line 1072
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    const/high16 p1, 0x40000000    # 2.0f

    .line 1079
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    const-wide/32 v4, 0x124f80

    .line 1086
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1095
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    const-wide/32 v6, 0x2bf20

    .line 1106
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-wide/16 v6, 0x1388

    .line 1117
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    const-wide/16 v6, 0x7530

    .line 1127
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    const-wide/32 v8, 0xdbba0

    .line 1136
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-wide/32 v8, 0x1d4c0

    .line 1145
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1152
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    const/high16 v8, 0x41a00000    # 20.0f

    .line 1160
    iput v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    const-wide/32 v8, 0x668a0

    .line 1168
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1175
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1183
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1191
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    const-wide/32 v4, 0x927c0

    .line 1197
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1204
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1212
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-wide/32 v8, 0x36ee80

    .line 1219
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-wide/32 v8, 0x1499700

    .line 1225
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1231
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    const-wide/32 v8, 0x1b7740

    .line 1238
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1246
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1252
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v0, 0x4e20

    .line 1258
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1265
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const p1, 0x3fd5c28f    # 1.67f

    .line 1270
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    const p1, 0x3ea8f5c3    # 0.33f

    .line 1275
    iput p1, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    const/4 p1, 0x1

    .line 1277
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    const/4 p1, 0x0

    .line 1283
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1288
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_84

    .line 1290
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1291
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1294
    :cond_84
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "device_idle"

    .line 1293
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-array p1, p1, [Ljava/lang/String;

    .line 1296
    invoke-static {v1, p1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "  Settings:"

    .line 1461
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    .line 1463
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flex_time_short"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1464
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1465
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1467
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_after_inactive_to"

    .line 1468
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1470
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1471
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1473
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1475
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1477
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1479
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1481
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1483
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1485
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1487
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1489
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1491
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1493
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_light_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1494
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1495
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1497
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_deep_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1498
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1499
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1501
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1503
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1505
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sensing_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1506
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1507
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1509
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "locating_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1511
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1513
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "location_accuracy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1514
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1517
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1519
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1521
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1522
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1523
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1525
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "idle_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1527
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1529
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1530
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1531
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1533
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1535
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "idle_pending_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1538
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1540
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1542
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1546
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1548
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1550
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1552
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1555
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1557
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1561
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1563
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1565
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1567
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1569
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1571
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notification_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1573
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1575
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "wait_for_unlock"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1578
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pre_idle_factor_long"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1581
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pre_idle_factor_short"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "use_window_alarms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1302
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 1303
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v5, -0x1

    .line 1307
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_382

    goto/16 :goto_1b5

    :sswitch_29
    const-string/jumbo v6, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x19

    goto/16 :goto_1b5

    :sswitch_36
    const-string/jumbo v6, "location_accuracy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xc

    goto/16 :goto_1b5

    :sswitch_43
    const-string/jumbo v6, "max_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x15

    goto/16 :goto_1b5

    :sswitch_50
    const-string/jumbo v6, "idle_pending_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x10

    goto/16 :goto_1b5

    :sswitch_5d
    const-string/jumbo v6, "idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x14

    goto/16 :goto_1b5

    :sswitch_6a
    const-string/jumbo v6, "quick_doze_delay_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x13

    goto/16 :goto_1b5

    :sswitch_77
    const-string/jumbo v6, "idle_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x16

    goto/16 :goto_1b5

    :sswitch_84
    const-string/jumbo v6, "sensing_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xa

    goto/16 :goto_1b5

    :sswitch_91
    const-string/jumbo v6, "idle_after_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xf

    goto/16 :goto_1b5

    :sswitch_9e
    const-string/jumbo v6, "light_idle_maintenance_min_budget"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x5

    goto/16 :goto_1b5

    :sswitch_aa
    const-string v6, "flex_time_short"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    move v5, v7

    goto/16 :goto_1b5

    :sswitch_b5
    const-string/jumbo v6, "pre_idle_factor_long"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1d

    goto/16 :goto_1b5

    :sswitch_c2
    const-string/jumbo v6, "wait_for_unlock"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1c

    goto/16 :goto_1b5

    :sswitch_cf
    const-string/jumbo v6, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x18

    goto/16 :goto_1b5

    :sswitch_dc
    const-string/jumbo v6, "min_deep_maintenance_time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x8

    goto/16 :goto_1b5

    :sswitch_e9
    const-string/jumbo v6, "light_after_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    move v5, v8

    goto/16 :goto_1b5

    :sswitch_f5
    const-string/jumbo v6, "locating_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xb

    goto/16 :goto_1b5

    :sswitch_102
    const-string/jumbo v6, "motion_inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xd

    goto/16 :goto_1b5

    :sswitch_10f
    const-string/jumbo v6, "motion_inactive_to_flex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0xe

    goto/16 :goto_1b5

    :sswitch_11c
    const-string/jumbo v6, "inactive_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x9

    goto/16 :goto_1b5

    :sswitch_129
    const-string/jumbo v6, "light_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x2

    goto/16 :goto_1b5

    :sswitch_135
    const-string/jumbo v6, "min_time_to_alarm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x17

    goto/16 :goto_1b5

    :sswitch_142
    const-string/jumbo v6, "max_idle_pending_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x11

    goto :goto_1b5

    :sswitch_14e
    const-string/jumbo v6, "idle_pending_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x12

    goto :goto_1b5

    :sswitch_15a
    const-string/jumbo v6, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1a

    goto :goto_1b5

    :sswitch_166
    const-string/jumbo v6, "min_light_maintenance_time"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x7

    goto :goto_1b5

    :sswitch_171
    const-string/jumbo v6, "pre_idle_factor_short"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1e

    goto :goto_1b5

    :sswitch_17d
    const-string/jumbo v6, "light_max_idle_to"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x4

    goto :goto_1b5

    :sswitch_188
    const-string/jumbo v6, "use_window_alarms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1f

    goto :goto_1b5

    :sswitch_194
    const-string/jumbo v6, "light_idle_factor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x3

    goto :goto_1b5

    :sswitch_19f
    const-string/jumbo v6, "light_idle_maintenance_max_budget"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v5, 0x6

    goto :goto_1b5

    :sswitch_1aa
    const-string/jumbo v6, "notification_allowlist_duration_ms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/16 v5, 0x1b

    :cond_1b5
    :goto_1b5
    const-wide/16 v13, 0x7530

    const/high16 v6, 0x40000000    # 2.0f

    const-wide/32 v9, 0x493e0

    const-wide/32 v11, 0xea60

    packed-switch v5, :pswitch_data_404

    const-string v5, "DeviceIdleController"

    goto/16 :goto_367

    :pswitch_1c6
    const-string/jumbo v4, "use_window_alarms"

    .line 1449
    invoke-virtual {v1, v4, v7}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    goto/16 :goto_e

    :pswitch_1d1
    const-string/jumbo v4, "pre_idle_factor_short"

    const v5, 0x3ea8f5c3    # 0.33f

    .line 1445
    invoke-virtual {v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    goto/16 :goto_e

    :pswitch_1df
    const-string/jumbo v4, "pre_idle_factor_long"

    const v5, 0x3fd5c28f    # 1.67f

    .line 1441
    invoke-virtual {v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    goto/16 :goto_e

    :pswitch_1ed
    const-string/jumbo v4, "wait_for_unlock"

    .line 1437
    invoke-virtual {v1, v4, v8}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    goto/16 :goto_e

    :pswitch_1f8
    const-string/jumbo v4, "notification_allowlist_duration_ms"

    .line 1432
    invoke-virtual {v1, v4, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_e

    :pswitch_203
    const-string/jumbo v4, "sms_temp_app_allowlist_duration_ms"

    const-wide/16 v5, 0x4e20

    .line 1427
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_e

    :pswitch_210
    const-string/jumbo v4, "mms_temp_app_allowlist_duration_ms"

    .line 1422
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_e

    :pswitch_21b
    const-string/jumbo v4, "max_temp_app_allowlist_duration_ms"

    .line 1417
    invoke-virtual {v1, v4, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    goto/16 :goto_e

    :pswitch_226
    const-string/jumbo v4, "min_time_to_alarm"

    const-wide/32 v5, 0x1b7740

    .line 1413
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    goto/16 :goto_e

    :pswitch_234
    const-string/jumbo v4, "idle_factor"

    .line 1410
    invoke-virtual {v1, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    goto/16 :goto_e

    :pswitch_23f
    const-string/jumbo v4, "max_idle_to"

    const-wide/32 v5, 0x1499700

    .line 1406
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_24d
    const-string/jumbo v4, "idle_to"

    const-wide/32 v5, 0x36ee80

    .line 1402
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_25b
    const-string/jumbo v4, "quick_doze_delay_to"

    .line 1398
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_266
    const-string/jumbo v4, "idle_pending_factor"

    .line 1394
    invoke-virtual {v1, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    goto/16 :goto_e

    :pswitch_271
    const-string/jumbo v4, "max_idle_pending_to"

    const-wide/32 v5, 0x927c0

    .line 1390
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_27f
    const-string/jumbo v4, "idle_pending_to"

    .line 1386
    invoke-virtual {v1, v4, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_28a
    const-wide/32 v5, 0x927c0

    .line 1378
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v4, :cond_293

    move-wide v9, v5

    goto :goto_296

    :cond_293
    const-wide/32 v9, 0x124f80

    :goto_296
    const-string/jumbo v4, "idle_after_inactive_to"

    .line 1381
    invoke-virtual {v1, v4, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_2a1
    const-string/jumbo v4, "motion_inactive_to_flex"

    .line 1373
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    goto/16 :goto_e

    :pswitch_2ac
    const-string/jumbo v4, "motion_inactive_to"

    const-wide/32 v5, 0x668a0

    .line 1369
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_2ba
    const-string/jumbo v4, "location_accuracy"

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1365
    invoke-virtual {v1, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    goto/16 :goto_e

    :pswitch_2c7
    const-string/jumbo v4, "locating_to"

    .line 1361
    invoke-virtual {v1, v4, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_2d2
    const-string/jumbo v4, "sensing_to"

    const-wide/32 v5, 0x1d4c0

    .line 1357
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_2e0
    const-wide/32 v5, 0x927c0

    .line 1350
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v4, :cond_2e9

    move-wide v11, v5

    goto :goto_2ec

    :cond_2e9
    const-wide/32 v11, 0xdbba0

    :goto_2ec
    const-string/jumbo v4, "inactive_to"

    .line 1353
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_2f7
    const-string/jumbo v4, "min_deep_maintenance_time"

    .line 1345
    invoke-virtual {v1, v4, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    goto/16 :goto_e

    :pswitch_302
    const-string/jumbo v4, "min_light_maintenance_time"

    const-wide/16 v5, 0x1388

    .line 1340
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    goto/16 :goto_e

    :pswitch_30f
    const-string/jumbo v4, "light_idle_maintenance_max_budget"

    const-wide/32 v5, 0x2bf20

    .line 1335
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    goto/16 :goto_e

    :pswitch_31d
    const-string/jumbo v4, "light_idle_maintenance_min_budget"

    .line 1330
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    goto/16 :goto_e

    :pswitch_328
    const-string/jumbo v4, "light_max_idle_to"

    const-wide/32 v5, 0x124f80

    .line 1326
    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_336
    const/high16 v4, 0x3f800000    # 1.0f

    const-string/jumbo v5, "light_idle_factor"

    .line 1322
    invoke-virtual {v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    goto/16 :goto_e

    :pswitch_347
    const-string/jumbo v4, "light_idle_to"

    .line 1318
    invoke-virtual {v1, v4, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_352
    const-string/jumbo v4, "light_after_inactive_to"

    .line 1313
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    goto/16 :goto_e

    :pswitch_35d
    const-string v4, "flex_time_short"

    .line 1309
    invoke-virtual {v1, v4, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    goto/16 :goto_e

    .line 1453
    :goto_367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown configuration key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1457
    :cond_37d
    monitor-exit v2

    return-void

    :catchall_37f
    move-exception v0

    monitor-exit v2
    :try_end_381
    .catchall {:try_start_6 .. :try_end_381} :catchall_37f

    throw v0

    :sswitch_data_382
    .sparse-switch
        -0x6a2938fb -> :sswitch_1aa
        -0x41b123b2 -> :sswitch_19f
        -0x3f9e5d8f -> :sswitch_194
        -0x3ad07d47 -> :sswitch_188
        -0x36c982be -> :sswitch_17d
        -0x21acba85 -> :sswitch_171
        -0x20a67af1 -> :sswitch_166
        -0x1d57514a -> :sswitch_15a
        -0x12f62f3e -> :sswitch_14e
        -0xa52b56d -> :sswitch_142
        -0x4c6666e -> :sswitch_135
        0xbc3989d -> :sswitch_129
        0x158c3acf -> :sswitch_11c
        0x16112cd2 -> :sswitch_10f
        0x18cb77c6 -> :sswitch_102
        0x20da752b -> :sswitch_f5
        0x33a0fa03 -> :sswitch_e9
        0x3520e53f -> :sswitch_dc
        0x36be854b -> :sswitch_cf
        0x3bafc484 -> :sswitch_c2
        0x4939699d -> :sswitch_b5
        0x5082fc90 -> :sswitch_aa
        0x51a693a0 -> :sswitch_9e
        0x52751141 -> :sswitch_91
        0x5b96ba4f -> :sswitch_84
        0x5c37001a -> :sswitch_77
        0x5d307d0e -> :sswitch_6a
        0x633432c6 -> :sswitch_5d
        0x6419976e -> :sswitch_50
        0x650bdaeb -> :sswitch_43
        0x73162643 -> :sswitch_36
        0x73ea15fc -> :sswitch_29
    .end sparse-switch

    :pswitch_data_404
    .packed-switch 0x0
        :pswitch_35d
        :pswitch_352
        :pswitch_347
        :pswitch_336
        :pswitch_328
        :pswitch_31d
        :pswitch_30f
        :pswitch_302
        :pswitch_2f7
        :pswitch_2e0
        :pswitch_2d2
        :pswitch_2c7
        :pswitch_2ba
        :pswitch_2ac
        :pswitch_2a1
        :pswitch_28a
        :pswitch_27f
        :pswitch_271
        :pswitch_266
        :pswitch_25b
        :pswitch_24d
        :pswitch_23f
        :pswitch_234
        :pswitch_226
        :pswitch_21b
        :pswitch_210
        :pswitch_203
        :pswitch_1f8
        :pswitch_1ed
        :pswitch_1df
        :pswitch_1d1
        :pswitch_1c6
    .end packed-switch
.end method
