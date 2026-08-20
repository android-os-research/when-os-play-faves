.class final Lcom/android/server/alarm/AlarmManagerService$Constants;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_WHILE_IDLE_COMPAT_QUOTA:I = 0x1

.field public static final DEFAULT_ALLOW_WHILE_IDLE_COMPAT_WINDOW:J = 0x83d60L

.field public static final DEFAULT_ALLOW_WHILE_IDLE_QUOTA:I = 0x48

.field public static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field public static final DEFAULT_ALLOW_WHILE_IDLE_WINDOW:J = 0x36ee80L

.field public static final DEFAULT_APP_STANDBY_RESTRICTED_QUOTA:I = 0x1

.field public static final DEFAULT_APP_STANDBY_RESTRICTED_WINDOW:J = 0x5265c00L

.field public static final DEFAULT_APP_STANDBY_WINDOW:J = 0x36ee80L

.field public static final DEFAULT_CRASH_NON_CLOCK_APPS:Z = true

.field public static final DEFAULT_KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z = true

.field public static final DEFAULT_LAZY_BATCHING:Z = true

.field public static final DEFAULT_LISTENER_TIMEOUT:J = 0x1388L

.field public static final DEFAULT_MAX_ALARMS_PER_UID:I = 0x1f4

.field public static final DEFAULT_MAX_DEVICE_IDLE_FUZZ:J = 0xdbba0L

.field public static final DEFAULT_MAX_INTERVAL:J = 0x757b12c00L

.field public static final DEFAULT_MIN_DEVICE_IDLE_FUZZ:J = 0x1d4c0L

.field public static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field public static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field public static final DEFAULT_MIN_WINDOW:J = 0x927c0L

.field public static final DEFAULT_PRIORITY_ALARM_DELAY:J = 0x83d60L

.field public static final DEFAULT_TEMPORARY_QUOTA_BUMP:I = 0x0

.field public static final DEFAULT_TIME_TICK_ALLOWED_WHILE_IDLE:Z = true

.field public static final KEY_ALLOW_WHILE_IDLE_COMPAT_QUOTA:Ljava/lang/String; = "allow_while_idle_compat_quota"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOW_WHILE_IDLE_COMPAT_WINDOW:Ljava/lang/String; = "allow_while_idle_compat_window"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOW_WHILE_IDLE_QUOTA:Ljava/lang/String; = "allow_while_idle_quota"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ALLOW_WHILE_IDLE_WINDOW:Ljava/lang/String; = "allow_while_idle_window"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_APP_STANDBY_RESTRICTED_QUOTA:Ljava/lang/String; = "standby_quota_restricted"

.field public static final KEY_APP_STANDBY_RESTRICTED_WINDOW:Ljava/lang/String; = "app_standby_restricted_window"

.field public static final KEY_APP_STANDBY_WINDOW:Ljava/lang/String; = "app_standby_window"

.field public static final KEY_CRASH_NON_CLOCK_APPS:Ljava/lang/String; = "crash_non_clock_apps"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EXACT_ALARM_DENY_LIST:Ljava/lang/String; = "exact_alarm_deny_list"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Ljava/lang/String; = "kill_on_schedule_exact_alarm_revoked"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_LAZY_BATCHING:Ljava/lang/String; = "lazy_batching"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "max_device_idle_fuzz"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MIN_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "min_device_idle_fuzz"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MIN_WINDOW:Ljava/lang/String; = "min_window"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PREFIX_STANDBY_QUOTA:Ljava/lang/String; = "standby_quota_"

.field public static final KEY_PRIORITY_ALARM_DELAY:Ljava/lang/String; = "priority_alarm_delay"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_TEMPORARY_QUOTA_BUMP:Ljava/lang/String; = "temporary_quota_bump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_TIME_TICK_ALLOWED_WHILE_IDLE:Ljava/lang/String; = "time_tick_allowed_while_idle"

.field public static final MAX_EXACT_ALARM_DENY_LIST_SIZE:I = 0xfa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

.field public ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

.field public ALLOW_WHILE_IDLE_QUOTA:I

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public ALLOW_WHILE_IDLE_WINDOW:J

.field public APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field public CRASH_NON_CLOCK_APPS:Z

.field public final DEFAULT_APP_STANDBY_QUOTAS:[I

.field public volatile EXACT_ALARM_DENY_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

.field public LAZY_BATCHING:Z

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_DEVICE_IDLE_FUZZ:J

.field public MAX_INTERVAL:J

.field public MIN_DEVICE_IDLE_FUZZ:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field public MIN_WINDOW:J

.field public PRIORITY_ALARM_DELAY:J

.field public TEMPORARY_QUOTA_BUMP:I

.field public TIME_TICK_ALLOWED_WHILE_IDLE:Z

.field public USE_TARE_POLICY:Z

.field public mLastAllowWhileIdleWhitelistDuration:J

.field public mVersion:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$6L18HUEYIGbcrWb8BdDDAHHQVSQ(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->lambda$migrateAlarmsToNewStoreLocked$1(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B7wYuhvGd69KmsnYyYcth5xQwO4(Lcom/android/server/alarm/AlarmManagerService$Constants;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->lambda$updateTareSettings$0(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V
    .registers 7

    .line 1077
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "standby_quota_active"

    const-string/jumbo p2, "standby_quota_working"

    const-string/jumbo v0, "standby_quota_frequent"

    const-string/jumbo v1, "standby_quota_rare"

    const-string/jumbo v2, "standby_quota_never"

    .line 881
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 940
    fill-array-data p1, :array_98

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    const-wide/16 v0, 0x1388

    .line 975
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide/32 v2, 0xea60

    .line 978
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v2, 0x757b12c00L

    .line 981
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide/32 v2, 0x927c0

    .line 984
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    const-wide/16 v2, 0x2710

    .line 987
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 991
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const/16 p2, 0x1f4

    .line 992
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    const-wide/32 v0, 0x36ee80

    .line 994
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 995
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    const/4 p1, 0x1

    .line 996
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    const-wide/32 v2, 0x5265c00

    .line 997
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 999
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    .line 1000
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    const/16 p2, 0x48

    .line 1002
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 1008
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    const-wide/32 v2, 0x83d60

    .line 1014
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 1020
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 1027
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    .line 1033
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 1040
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    const-wide/32 v0, 0x1d4c0

    .line 1046
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 v0, 0xdbba0

    .line 1052
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 1058
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    const/4 p1, 0x0

    .line 1061
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    .line 1072
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    const-wide/16 v0, -0x1

    .line 1074
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 1075
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 1079
    :goto_88
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    array-length v0, p2

    if-ge p1, v0, :cond_96

    .line 1080
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v0, v0, p1

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_88

    :cond_96
    return-void

    nop

    :array_98
    .array-data 4
        0x2d0
        0xa
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public static synthetic lambda$migrateAlarmsToNewStoreLocked$1(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateTareSettings$0(Lcom/android/server/alarm/Alarm;)Z
    .registers 7

    .line 1285
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    .line 1286
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    .line 1287
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v2, :cond_16

    .line 1288
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mregisterTareListener(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    goto :goto_31

    .line 1290
    :cond_16
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmEconomyManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal;

    move-result-object v2

    iget v3, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 1291
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityChangeListener(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    move-result-object p0

    .line 1293
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object p1

    .line 1290
    invoke-interface {v2, v3, v4, p0, p1}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    :goto_31
    if-nez v0, :cond_38

    if-eqz v1, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p0, 0x1

    :goto_39
    return p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    const-string v0, "Settings:"

    .line 1404
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1408
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1409
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "min_futurity"

    .line 1411
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    .line 1412
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1414
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_interval"

    .line 1416
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1419
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "max_interval"

    .line 1421
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1424
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_window"

    .line 1426
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1429
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "listener_timeout"

    .line 1431
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1434
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1436
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1437
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "allow_while_idle_window"

    .line 1439
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1442
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1444
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_compat_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1445
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "allow_while_idle_compat_window"

    .line 1447
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1450
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "allow_while_idle_whitelist_duration"

    .line 1452
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1455
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1457
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "max_alarms_per_uid"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1458
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "app_standby_window"

    .line 1460
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1463
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v1, 0x0

    .line 1465
    :goto_da
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_f2

    .line 1466
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1467
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 1470
    :cond_f2
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "standby_quota_restricted"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1471
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "app_standby_restricted_window"

    .line 1473
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1478
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "lazy_batching"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1479
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1481
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "time_tick_allowed_while_idle"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1482
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1484
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "crash_non_clock_apps"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1485
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "priority_alarm_delay"

    .line 1487
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1489
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1490
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1492
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    const-string v2, "exact_alarm_deny_list"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1493
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_device_idle_fuzz"

    .line 1495
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1498
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "max_device_idle_fuzz"

    .line 1500
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1503
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1505
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    .line 1506
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "kill_on_schedule_exact_alarm_revoked"

    .line 1505
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1507
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1509
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_tare"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1510
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1512
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "temporary_quota_bump"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1513
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1515
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1519
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1521
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1522
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1523
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide v2, 0x10300000007L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1524
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1525
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const-wide v2, 0x10300000006L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1528
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getVersion()I
    .registers 2

    .line 1085
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_5
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 1087
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final migrateAlarmsToNewStoreLocked()V
    .registers 4

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v0}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    goto :goto_f

    .line 1334
    :cond_a
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore;-><init>()V

    .line 1335
    :goto_f
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1336
    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->addAll(Ljava/util/ArrayList;)V

    .line 1337
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1338
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAlarmClockUpdater(Lcom/android/server/alarm/AlarmManagerService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 16

    .line 1119
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_5
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 1121
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_25

    goto :goto_16

    :cond_25
    const/4 v7, -0x1

    .line 1126
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2de

    goto/16 :goto_131

    :sswitch_2f
    const-string/jumbo v8, "min_interval"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    move v7, v2

    goto/16 :goto_131

    :sswitch_3b
    const-string v8, "allow_while_idle_compat_quota"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x5

    goto/16 :goto_131

    :sswitch_46
    const-string v8, "exact_alarm_deny_list"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x11

    goto/16 :goto_131

    :sswitch_52
    const-string/jumbo v8, "max_interval"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x2

    goto/16 :goto_131

    :sswitch_5e
    const-string/jumbo v8, "time_tick_allowed_while_idle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xe

    goto/16 :goto_131

    :sswitch_6b
    const-string v8, "allow_while_idle_whitelist_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x8

    goto/16 :goto_131

    :sswitch_77
    const-string/jumbo v8, "listener_timeout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x9

    goto/16 :goto_131

    :sswitch_84
    const-string v8, "crash_non_clock_apps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xf

    goto/16 :goto_131

    :sswitch_90
    const-string v8, "app_standby_window"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xb

    goto/16 :goto_131

    :sswitch_9c
    const-string/jumbo v8, "min_window"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x4

    goto/16 :goto_131

    :sswitch_a8
    const-string/jumbo v8, "max_device_idle_fuzz"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x13

    goto/16 :goto_131

    :sswitch_b5
    const-string v8, "allow_while_idle_window"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x6

    goto/16 :goto_131

    :sswitch_c0
    const-string v8, "allow_while_idle_quota"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x3

    goto :goto_131

    :sswitch_ca
    const-string/jumbo v8, "temporary_quota_bump"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x15

    goto :goto_131

    :sswitch_d6
    const-string/jumbo v8, "priority_alarm_delay"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x10

    goto :goto_131

    :sswitch_e2
    const-string v8, "app_standby_restricted_window"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xc

    goto :goto_131

    :sswitch_ed
    const-string/jumbo v8, "max_alarms_per_uid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xa

    goto :goto_131

    :sswitch_f9
    const-string/jumbo v8, "min_futurity"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    move v7, v3

    goto :goto_131

    :sswitch_104
    const-string/jumbo v8, "min_device_idle_fuzz"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x12

    goto :goto_131

    :sswitch_110
    const-string v8, "allow_while_idle_compat_window"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/4 v7, 0x7

    goto :goto_131

    :sswitch_11a
    const-string/jumbo v8, "lazy_batching"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0xd

    goto :goto_131

    :sswitch_126
    const-string/jumbo v8, "kill_on_schedule_exact_alarm_revoked"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    const/16 v7, 0x14

    :cond_131
    :goto_131
    const-wide/16 v8, 0x1388

    const-wide/32 v10, 0x83d60

    const-wide/32 v12, 0x36ee80

    packed-switch v7, :pswitch_data_338

    const-string/jumbo v7, "standby_quota_"

    goto/16 :goto_2ca

    :pswitch_141
    const-string/jumbo v6, "temporary_quota_bump"

    .line 1259
    invoke-virtual {p1, v6, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    goto/16 :goto_16

    :pswitch_14c
    const-string/jumbo v6, "kill_on_schedule_exact_alarm_revoked"

    .line 1254
    invoke-virtual {p1, v6, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    goto/16 :goto_16

    :pswitch_157
    if-nez v4, :cond_16

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateDeviceIdleFuzzBoundaries()V

    move v4, v2

    goto/16 :goto_16

    :pswitch_15f
    const-string v6, "exact_alarm_deny_list"

    const-string v7, ""

    .line 1232
    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1234
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_170

    .line 1235
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_178

    :cond_170
    const-string v7, ","

    const/16 v8, 0xfb

    .line 1236
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1237
    :goto_178
    array-length v7, v6

    const/16 v8, 0xfa

    if-le v7, v8, :cond_18f

    const-string v7, "AlarmManager"

    const-string v9, "Deny list too long, truncating to 250 elements."

    .line 1238
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1240
    invoke-virtual {p0, v6}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateExactAlarmDenyList([Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1243
    :cond_18f
    invoke-virtual {p0, v6}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateExactAlarmDenyList([Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_194
    const-string/jumbo v6, "priority_alarm_delay"

    .line 1228
    invoke-virtual {p1, v6, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    goto/16 :goto_16

    :pswitch_19f
    const-string v6, "crash_non_clock_apps"

    .line 1224
    invoke-virtual {p1, v6, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    goto/16 :goto_16

    :pswitch_1a9
    const-string/jumbo v6, "time_tick_allowed_while_idle"

    .line 1219
    invoke-virtual {p1, v6, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    goto/16 :goto_16

    .line 1211
    :pswitch_1b4
    iget-boolean v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    const-string/jumbo v7, "lazy_batching"

    .line 1212
    invoke-virtual {p1, v7, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eq v6, v7, :cond_16

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->migrateAlarmsToNewStoreLocked()V

    goto/16 :goto_16

    .line 1208
    :pswitch_1c6
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyWindowsLocked()V

    goto/16 :goto_16

    :pswitch_1cb
    const-string/jumbo v6, "max_alarms_per_uid"

    const/16 v7, 0x1f4

    .line 1198
    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-ge v6, v7, :cond_16

    const-string v6, "AlarmManager"

    const-string v8, "Cannot set max_alarms_per_uid lower than 500"

    .line 1201
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iput v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    goto/16 :goto_16

    :pswitch_1e3
    const-string/jumbo v6, "listener_timeout"

    .line 1194
    invoke-virtual {p1, v6, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    goto/16 :goto_16

    :pswitch_1ee
    const-string v6, "allow_while_idle_whitelist_duration"

    const-wide/16 v7, 0x2710

    .line 1188
    invoke-virtual {p1, v6, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    goto/16 :goto_16

    :pswitch_1fd
    const-string v6, "allow_while_idle_compat_window"

    .line 1173
    invoke-virtual {p1, v6, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    cmp-long v8, v6, v12

    if-lez v8, :cond_214

    const-string v6, "AlarmManager"

    const-string v7, "Cannot have allow_while_idle_compat_window > 3600000"

    .line 1178
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iput-wide v12, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    goto/16 :goto_16

    :cond_214
    cmp-long v6, v6, v10

    if-eqz v6, :cond_16

    const-string v6, "AlarmManager"

    .line 1183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using a non-default allow_while_idle_compat_window = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :pswitch_232
    const-string v6, "allow_while_idle_window"

    .line 1160
    invoke-virtual {p1, v6, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    cmp-long v8, v6, v12

    if-lez v8, :cond_249

    const-string v6, "AlarmManager"

    const-string v7, "Cannot have allow_while_idle_window > 3600000"

    .line 1164
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iput-wide v12, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    goto/16 :goto_16

    :cond_249
    cmp-long v6, v6, v12

    if-eqz v6, :cond_16

    const-string v6, "AlarmManager"

    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using a non-default allow_while_idle_window = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :pswitch_267
    const-string v6, "allow_while_idle_compat_quota"

    .line 1151
    invoke-virtual {p1, v6, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    if-gtz v6, :cond_16

    const-string v6, "AlarmManager"

    const-string v7, "Must have positive allow_while_idle_compat quota"

    .line 1155
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    goto/16 :goto_16

    :pswitch_27c
    const-string/jumbo v6, "min_window"

    const-wide/32 v7, 0x927c0

    .line 1148
    invoke-virtual {p1, v6, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    goto/16 :goto_16

    :pswitch_28a
    const-string v6, "allow_while_idle_quota"

    const/16 v7, 0x48

    .line 1140
    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    if-gtz v6, :cond_16

    const-string v6, "AlarmManager"

    const-string v7, "Must have positive allow_while_idle quota"

    .line 1143
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    goto/16 :goto_16

    :pswitch_2a1
    const-string/jumbo v6, "max_interval"

    const-wide v7, 0x757b12c00L

    .line 1136
    invoke-virtual {p1, v6, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    goto/16 :goto_16

    :pswitch_2b1
    const-string/jumbo v6, "min_interval"

    const-wide/32 v7, 0xea60

    .line 1132
    invoke-virtual {p1, v6, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    goto/16 :goto_16

    :pswitch_2bf
    const-string/jumbo v6, "min_futurity"

    .line 1128
    invoke-virtual {p1, v6, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    goto/16 :goto_16

    .line 1263
    :goto_2ca
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-nez v5, :cond_16

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyQuotasLocked()V

    move v5, v2

    goto/16 :goto_16

    .line 1272
    :cond_2d8
    monitor-exit v0

    return-void

    :catchall_2da
    move-exception p0

    monitor-exit v0
    :try_end_2dc
    .catchall {:try_start_5 .. :try_end_2dc} :catchall_2da

    throw p0

    nop

    :sswitch_data_2de
    .sparse-switch
        -0x7b9046b9 -> :sswitch_126
        -0x6a4b012d -> :sswitch_11a
        -0x5e0379da -> :sswitch_110
        -0x58de0e82 -> :sswitch_104
        -0x4d123227 -> :sswitch_f9
        -0x3a284894 -> :sswitch_ed
        -0x3481955c -> :sswitch_e2
        -0x24dca806 -> :sswitch_d6
        -0x23417eb5 -> :sswitch_ca
        -0x226d61af -> :sswitch_c0
        -0x21ab88c9 -> :sswitch_b5
        -0x187e4754 -> :sswitch_a8
        -0x176c2d83 -> :sswitch_9c
        -0x8c8f860 -> :sswitch_90
        0x24f9404d -> :sswitch_84
        0x3795c4d6 -> :sswitch_77
        0x43f28753 -> :sswitch_6b
        0x48578d89 -> :sswitch_5e
        0x5b1d4140 -> :sswitch_52
        0x64c69943 -> :sswitch_46
        0x70457582 -> :sswitch_3b
        0x77646c12 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_338
    .packed-switch 0x0
        :pswitch_2bf
        :pswitch_2b1
        :pswitch_2a1
        :pswitch_28a
        :pswitch_27c
        :pswitch_267
        :pswitch_232
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_1a9
        :pswitch_19f
        :pswitch_194
        :pswitch_15f
        :pswitch_157
        :pswitch_157
        :pswitch_14c
        :pswitch_141
    .end packed-switch
.end method

.method public onTareEnabledStateChanged(Z)V
    .registers 2

    .line 1277
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateTareSettings(Z)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 1091
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->registerDeviceConfigListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1092
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 1093
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    .line 1094
    invoke-interface {v0, p0}, Lcom/android/server/tare/EconomyManagerInternal;->registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "alarm_manager"

    .line 1095
    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1096
    invoke-interface {v0}, Lcom/android/server/tare/EconomyManagerInternal;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateTareSettings(Z)V

    return-void
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .registers 9

    .line 1100
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_31

    .line 1101
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 1103
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v5, 0x0

    const/16 v6, 0x12e

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v4, 0x0

    const/16 v5, 0x12d

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    :cond_31
    return-void
.end method

.method public final updateDeviceIdleFuzzBoundaries()V
    .registers 6

    const-string/jumbo v0, "min_device_idle_fuzz"

    const-string/jumbo v1, "max_device_idle_fuzz"

    .line 1342
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    .line 1346
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 v3, 0xdbba0

    .line 1348
    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 1351
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_45

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max_device_idle_fuzz cannot be smaller than min_device_idle_fuzz! Increasing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    :cond_45
    return-void
.end method

.method public final updateExactAlarmDenyList([Ljava/lang/String;)V
    .registers 7

    .line 1311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1312
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1313
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 1315
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1316
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1317
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 1318
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1319
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1321
    :cond_30
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 1322
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1323
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1325
    :cond_43
    array-length p1, p1

    if-nez p1, :cond_4d

    .line 1326
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    goto :goto_4f

    .line 1328
    :cond_4d
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    :goto_4f
    return-void
.end method

.method public final updateStandbyQuotasLocked()V
    .registers 9

    .line 1362
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const-string v1, "alarm_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1365
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v5, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v4

    const/4 v2, 0x1

    move v3, v2

    .line 1368
    :goto_1b
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_39

    .line 1369
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget-object v4, v4, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v5, v6

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v7, v7, v3

    .line 1371
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1369
    invoke-virtual {v0, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_39
    const-string/jumbo v0, "standby_quota_restricted"

    .line 1375
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1374
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    return-void
.end method

.method public final updateStandbyWindowsLocked()V
    .registers 9

    const-string v0, "app_standby_window"

    const-string v1, "app_standby_restricted_window"

    .line 1383
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    .line 1386
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    cmp-long v0, v5, v3

    const-string v7, "AlarmManager"

    if-lez v0, :cond_25

    const-string v0, "Cannot exceed the app_standby_window size of 3600000"

    .line 1389
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_3f

    :cond_25
    cmp-long v0, v5, v3

    if-gez v0, :cond_3f

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using a non-default app_standby_window of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_3f
    :goto_3f
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    const-wide/32 v5, 0x5265c00

    .line 1398
    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1397
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    return-void
.end method

.method public final updateTareSettings(Z)V
    .registers 4

    .line 1281
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eq v1, p1, :cond_31

    .line 1283
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    .line 1284
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Constants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$Constants;)V

    invoke-interface {p1, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    .line 1297
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v1, :cond_25

    .line 1300
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    :cond_25
    if-eqz p1, :cond_31

    .line 1303
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1304
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1307
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw p0
.end method
