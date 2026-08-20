.class public Lcom/android/server/devicepolicy/DevicePolicyConstants;
.super Ljava/lang/Object;
.source "DevicePolicyConstants.java"


# static fields
.field public static final BATTERY_THRESHOLD_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_charging"

.field public static final BATTERY_THRESHOLD_NOT_CHARGING_KEY:Ljava/lang/String; = "battery_threshold_not_charging"

.field public static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_increase"

.field public static final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_backoff_sec"

.field public static final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC_KEY:Ljava/lang/String; = "das_died_service_reconnect_max_backoff_sec"

.field public static final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC_KEY:Ljava/lang/String; = "das_died_service_stable_connection_threshold_sec"

.field public static final TAG:Ljava/lang/String; = "DevicePolicyManager"

.field public static final USE_TEST_ADMIN_AS_SUPERVISION_COMPONENT_KEY:Ljava/lang/String; = "use_test_admin_as_supervision_component"


# instance fields
.field public final BATTERY_THRESHOLD_CHARGING:I

.field public final BATTERY_THRESHOLD_NOT_CHARGING:I

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

.field public final USE_TEST_ADMIN_AS_SUPERVISION_COMPONENT:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 15

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v1, 0x0

    .line 99
    :try_start_b
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_1b

    :catch_f
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "DevicePolicyManager"

    const-string v3, "Bad device policy settings: %s"

    .line 103
    invoke-static {p1, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_1b
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 107
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-string p1, "das_died_service_reconnect_backoff_sec"

    .line 106
    invoke-virtual {v0, p1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const/high16 p1, 0x40000000    # 2.0f

    const-string v6, "das_died_service_reconnect_backoff_increase"

    .line 109
    invoke-virtual {v0, v6, p1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p1

    float-to-double v6, p1

    .line 112
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 113
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-string p1, "das_died_service_reconnect_max_backoff_sec"

    .line 112
    invoke-virtual {v0, p1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 115
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    .line 117
    invoke-virtual {p1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    const-string p1, "das_died_service_stable_connection_threshold_sec"

    .line 115
    invoke-virtual {v0, p1, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 p1, 0x28

    const-string v10, "battery_threshold_not_charging"

    .line 119
    invoke-virtual {v0, v10, p1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v10, 0x14

    const-string v11, "battery_threshold_charging"

    .line 122
    invoke-virtual {v0, v11, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "use_test_admin_as_supervision_component"

    .line 125
    invoke-virtual {v0, v11, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v11, 0x5

    .line 129
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 133
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 136
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 139
    iput-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 140
    iput-wide v6, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 141
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 142
    iput-wide v8, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 144
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 145
    iput v10, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 146
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->USE_TEST_ADMIN_AS_SUPERVISION_COMPONENT:Z

    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 2

    .line 150
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "Constants:"

    .line 155
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC: "

    .line 158
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v0, "DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE: "

    .line 161
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 162
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(D)V

    const-string v0, "DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    .line 164
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v0, "DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    .line 167
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 169
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
