.class public Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;
.super Ljava/lang/Object;
.source "BlobStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigProperties"
.end annotation


# static fields
.field public static COMMIT_COOL_OFF_DURATION_MS:J = 0x0L

.field public static final DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

.field public static final DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

.field public static final DEFAULT_IDLE_JOB_PERIOD_MS:J

.field public static final DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static DEFAULT_LEASE_DESC_CHAR_LIMIT:I = 0x0

.field public static DEFAULT_MAX_ACTIVE_SESSIONS:I = 0x0

.field public static DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I = 0x0

.field public static DEFAULT_MAX_COMMITTED_BLOBS:I = 0x0

.field public static DEFAULT_MAX_LEASED_BLOBS:I = 0x0

.field public static final DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static final DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F = 0.01f

.field public static final DEFAULT_USE_REVOCABLE_FD_FOR_READS:Z = false

.field public static DELETE_ON_LAST_LEASE_DELAY_MS:J = 0x0L

.field public static IDLE_JOB_PERIOD_MS:J = 0x0L

.field public static final KEY_COMMIT_COOL_OFF_DURATION_MS:Ljava/lang/String; = "commit_cool_off_duration_ms"

.field public static final KEY_DELETE_ON_LAST_LEASE_DELAY_MS:Ljava/lang/String; = "delete_on_last_lease_delay_ms"

.field public static final KEY_IDLE_JOB_PERIOD_MS:Ljava/lang/String; = "idle_job_period_ms"

.field public static final KEY_LEASE_ACQUISITION_WAIT_DURATION_MS:Ljava/lang/String; = "lease_acquisition_wait_time_ms"

.field public static final KEY_LEASE_DESC_CHAR_LIMIT:Ljava/lang/String; = "lease_desc_char_limit"

.field public static final KEY_MAX_ACTIVE_SESSIONS:Ljava/lang/String; = "max_active_sessions"

.field public static final KEY_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:Ljava/lang/String; = "max_permitted_pks"

.field public static final KEY_MAX_COMMITTED_BLOBS:Ljava/lang/String; = "max_committed_blobs"

.field public static final KEY_MAX_LEASED_BLOBS:Ljava/lang/String; = "max_leased_blobs"

.field public static final KEY_SESSION_EXPIRY_TIMEOUT_MS:Ljava/lang/String; = "session_expiry_timeout_ms"

.field public static final KEY_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:Ljava/lang/String; = "total_bytes_per_app_limit_floor"

.field public static final KEY_TOTAL_BYTES_PER_APP_LIMIT_FRACTION:Ljava/lang/String; = "total_bytes_per_app_limit_fraction"

.field public static final KEY_USE_REVOCABLE_FD_FOR_READS:Ljava/lang/String; = "use_revocable_fd_for_reads"

.field public static LEASE_ACQUISITION_WAIT_DURATION_MS:J

.field public static LEASE_DESC_CHAR_LIMIT:I

.field public static MAX_ACTIVE_SESSIONS:I

.field public static MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

.field public static MAX_COMMITTED_BLOBS:I

.field public static MAX_LEASED_BLOBS:I

.field public static SESSION_EXPIRY_TIMEOUT_MS:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

.field public static TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

.field public static USE_REVOCABLE_FD_FOR_READS:Z


# direct methods
.method public static synthetic $r8$lambda$dfRuliwBCBJkrL5-qLD5NUzCXxk(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->lambda$refresh$0(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 72
    sput-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    const-wide/16 v1, 0x7

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 80
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 88
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x12c

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 90
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    const v0, 0x3c23d70a    # 0.01f

    .line 100
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 111
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    const-wide/16 v3, 0x30

    .line 122
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 123
    sput-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    const/4 v3, 0x0

    .line 132
    sput-boolean v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 142
    sput-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    const/16 v0, 0xfa

    .line 149
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 150
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    const/16 v0, 0x3e8

    .line 156
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 157
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    const/16 v0, 0x1f4

    .line 163
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 164
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    const/16 v0, 0x12c

    .line 171
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 172
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 179
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 180
    sput v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;Landroid/content/Context;)V
    .registers 11

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "idle_job_period_ms"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 244
    sget-wide v4, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 245
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-wide v5, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 246
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "%s: [cur: %s, def: %s]"

    .line 244
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v6, "session_expiry_timeout_ms"

    aput-object v6, v1, v3

    .line 247
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 248
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 249
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 247
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v6, "total_bytes_per_app_limit_floor"

    aput-object v6, v1, v3

    .line 250
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    const/16 v8, 0x8

    .line 251
    invoke-static {p1, v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 252
    invoke-static {p1, v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 250
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "total_bytes_per_app_limit_fraction"

    aput-object v1, p1, v3

    .line 254
    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 255
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v4

    const v1, 0x3c23d70a    # 0.01f

    .line 256
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v5

    .line 254
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lease_acquisition_wait_time_ms"

    aput-object v1, p1, v3

    .line 257
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 258
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 259
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 257
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "commit_cool_off_duration_ms"

    aput-object v1, p1, v3

    .line 260
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 261
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 262
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 260
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "use_revocable_fd_for_reads"

    aput-object v1, p1, v3

    .line 263
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 264
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, p1, v5

    .line 263
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "delete_on_last_lease_delay_ms"

    aput-object v1, p1, v3

    .line 265
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 266
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 267
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    .line 265
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "max_active_sessions"

    aput-object v1, p1, v3

    .line 268
    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 268
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "max_committed_blobs"

    aput-object v1, p1, v3

    .line 270
    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 270
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "max_leased_blobs"

    aput-object v1, p1, v3

    .line 272
    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 272
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "max_permitted_pks"

    aput-object v1, p1, v3

    .line 274
    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    sget v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    .line 274
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "lease_desc_char_limit"

    aput-object v0, p1, v3

    .line 277
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    .line 277
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$refresh$0(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 5

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_146

    goto/16 :goto_b6

    :sswitch_e
    const-string/jumbo v0, "session_expiry_timeout_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_b6

    :cond_19
    const/16 v2, 0xc

    goto/16 :goto_b6

    :sswitch_1d
    const-string/jumbo v0, "idle_job_period_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_b6

    :cond_28
    const/16 v2, 0xb

    goto/16 :goto_b6

    :sswitch_2c
    const-string v0, "delete_on_last_lease_delay_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_b6

    :cond_36
    const/16 v2, 0xa

    goto/16 :goto_b6

    :sswitch_3a
    const-string/jumbo v0, "total_bytes_per_app_limit_fraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_b6

    :cond_45
    const/16 v2, 0x9

    goto/16 :goto_b6

    :sswitch_49
    const-string/jumbo v0, "max_committed_blobs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_b6

    :cond_54
    const/16 v2, 0x8

    goto/16 :goto_b6

    :sswitch_58
    const-string/jumbo v0, "lease_desc_char_limit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_b6

    :cond_62
    const/4 v2, 0x7

    goto :goto_b6

    :sswitch_64
    const-string/jumbo v0, "total_bytes_per_app_limit_floor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_b6

    :cond_6e
    const/4 v2, 0x6

    goto :goto_b6

    :sswitch_70
    const-string v0, "commit_cool_off_duration_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_b6

    :cond_79
    const/4 v2, 0x5

    goto :goto_b6

    :sswitch_7b
    const-string/jumbo v0, "max_permitted_pks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_b6

    :cond_85
    const/4 v2, 0x4

    goto :goto_b6

    :sswitch_87
    const-string/jumbo v0, "max_leased_blobs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_b6

    :cond_91
    const/4 v2, 0x3

    goto :goto_b6

    :sswitch_93
    const-string/jumbo v0, "lease_acquisition_wait_time_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_b6

    :cond_9d
    const/4 v2, 0x2

    goto :goto_b6

    :sswitch_9f
    const-string/jumbo v0, "use_revocable_fd_for_reads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_b6

    :cond_a9
    const/4 v2, 0x1

    goto :goto_b6

    :sswitch_ab
    const-string/jumbo v0, "max_active_sessions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_b6

    :cond_b5
    move v2, v1

    :goto_b6
    packed-switch v2, :pswitch_data_17c

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key in device config properties: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BlobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_145

    .line 192
    :pswitch_d1
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    goto/16 :goto_145

    .line 189
    :pswitch_db
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    goto :goto_145

    .line 216
    :pswitch_e4
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    goto :goto_145

    :pswitch_ed
    const v0, 0x3c23d70a    # 0.01f

    .line 200
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    goto :goto_145

    .line 223
    :pswitch_f7
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    goto :goto_145

    .line 233
    :pswitch_100
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    goto :goto_145

    .line 196
    :pswitch_109
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    goto :goto_145

    .line 208
    :pswitch_112
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    goto :goto_145

    .line 229
    :pswitch_11b
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    goto :goto_145

    .line 226
    :pswitch_124
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    goto :goto_145

    .line 204
    :pswitch_12d
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    goto :goto_145

    .line 212
    :pswitch_136
    invoke-virtual {p0, p1, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    goto :goto_145

    .line 220
    :pswitch_13d
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    :goto_145
    return-void

    :sswitch_data_146
    .sparse-switch
        -0x72bf4325 -> :sswitch_ab
        -0x52e8bbf4 -> :sswitch_9f
        -0x186c76bb -> :sswitch_93
        -0x10f353c4 -> :sswitch_87
        0xba4f96 -> :sswitch_7b
        0x1028a673 -> :sswitch_70
        0x39770739 -> :sswitch_64
        0x538ddc1b -> :sswitch_58
        0x54964518 -> :sswitch_49
        0x674c73b5 -> :sswitch_3a
        0x6d98c9a4 -> :sswitch_2c
        0x717335b7 -> :sswitch_1d
        0x78947a67 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_13d
        :pswitch_136
        :pswitch_12d
        :pswitch_124
        :pswitch_11b
        :pswitch_112
        :pswitch_109
        :pswitch_100
        :pswitch_f7
        :pswitch_ed
        :pswitch_e4
        :pswitch_db
        :pswitch_d1
    .end packed-switch
.end method

.method public static refresh(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 183
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blobstore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 186
    :cond_d
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
