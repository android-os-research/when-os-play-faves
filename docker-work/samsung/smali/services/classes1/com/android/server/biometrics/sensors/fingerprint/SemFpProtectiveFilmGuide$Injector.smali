.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;
.super Ljava/lang/Object;
.source "SemFpProtectiveFilmGuide.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategory(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const p0, 0x1040d0e

    .line 116
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCloseNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;
    .registers 7

    .line 92
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x1040c4a

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final getContentText(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x1040d11

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u2022 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x1040d12

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x1040d10

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x1040d0f

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContentTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const p0, 0x1040d13

    .line 124
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGoToSettingsNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;
    .registers 7

    .line 100
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x1040c4b

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings"

    const/4 v3, 0x1

    .line 103
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public getNotification(Landroid/content/Context;I)Landroid/app/Notification;
    .registers 5

    .line 61
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "FingerprintProtectiveFilmNotificationChannel"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10809d9

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getSubText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getContentTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getContentText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getCloseNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getGoToSettingsNotificationAction(Landroid/content/Context;I)Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getContentText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const p2, 0x106001c

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 6

    .line 108
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "protective_film_notification_action"

    .line 109
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "user"

    .line 110
    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/high16 p4, 0x4000000

    .line 111
    invoke-static {p1, p3, p0, p4, p2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final getSubText(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const p0, 0x1040d0e

    .line 120
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAlreadyGuided(Landroid/content/Context;I)Z
    .registers 4

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fingerprint_protective_film_guideline_displayed"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public setGuideStateToNotificationDoneByAuthentication(Landroid/content/Context;I)V
    .registers 4

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fingerprint_protective_film_guideline_displayed"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
