.class public Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;
.super Ljava/lang/Object;
.source "SemBioLoggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBioLoggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggingInfo"
.end annotation


# static fields
.field public static final ACTION_BIO_EXTRA_INFO:Ljava/lang/String; = "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

.field public static final TOUCH_MAP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/fod_pos"


# instance fields
.field public mBadQualityCount:I

.field public mExtra:I

.field public mFpAlphaMaskLvl:I

.field public mFpScreenStatus:I

.field public mLatency:J

.field public mPackageName:Ljava/lang/String;

.field public mResult:Ljava/lang/String;

.field public mResultTime:J

.field public mStartTime:J

.field public mTouchMap:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 82
    iput v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getFpOpticalInfo()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 157
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_e

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mTouchMap:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string/jumbo v1, "touch_map"

    .line 159
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :cond_e
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "pkg_name"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :try_start_16
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_3a

    :catch_1e
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendBroadcast: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public sendCaptureFailedInfo(Landroid/content/Context;)V
    .registers 5

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action_type"

    const/4 v2, 0x3

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    const-string/jumbo v2, "quality_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public sendMatchInfo(Landroid/content/Context;I)V
    .registers 6

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action_type"

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    .line 145
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public sendNoMatchInfo(Landroid/content/Context;I)V
    .registers 6

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action_type"

    const/4 v2, 0x2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "no_match_reason"

    .line 152
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public toDumpFormat()Ljava/lang/String;
    .registers 10

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    :try_start_9
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    const-string v2, "-----------"

    goto :goto_1f

    .line 104
    :cond_14
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    const-string v3, "%s, %s, %s, %s, %d, %d, %d, %s"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 105
    iget-object v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 109
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-wide v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    aput-object p0, v4, v0

    .line 105
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_64} :catch_65

    return-object p0

    :catch_65
    move-exception p0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDumpFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricStats"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "formatting error"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggingInfo{mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mResultTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBadQualityCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTouchMapData()V
    .registers 4

    .line 127
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/fod_pos"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 128
    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_1e

    .line 131
    :cond_11
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mTouchMap:Ljava/lang/String;

    :cond_1e
    :goto_1e
    return-void
.end method
