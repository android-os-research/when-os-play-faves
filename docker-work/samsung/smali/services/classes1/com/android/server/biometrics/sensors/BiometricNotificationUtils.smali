.class public Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;
.super Ljava/lang/Object;
.source "BiometricNotificationUtils.java"


# static fields
.field public static final BAD_CALIBRATION_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintService"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final NOTIFICATION_INTERVAL_MS:J = 0x5265c00L

.field public static final RE_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FaceService"

.field public static final TAG:Ljava/lang/String; = "BiometricNotificationUtils"

.field public static sLastAlertTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelBadCalibrationNotification(Landroid/content/Context;)V
    .registers 4

    .line 146
    const-class v0, Landroid/app/NotificationManager;

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 148
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "FingerprintService"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static cancelReEnrollNotification(Landroid/content/Context;)V
    .registers 4

    .line 136
    const-class v0, Landroid/app/NotificationManager;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 138
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "FaceService"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static showBadCalibrationNotification(Landroid/content/Context;)V
    .registers 12

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    sget-wide v2, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2c

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v4, v2

    if-gez v2, :cond_2c

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping calibration notification : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricNotificationUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_2c
    sput-wide v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    const v0, 0x1040544

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x1040545

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x1040543

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 95
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    const/4 v9, 0x0

    .line 97
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "FingerprintBadCalibrationNotificationChannel"

    const-string v7, "FingerprintService"

    move-object v1, p0

    .line 103
    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 110
    const-class v0, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 112
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p5, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0, p5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x108040a

    .line 115
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string/jumbo p2, "sys"

    .line 122
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, -0x1

    .line 124
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 128
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p6, p1, p0, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static showReEnrollmentNotification(Landroid/content/Context;)V
    .registers 12

    .line 48
    const-class v0, Landroid/app/NotificationManager;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v0, 0x104050d

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x104050e

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x104050c

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.settings.FACE_SETTINGS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 59
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "FaceEnrollNotificationChannel"

    const-string v7, "FaceService"

    move-object v1, p0

    .line 67
    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
